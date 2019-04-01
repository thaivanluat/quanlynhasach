using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyNhaSach.FunctionWindows
{
    /// <summary>
    /// Interaction logic for QuanLyHoaDon.xaml
    /// </summary>


    public partial class QuanLyHoaDon : Window
    {
        public class HoaDon
        {
            public long MaHoaDon { get; set; }
            public string NgayLap { get; set; }
            public long MaKhachHang { get; set; }
            public decimal TongTien { get; set; }
            public decimal SoTienTra { get; set; }
            public decimal ConLai { get; set; }
        }

        public class Sach
        {
            public long MaSach { get; set; }

            public long MaDauSach { get; set; }
            public string TenSach { get; set; }
            public string TheLoai { get; set; }
            public string NhaXuatBan { get; set; }
            public int NamXuatBan { get; set; }
            public string TacGia { get; set; }

            public decimal DonGiaBan { get; set; }
            public int SoLuongTon { get; set; }

            public int SoLuong { get; set; }
            public bool TrangThaiChon { get; set; }
        }

        public class KhachHang
        {
            public long MaKhachHang;
            public string HoTen;
            public string DiaChi;
            public string DienThoai;
            public string Email;
            public decimal TongNo;
        }

        public event EventHandler myEvent;
        private ObservableCollection<HoaDon> list { get; set; }
        private ObservableCollection<Sach> listDanhSachSach { get; set; }
        private int tongNotoiDa, luongTonSauKhiBanToiThieu;
        public QuanLyHoaDon()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<HoaDon>();
            listDanhSachSach = new ObservableCollection<Sach>();
            dataGridDanhSachSach.ItemsSource = listDanhSachSach;
            dataGrid.ItemsSource = list;
            textBoxMaKhachHang.LostKeyboardFocus += new KeyboardFocusChangedEventHandler(OntextBoxMaKhachHangChanged);
            textBoxSoTienTra.LostKeyboardFocus += new KeyboardFocusChangedEventHandler(OntextBoxSoTienTraChanged);
            InitParameters();
        }
        protected void InitParameters()
        {
            string query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'TongNoToiDa'";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        if(reader.Read())
                        {
                            tongNotoiDa = (int)reader[0];
                        }
                }
            }
            query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'LuongTonSauKhiBanToiThieu'";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        if (reader.Read())
                        {
                            luongTonSauKhiBanToiThieu = (int)reader[0];
                        }
                }
            }
            textBlockTongNoToiDa.Text = "Tổng nợ tối đa cho phép là " + tongNotoiDa;
            textBlockSoLuongSauKhiBanToiThieu.Text = "Lượng tồn sau khi bán tối thiểu là " + luongTonSauKhiBanToiThieu;
        }
        private void OntextBoxSoTienTraChanged(object sender, EventArgs e)
        {
            decimal sotientra;
            if(decimal.TryParse(textBoxSoTienTra.Text,out sotientra))
            {
                sotientra = decimal.Parse(textBoxSoTienTra.Text);
                decimal tongtien = decimal.Parse(textBoxTongTien.Text);
                textBoxConLai.Text = (sotientra - tongtien).ToString();
            }
            else
            {
                MessageBox.Show("Số tiền trả không hợp lệ");
            }
        }

        private void OntextBoxMaKhachHangChanged(object sender, EventArgs e)
        {
            long makhachhang = -1;
            bool isValid = false;
            string query;
            if (isDigits(textBoxMaKhachHang.Text))
            {
                query = "SELECT MaKhachHang from KHACHHANG WHERE MaKhachHang = " + textBoxMaKhachHang.Text;
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            isValid = true;
                        }
                    }
                }
            }
            if(isValid)
            {
                KhachHang khachHang = new KhachHang();
                khachHang.MaKhachHang = long.Parse(textBoxMaKhachHang.Text);
                query = "SELECT HoTen, DienThoai, Email, DiaChi, TongNo FROM KHACHHANG WHERE MaKhachHang = " + textBoxMaKhachHang.Text;
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                            if (reader.Read())
                            {
                                khachHang.HoTen = (string)reader[0];
                                khachHang.DienThoai = (string)reader[1];
                                khachHang.Email = (string)reader[2];
                                khachHang.DiaChi = (string)reader[3];
                                khachHang.TongNo = (decimal)reader[4];
                            }
                    }
                }
                textBoxHoTen.Text = khachHang.HoTen;
                textBoxDienThoai.Text = khachHang.DienThoai;
                textBoxEmail.Text = khachHang.Email;
                textBoxDiaChi.Text = khachHang.DiaChi;
                textBoxTongNo.Text = khachHang.TongNo.ToString();
                textBoxNhapMaSach.IsEnabled = true;
                textBoxSoLuong.IsEnabled = true;
            }
            else
            {
                if (textBoxMaKhachHang.Text != "")
                {
                    MessageBox.Show("Không có mã khách hàng trong cơ sở dữ liệu, vui lòng nhập lại");
                }
                textBoxHoTen.Text = "";
                textBoxDienThoai.Text = "";
                textBoxEmail.Text = "";
                textBoxDiaChi.Text = "";
                textBoxTongNo.Text = "";
            }
        }

        protected void OnMyEvent()
        {
            if (this.myEvent != null)
                this.myEvent(this, EventArgs.Empty);
        }
        private void OnWindowClosed(object sender, EventArgs e)
        {
            OnMyEvent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string query = "SELECT MaHoaDon, CONVERT(DATETIME, NgayLap), MaKhachHang, TongTien, SoTienTra, ConLai  FROM HOADON";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                while(list.Count > 0)
                {
                    list.RemoveAt(0);
                }
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                    {
                        while(reader.Read())
                        {
                            DateTime dateTime = (DateTime)reader[1];
                            string formatedDate = dateTime.Day + "/" + dateTime.Month + "/" + dateTime.Year;
                            list.Add(new HoaDon() { MaHoaDon = (long)reader[0], NgayLap = formatedDate, MaKhachHang = (long)reader[2], TongTien = (decimal)reader[3], SoTienTra = (decimal)reader[4], ConLai = (decimal)reader[5] });
                        }
                    }
                    else
                    {
                        MessageBox.Show("Không có dữ liệu");
                    }
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        bool isDigits(string s)
        {
            if (s == null || s == "") return false;

            for (int i = 0; i < s.Length; i++)
                if ((s[i] ^ '0') > 9)
                    return false;

            return true;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            decimal sotientra;
            if (isDigits(textBoxNhapMaSach.Text) && isDigits(textBoxSoLuong.Text) && decimal.TryParse(textBoxSoTienTra.Text, out sotientra))
            {
                long masach = long.Parse(textBoxNhapMaSach.Text);
                foreach(var x in listDanhSachSach)
                {
                    if(x.MaSach == masach)
                    {
                        MessageBox.Show("Mã sách này đã thêm vào danh sách");
                        return;
                    }
                }
                Sach sach = new Sach();
                sach.SoLuong = int.Parse(textBoxSoLuong.Text);
                bool valid = false;
                string query = "SELECT MaSach FROM SACH WHERE MaSach = " + textBoxNhapMaSach.Text;
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.HasRows)
                        {
                            valid = true;
                        }
                    }
                }
                if(valid)
                {
                    query = "SELECT DAUSACH.TenDauSach, THELOAI.TenTheLoai, NhaXuatBan, DAUSACH.MaDauSach, DonGiaBan, SoLuongTon FROM (SELECT * FROM SACH WHERE SACH.MaSach = " + textBoxNhapMaSach.Text + ") AS A INNER JOIN DAUSACH ON (A.MaDauSach = DAUSACH.MaDauSach) INNER JOIN THELOAI ON (DAUSACH.MaTheLoai = THELOAI.MaTheLoai)";
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.HasRows)
                                if(reader.Read())
                                {
                                    sach.MaSach = long.Parse(textBoxNhapMaSach.Text);
                                    sach.TenSach = (string)reader[0];
                                    sach.TheLoai = (string)reader[1];
                                    sach.NhaXuatBan = (string)reader[2];
                                    sach.MaDauSach = (long)reader[3];
                                    sach.DonGiaBan = (decimal)reader[4];
                                    sach.SoLuongTon = (int)reader[5];
                                }
                        }
                    }
                    query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'LuongTonSauKhiBanToiThieu'";
                    int luongtonsaukhibantoithieu = -1;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                                if (reader.Read())
                                    luongtonsaukhibantoithieu = (int)reader[0];
                        }
                    }
                    if (sach.SoLuongTon - sach.SoLuong >= luongtonsaukhibantoithieu)
                    {
                        query = "SELECT TenTacGia FROM (SELECT * FROM CHITIETTACGIA WHERE MaDauSach = " + sach.MaDauSach.ToString() + ") AS A INNER JOIN TACGIA ON (A.MaTacGia = TACGIA.MaTacGia)";
                        using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                        {
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                if (reader.HasRows)
                                {
                                    bool ReadFlag = false;
                                    while (reader.Read())
                                    {
                                        if (ReadFlag)
                                        {
                                            sach.TacGia += "; " + reader[0];
                                        }
                                        else
                                        {
                                            sach.TacGia += reader[0];
                                            ReadFlag = true;
                                        }
                                    }
                                }
                            }
                        }
                        listDanhSachSach.Add(sach);
                        CollectionViewSource.GetDefaultView(listDanhSachSach).Refresh();
                        decimal tongtien = 0;
                        foreach (var x in listDanhSachSach)
                        {
                            tongtien += x.DonGiaBan * x.SoLuong;
                        }
                        textBoxTongTien.Text = tongtien.ToString();
                        textBoxConLai.Text = (decimal.Parse(textBoxSoTienTra.Text) - tongtien).ToString();
                    }
                    else
                    {
                        MessageBox.Show("Không thể thêm sách này vì lượng tồn sau khi bán nhỏ hơn quy định");
                    }
                }
                else
                {
                    MessageBox.Show("Sách không có trong cơ sở dữ liệu");
                }
            }
            else
            {
                MessageBox.Show("Mã sách, Số lượng không hợp lệ");
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            DateTime? selectedDate = datePicker.SelectedDate;
            decimal sotientra;
            if (listDanhSachSach.Count > 0 && textBoxMaKhachHang.Text != "" && textBoxSoTienTra.Text != "" && selectedDate.HasValue && decimal.TryParse(textBoxSoTienTra.Text, out sotientra))
            {
                string formattedDate = selectedDate.Value.ToString("yyyyMMdd", System.Globalization.CultureInfo.InvariantCulture);
                int tongnotoida = 0;
                string query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'TongNoToiDa'";
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.HasRows)
                            if(reader.Read())
                            {
                                tongnotoida = (int)reader[0];
                            }
                    }
                }
                decimal tongno = decimal.Parse(textBoxTongNo.Text), conlai = decimal.Parse(textBoxConLai.Text);
                if(tongno - conlai > (decimal)tongnotoida)
                {
                    MessageBox.Show("Số tiền nợ lớn hơn quy định, vui lòng kiểm tra lại");
                }
                else
                {
                    long mahoadon = -1;
                    query = "EXEC spInsertIntoHOADON " + textBoxMaKhachHang.Text + ", " + textBoxSoTienTra.Text + ", '" + formattedDate + "'";
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT MAX(MaHoaDon) FROM HOADON", QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.HasRows)
                                if(reader.Read())
                                    mahoadon = (long)reader[0];
                        }
                    }
                    foreach (var x in listDanhSachSach)
                    {
                        query = "EXEC spInsertIntoCHITIETHOADON " + mahoadon.ToString() + ", " + x.MaSach.ToString() + ", " + x.SoLuong.ToString() + ", " + x.DonGiaBan;
                        using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                        {
                            cmd.ExecuteNonQuery();
                        }
                    }
                    MessageBox.Show("Đã lưu hóa đơn vào cơ sở dữ liệu");
                    while(listDanhSachSach.Count > 0)
                    {
                        listDanhSachSach.RemoveAt(0);
                    }
                    textBoxMaKhachHang.Text = "";
                    textBoxTongTien.Text = "0";
                    textBoxSoTienTra.Text = "0";
                    textBoxConLai.Text = "";
                    textBoxHoTen.Text = "";
                    textBoxDienThoai.Text = "";
                    textBoxEmail.Text = "";
                    textBoxDiaChi.Text = "";
                    textBoxTongNo.Text = "0";
                    textBoxNhapMaSach.Text = "";
                    textBoxSoLuong.Text = "";
                }
            }
            else
            {
                MessageBox.Show("Các trường nhập không hợp lệ vui lòng kiểm tra lại");
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            foreach(var x in listDanhSachSach.ToList<Sach>())
            {
                if(x.TrangThaiChon == true)
                {
                    listDanhSachSach.Remove(x);
                }
            }
            decimal tongtien = 0;
            foreach (var x in listDanhSachSach)
            {
                tongtien += x.DonGiaBan * x.SoLuong;
            }
            textBoxTongTien.Text = tongtien.ToString();
            textBoxConLai.Text = (decimal.Parse(textBoxSoTienTra.Text) - tongtien).ToString();
        }
    }
}
