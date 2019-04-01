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
    /// Interaction logic for QuanLyKhachHang.xaml
    /// </summary>
    public partial class QuanLyKhachHang : Window
    {
        public class KhachHang
        {
            public long MaKhachHang { get; set; }
            public string HoTen { get; set; }
            public string DiaChi { get; set; }
            public string DienThoai { get; set; }
            public string Email { get; set; }
            public decimal TongNo { get; set; }
            public bool TrangThaiChon { get; set; }
        }
        public event EventHandler myEvent;
        public ObservableCollection<KhachHang> list;
        public QuanLyKhachHang()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<KhachHang>();
            dataGrid.ItemsSource = list;
            string query = "SELECT MaKhachHang, Hoten, DienThoai, DiaChi, Email, TongNo FROM KHACHHANG";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
                        {
                            list.Add(new KhachHang() { MaKhachHang = (long)reader[0], HoTen = (string)reader[1], DienThoai = (string)reader[2], DiaChi = (string)reader[3], Email = (string)reader[4], TongNo = (decimal)reader[5], TrangThaiChon = false });
                        }
                }
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
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if(textBoxMaKhachHang.Text == "")
            {
                if(isDigits(textBoxDienThoai.Text) && IsValidEmail(textBoxEmail.Text) && textBoxHoTen.Text != "" && textBoxDiaChi.Text != "")
                {
                    long makhachhang = -1;
                    string query = "EXEC spInsertIntoKHACHHANG '" + textBoxHoTen.Text + "', '" + textBoxDienThoai + "', '" + textBoxDiaChi + "', '" + textBoxEmail + "'";
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    query = "SELECT MAX(MaKhachHang) FROM KHACHHANG";
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            reader.Read();
                            makhachhang = (long)reader[0];
                            list.Add(new KhachHang() { MaKhachHang = makhachhang, HoTen = textBoxHoTen.Text, DiaChi = textBoxDiaChi.Text, DienThoai = textBoxDienThoai.Text, Email = textBoxEmail.Text, TongNo = 0,TrangThaiChon = false });
                            MessageBox.Show("Đã thêm thông tin khách hàng vào cơ sở dữ liệu");
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Thông tin không hợp lệ");
                }
            }
            else
            {
                if (isDigits(textBoxDienThoai.Text) && IsValidEmail(textBoxEmail.Text) && textBoxHoTen.Text != "" && textBoxDiaChi.Text != "")
                {
                    string query = "UPDATE KHACHHANG SET HoTen = '" + textBoxHoTen.Text + "', DienThoai = '" + textBoxDienThoai.Text + "', DiaChi = '" + textBoxDiaChi.Text + "', Email = '" + textBoxEmail.Text + "' WHERE MaKhachHang = " + textBoxMaKhachHang.Text;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    MessageBox.Show("Cập nhật thành công");
                    for(int i = list.Count() - 1; i >= 0; i--)
                    {
                        if(list[i].MaKhachHang == long.Parse(textBoxMaKhachHang.Text))
                        {
                            list[i].HoTen = textBoxHoTen.Text;
                            list[i].DiaChi = textBoxDiaChi.Text;
                            list[i].Email = textBoxEmail.Text;
                            list[i].DienThoai = textBoxDienThoai.Text;
                            CollectionViewSource.GetDefaultView(list).Refresh();
                            break;
                        }
                    }
                    textBoxMaKhachHang.Text = textBoxHoTen.Text = textBoxDiaChi.Text = textBoxDienThoai.Text = textBoxEmail.Text = textBoxTongNo.Text = "";
                    BtThem.Content = "Thêm";
                }
                else
                {
                    MessageBox.Show("Thông tin không hợp lệ");
                }
            }
        }
        bool isDigits(string s)
        {
            if (s == null || s == "") return false;

            for (int i = 0; i < s.Length; i++)
                if ((s[i] ^ '0') > 9)
                    return false;

            return true;
        }
        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            KhachHang khachHang = (KhachHang)dataGrid.SelectedItem;
            textBoxMaKhachHang.Text = khachHang.MaKhachHang.ToString();
            textBoxHoTen.Text = khachHang.HoTen;
            textBoxDiaChi.Text = khachHang.DiaChi;
            textBoxDienThoai.Text = khachHang.DienThoai;
            textBoxEmail.Text = khachHang.Email;
            textBoxTongNo.Text = khachHang.TongNo.ToString();
            BtThem.Content = "Cập nhật";
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            string query;
            foreach(var x in list.ToList<KhachHang>())
            {
                if(x.TrangThaiChon == true)
                {
                    bool DeleteFlagHoaDon = false, DeleteFlagPhieuThu = false, DeleteFlagBaoCaoCongNo = false;
                    query = "SELECT MaHoaDon FROM HOADON WHERE MaKhachHang = " + x.MaKhachHang;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.HasRows)
                            {
                                DeleteFlagHoaDon = true;
                            }
                        }
                    }
                    query = "SELECT MaPhieuThu FROM PHIEUTHU WHERE MaKhachHang = " + x.MaKhachHang;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                DeleteFlagPhieuThu = true;
                            }
                        }
                    }
                    query = "SELECT Nam FROM BAOCAOCONGNO WHERE MaKhachHang = " + x.MaKhachHang;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                DeleteFlagBaoCaoCongNo = true;
                            }
                        }
                    }
                    if (DeleteFlagBaoCaoCongNo || DeleteFlagHoaDon || DeleteFlagPhieuThu)
                    {
                        //Do nothing
                    }
                    else
                    {
                        query = "DELETE FROM KHACHHANG WHERE MaKhachHang = " + x.MaKhachHang;
                        list.Remove(x);
                    }
                }
            }
            foreach(var x in list)
            {
                if(x.TrangThaiChon == true)
                {
                    MessageBox.Show("Các mục đánh dấu còn lại không thể xóa");
                    break;
                }
            }
        }
    }
}
