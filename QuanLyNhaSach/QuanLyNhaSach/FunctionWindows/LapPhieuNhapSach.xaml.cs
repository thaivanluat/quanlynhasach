using System;
using System.Collections.Generic;
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
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.SqlClient;

/*
 * Hiển thị điều kiện
 * Kiểm tra điều kiện nhập
*/

namespace QuanLyNhaSach.FunctionWindows
{
    public class ChiTietPhieuNhapSach
    {
        public long MaSach { get; set; }
        public string TenSach { get; set; }
        public string TheLoai { get; set; }
        public string TacGia { get; set; }
        public int SoLuongTon { get; set; }
        public int SoLuong { get; set; }
        public decimal DonGiaNhap { get; set; }
        public decimal ThanhTien
        {
            get { return SoLuong * DonGiaNhap; }
            set { ThanhTien = SoLuong * DonGiaNhap; }
        }
    }

    /// <summary>
    /// Interaction logic for LapPhieuNhapSach.xaml
    /// </summary>
    public partial class LapPhieuNhapSach : Window
    {
        public event EventHandler myEvent;
        private ObservableCollection<ChiTietPhieuNhapSach> comboBoxList { get; set; }
        private ObservableCollection<ChiTietPhieuNhapSach> list { get; set; }
        private int soLuongNhapToiThieu;
        private int soLuongTonDeNhapToiDa;
        public LapPhieuNhapSach()
        {   
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<ChiTietPhieuNhapSach>();
            comboBoxList = new ObservableCollection<ChiTietPhieuNhapSach>();
            comboBoxMaSach.ItemsSource = comboBoxList;
            dataGrid.ItemsSource = list;
            datePicker.DisplayDateStart = DateTime.Today;
            InitComboBoxList();
            InitParameters();
        }
        protected void InitParameters()
        {
            string query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'SoLuongNhapToiThieu'";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        if(reader.Read())
                        {
                            soLuongNhapToiThieu = (int)reader[0];
                        }
                }
            }
            query = "SELECT GiaTri FROM THAMSO WHERE TenThamSo = 'SoLuongTonDeNhapToiDa'";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        if (reader.Read())
                        {
                            soLuongTonDeNhapToiDa = (int)reader[0];
                        }
                }
            }
            textBlockSoLuongNhapToiThieu.Text = "Số lượng nhập tối thiểu là " + soLuongNhapToiThieu;
            textBlockSoLuongTonDeNhapToiDa.Text = "Số lượng tồn tối đa để nhập là " + soLuongTonDeNhapToiDa;
        }
        protected void InitComboBoxList()
        {
            List<long> maSachList = new List<long>();
            string query = "SELECT MaSach FROM SACH";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
                        {
                            maSachList.Add((long)reader[0]);
                        }
                }
            }
            if(maSachList.Count > 0)
            {
                foreach(var x in maSachList)
                {
                    using (SqlCommand cmd = new SqlCommand("EXEC spSupportLapPhieuNhapSach " + x, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                ChiTietPhieuNhapSach ctpn = new ChiTietPhieuNhapSach();
                                bool readFlag = false;
                                while (reader.Read())
                                {
                                    if (readFlag)
                                    {
                                        ctpn.TacGia += "; " + (string)reader[2];
                                    }
                                    else
                                    {
                                        ctpn.MaSach = x;
                                        ctpn.TenSach = (string)reader[0];
                                        ctpn.TheLoai = (string)reader[1];
                                        ctpn.TacGia = (string)reader[2];
                                        ctpn.SoLuongTon = (int)reader[3];
                                        readFlag = true;
                                    }
                                }
                                comboBoxList.Add(ctpn);
                            }
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Không có dữ liệu sách");
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
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ChiTietPhieuNhapSach ctpn = (ChiTietPhieuNhapSach)dataGrid.SelectedItem;
            comboBoxList.Add(ctpn);
            list.Remove(ctpn);
            decimal sum = 0;
            foreach (var x in list)
            {
                sum += x.ThanhTien;
            }
            textBoxTongTien.Text = sum.ToString();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            ChiTietPhieuNhapSach ctpn = (ChiTietPhieuNhapSach)comboBoxMaSach.SelectedItem;
            int soluongnhap = int.Parse(textBoxSoLuong.Text);
            if (soluongnhap >= soLuongNhapToiThieu && ctpn.SoLuongTon < soLuongTonDeNhapToiDa)
            {
                ctpn.SoLuong = soluongnhap;
                ctpn.DonGiaNhap = decimal.Parse(textBoxDonGiaNhap.Text);
                list.Add(ctpn);
                comboBoxList.Remove(ctpn);
                comboBoxMaSach.SelectedIndex = -1;
                ClearAllTextBox();
                decimal sum = 0;
                foreach(var x in list)
                {
                    sum += x.ThanhTien;
                }
                textBoxTongTien.Text = sum.ToString();
            }
            else
            {
                MessageBox.Show("Không thỏa điều kiện để nhập sách");
            }
        }
        private void ClearAllTextBox()
        {
            textBoxTenSach.Text = textBoxTheLoai.Text = textBoxTacGia.Text = textBoxSoLuongTon.Text = "";
            textBoxSoLuong.Text = textBoxDonGiaNhap.Text = textBoxThanhTien.Text = "0";
        }
        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            DateTime? selectedDate = datePicker.SelectedDate;
            if(selectedDate.HasValue && list.Count > 0)
            {
                string formattedDate = selectedDate.Value.ToString("yyyyMMdd", System.Globalization.CultureInfo.InvariantCulture);
                string queryString = "EXEC spInsertIntoPHIEUNHAPSACH @date = '" + formattedDate + "';";
                using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                long id = -1;
                using (SqlCommand cmd = new SqlCommand("SELECT MAX(MaPhieuNhapSach) FROM PHIEUNHAPSACH", QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.HasRows)
                        {
                            reader.Read();
                            id = (long)reader[0];
                        }
                    }
                }
                foreach (ChiTietPhieuNhapSach ctpn in list)
                {
                    queryString = "EXEC spInsertIntoCHITIETPHIEUNHAPSACH " + id + ", " + ctpn.MaSach + ", " + ctpn.SoLuong + ", " + ctpn.DonGiaNhap;
                    using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                MessageBox.Show("Đã cập nhật vào cơ sở dữ liệu");
                this.Close();
            }
            else
            {
                MessageBox.Show("Phiếu nhập không hợp lệ vui lòng nhập lại");
            }
        }

        private void comboBoxMaSach_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (comboBoxMaSach.SelectedIndex >= 0)
            {
                ChiTietPhieuNhapSach ctpn = (ChiTietPhieuNhapSach)comboBoxMaSach.SelectedItem;
                textBoxTenSach.Text = ctpn.TenSach;
                textBoxTheLoai.Text = ctpn.TheLoai;
                textBoxTacGia.Text = ctpn.TacGia;
                textBoxSoLuongTon.Text = ctpn.SoLuongTon.ToString();
                textBoxSoLuong.Text = textBoxDonGiaNhap.Text = "0";
            }
        }

        private void textBoxSoLuong_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(textBoxDonGiaNhap != null && textBoxSoLuong != null && textBoxThanhTien != null && comboBoxMaSach.SelectedIndex >= 0)
            {
                int soluong;
                decimal dongianhap;
                decimal thanhtien;
                if (int.TryParse(textBoxSoLuong.Text, out soluong) && decimal.TryParse(textBoxDonGiaNhap.Text, out dongianhap))
                {
                    thanhtien = soluong * dongianhap;
                    textBoxThanhTien.Text = thanhtien.ToString();
                    BtThem.IsEnabled = true;
                }
                else
                {
                    textBoxThanhTien.Text = "0";
                    BtThem.IsEnabled = false;
                }
            }
        }
    }
}
