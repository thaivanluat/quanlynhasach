using System;
using System.Collections.Generic;
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
    /// Interaction logic for ThayDoiQuyDinh.xaml
    /// </summary>
    public partial class ThayDoiQuyDinh : Window
    {
        enum ThamSo
        {
            SoLuongNhapToiThieu,
            SoLuongTonDeNhapToiDa,
            TongNoToiDa,
            LuongTonSauKhiBanToiThieu,
            ChoPhepSoTienThuVuotTongNo,
            TiLeTinhDonGiaBan
        }

        protected int[] ArrayThamSo = new int[6];
        public event EventHandler myEvent;
        public ThayDoiQuyDinh()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            LoadParameters();
        }

        protected void LoadParameters()
        {
            string query = "SELECT GiaTri FROM THAMSO";
            int i = 0;
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
                        {
                            ArrayThamSo[i] = (int)reader[0];
                            i++;
                        }
                }
            }
            textBoxSoLuongNhapToiThieuCu.Text = ArrayThamSo[0].ToString();
            textBoxSoLuongTonDeNhapToiDaCu.Text = ArrayThamSo[1].ToString();
            textBoxTongNoToiDaCu.Text = ArrayThamSo[2].ToString();
            textBoxLuongTonSauKhiBanToiThieuCu.Text = ArrayThamSo[3].ToString();
            textBoxChoPhepSoTienThuVuotTongNoCu.Text = ArrayThamSo[4].ToString();
            textBoxTiLeTinhDonGiaBanCu.Text = ArrayThamSo[5].ToString();
        }
        private void OnWindowClosed(object sender, EventArgs e)
        {
            OnMyEvent();
        }

        protected void OnMyEvent()
        {
            if (this.myEvent != null)
                this.myEvent(this, EventArgs.Empty);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            bool IsValid =
                (ValidateTextBox(textBoxSoLuongNhapToiThieuMoi) &&
                ValidateTextBox(textBoxSoLuongTonDeNhapToiDaMoi) &&
                ValidateTextBox(textBoxTongNoToiDaMoi) &&
                ValidateTextBox(textBoxLuongTonSauKhiBanToiThieuMoi) &&
                ValidateTFTextBox(textBoxChoPhepSoTienThuVuotTongNoMoi) &&
                ValidateTextBox(textBoxTiLeTinhDonGiaBanMoi));
            if(IsValid)
            {
                if(textBoxSoLuongNhapToiThieuMoi.Text != "")
                {
                    int value = int.Parse(textBoxSoLuongNhapToiThieuMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'SoLuongNhapToiThieu'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                if (textBoxSoLuongTonDeNhapToiDaMoi.Text != "")
                {
                    int value = int.Parse(textBoxSoLuongTonDeNhapToiDaMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'SoLuongTonDeNhapToiDa'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                if (textBoxTongNoToiDaMoi.Text != "")
                {
                    int value = int.Parse(textBoxTongNoToiDaMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'TongNoToiDa'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                if (textBoxLuongTonSauKhiBanToiThieuMoi.Text != "")
                {
                    int value = int.Parse(textBoxLuongTonSauKhiBanToiThieuMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'LuongTonSauKhiBanToiThieu'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                if (textBoxChoPhepSoTienThuVuotTongNoMoi.Text == "0" || textBoxChoPhepSoTienThuVuotTongNoMoi.Text == "1")
                {
                    int value = int.Parse(textBoxChoPhepSoTienThuVuotTongNoMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'ChoPhepSoTienThuVuotTongNo'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                if (textBoxTiLeTinhDonGiaBanMoi.Text != "")
                {
                    int value = int.Parse(textBoxTiLeTinhDonGiaBanMoi.Text);
                    string query = "UPDATE THAMSO SET GiaTri = " + value + " WHERE TenThamSo = 'TiLeTinhDonGiaBan'";
                    using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection)) { cmd.ExecuteNonQuery(); }
                }
                ClearAllTextBoxes();
                LoadParameters();
                MessageBox.Show("Đã cập nhật thành công");
            }
            else
            {
                MessageBox.Show("Các trường nhập đỏ không hợp lệ, vui lòng thử lại");
            }
        }

        protected void ClearAllTextBoxes()
        {
            textBoxSoLuongNhapToiThieuMoi.Text = textBoxSoLuongTonDeNhapToiDaMoi.Text = textBoxTongNoToiDaMoi.Text = textBoxLuongTonSauKhiBanToiThieuMoi.Text = textBoxChoPhepSoTienThuVuotTongNoMoi.Text = textBoxTiLeTinhDonGiaBanMoi.Text = "";
        }

        bool ValidateTextBox(TextBox textbox)
        {
            return (isDigits(textbox.Text) || textbox.Text == "");
        }

        bool ValidateTFTextBox(TextBox textbox)
        {
            return (textbox.Text == "1" || textbox.Text == "0" || textbox.Text == "");
        }

        bool isDigits(string s)
        {
            if (s == null || s == "") return false;

            for (int i = 0; i < s.Length; i++)
                if ((s[i] ^ '0') > 9)
                    return false;

            return true;
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(isDigits(((TextBox)sender).Text) || ((TextBox)sender).Text == "")
            {
                ((TextBox)sender).Background = Brushes.White;
            }
            else
            {
                ((TextBox)sender).Background = new System.Windows.Media.SolidColorBrush((Color)ColorConverter.ConvertFromString("#e74c3c"));
            }
        }

        private void textBoxChoPhepSoTienThuVuotTongNoMoi_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (((TextBox)sender).Text == "" || ((TextBox)sender).Text == "0" || ((TextBox)sender).Text == "1")
            {
                ((TextBox)sender).Background = Brushes.White;
            }
            else
            {
                ((TextBox)sender).Background = new System.Windows.Media.SolidColorBrush((Color)ColorConverter.ConvertFromString("#e74c3c"));
            }
        }
    }
}
