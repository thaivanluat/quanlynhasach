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
    /// Interaction logic for QuanLyPhieuThu.xaml
    /// </summary>
    public partial class QuanLyPhieuThu : Window
    {
        public class KhachHang
        {
            public long MaKhachHang;
            public string HoTen;
            public string DiaChi;
            public string DienThoai;
            public string Email;
            public decimal TongNo;
        }
        public class PhieuThu
        {
            public long MaPhieuThu { get; set; }
            public long MaKhachHang { get; set; }
            public string NgayLap { get; set; }
            public decimal SoTienThu { get; set; }
        }
        private int choPhepSoTienThuVuotTongNo;
        private ObservableCollection<PhieuThu> list { get; set; }
        public QuanLyPhieuThu()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<PhieuThu>();
            dataGrid.ItemsSource = list;
            textBoxMaKhachHang.LostKeyboardFocus += new KeyboardFocusChangedEventHandler(OntextBoxMaKhachHangChanged);
            InitParameters();

        }

        public event EventHandler myEvent;

        protected void InitParameters()
        {
            string query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'ChoPhepSoTienThuVuotTongNo'";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        if (reader.Read())
                        {
                            choPhepSoTienThuVuotTongNo = (int)reader[0];
                        }
                }
            }
            if(choPhepSoTienThuVuotTongNo == 0)
            {
                textBlockQuyDinh.Text = "Số tiền thu không được vượt quá tổng nợ";
            }
            else
            {
                textBlockQuyDinh.Text = "Số tiền thu được vượt quá tổng nợ";
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
            if (isValid)
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

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
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

        bool isDigits(string s)
        {
            if (s == null || s == "") return false;

            for (int i = 0; i < s.Length; i++)
                if ((s[i] ^ '0') > 9)
                    return false;

            return true;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            DateTime? selectedDate = datePicker.SelectedDate;
            if (selectedDate.HasValue && isDigits(textBoxSoTienThu.Text))
            {
                if(choPhepSoTienThuVuotTongNo == 0)
                {
                    decimal soTienThu = 0, tongNo = 0;
                    decimal.Parse(textBoxSoTienThu.Text);
                    decimal.Parse(textBoxTongNo.Text);
                    if(soTienThu > tongNo)
                    {
                        MessageBox.Show("Không thể lập hóa đơn vì số tiền thu lớn hơn tổng nợ");
                        return;
                    }
                }
                string formattedDate = selectedDate.Value.ToString("yyyyMMdd", System.Globalization.CultureInfo.InvariantCulture);
                string query = "EXEC spInsertIntoPHIEUTHU " + textBoxMaKhachHang.Text + ", " + textBoxSoTienThu.Text + ", '" + formattedDate + "'";
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                textBoxMaKhachHang.Text = "";
                textBoxSoTienThu.Text = "";
                MessageBox.Show("Đã thêm phiếu thu vào cơ sở dữ liệu");
                while (list.Count > 0)
                {
                    list.RemoveAt(0);
                }
            }
            else
            {
                MessageBox.Show("Phiếu thu không hợp lệ vui lòng nhập lại");
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            while(list.Count > 0)
            {
                list.RemoveAt(0);
            }
            string query = "SELECT MaPhieuThu, MaKhachHang, CONVERT(datetime, NgayLap) AS NgayLap, SoTienThu FROM PHIEUTHU";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
                        {
                            DateTime dateTime = (DateTime)reader[2];
                            string formattedDate = dateTime.Day + "/" + dateTime.Month + "/" + dateTime.Year;
                            list.Add(new PhieuThu() { MaPhieuThu = (long)reader[0], MaKhachHang = (long)reader[1], NgayLap = formattedDate, SoTienThu = (decimal)reader[3] });
                        }
                }
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
