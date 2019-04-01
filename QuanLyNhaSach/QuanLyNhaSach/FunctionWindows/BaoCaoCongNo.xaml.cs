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
    /// Interaction logic for BaoCaoCongNo.xaml
    /// </summary>
    public partial class BaoCaoCongNo : Window
    {
        public class KhachHangBaoCaoCongNo
        {
            public long MaKhachHang { get; set; }
            public string HoTen { get; set; }
            public decimal NoDau { get; set; }
            public decimal PhatSinh { get; set; }
            public decimal NoCuoi { get; set; }
        }

        public event EventHandler myEvent;
        private ObservableCollection<KhachHangBaoCaoCongNo> list;
        private ObservableCollection<int> listNam, listThang;
        public BaoCaoCongNo()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<KhachHangBaoCaoCongNo>();
            listNam = new ObservableCollection<int>();
            listThang = new ObservableCollection<int>();
            dataGrid.ItemsSource = list;
            comboBoxNam.ItemsSource = listNam;
            comboBoxThang.ItemsSource = listThang;
            string query = "SELECT DISTINCT Nam FROM BAOCAOCONGNO ORDER BY Nam ASC";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        while (reader.Read())
                        {
                            listNam.Add((int)reader[0]);
                        }
                }
            }
            comboBoxNam.SelectionChanged += new SelectionChangedEventHandler(OnComboBoxNamSelectionChanged);
        }

        private void OnComboBoxNamSelectionChanged(object sender, EventArgs e)
        {
            string query = "SELECT DISTINCT Thang FROM BAOCAOCONGNO WHERE Nam = " + comboBoxNam.SelectedItem.ToString();
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        while (reader.Read())
                        {
                            listThang.Add((int)reader[0]);
                        }
                }
            }
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
            if (comboBoxNam.SelectedIndex < 0 || comboBoxThang.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn năm, tháng của báo cáo công nợ");
            }
            else
            {
                string query = "SELECT KHACHHANG.MaKhachHang, KHACHHANG.HoTen, NoDau, PhatSinh, NoCuoi FROM (SELECT * FROM BAOCAOCONGNO WHERE Nam = " + comboBoxNam.SelectedItem + " AND THANG = " + comboBoxThang.SelectedItem + ") AS A INNER JOIN KHACHHANG ON (A.MaKhachHang = KHACHHANG.MaKhachHang)";
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                list.Add(new KhachHangBaoCaoCongNo() { MaKhachHang = (long)reader[0], HoTen = (string)reader[1], NoDau = (decimal)reader[2], PhatSinh = (decimal)reader[3], NoCuoi = (decimal)reader[4] });
                            }
                        }
                        else
                        {
                            MessageBox.Show("Không có dữ liệu");
                        }
                    }
                }
            }
        }

        private void OnWindowClosed(object sender, EventArgs e)
        {
            OnMyEvent();
        }
    }
}
