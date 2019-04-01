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
    /// Interaction logic for BaoCaoTon.xaml
    /// </summary>
    public partial class BaoCaoTon : Window
    {
        public class SachBaoCaoTon
        {
            public long MaSach { get; set; }
            public string TenSach { get; set; }
            public int TonDau { get; set; }
            public int PhatSinh { get; set; }
            public int TonCuoi { get; set; }
        }

        public event EventHandler myEvent;
        private ObservableCollection<SachBaoCaoTon> list;
        private ObservableCollection<int> listNam, listThang;
        public BaoCaoTon()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<SachBaoCaoTon>();
            listNam = new ObservableCollection<int>();
            listThang = new ObservableCollection<int>();
            dataGrid.ItemsSource = list;
            comboBoxNam.ItemsSource = listNam;
            comboBoxThang.ItemsSource = listThang;
            string query = "SELECT DISTINCT Nam FROM BAOCAOTON ORDER BY Nam ASC";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
                        {
                            listNam.Add((int)reader[0]);
                        }
                }
            }
            comboBoxNam.SelectionChanged += new SelectionChangedEventHandler(OnComboBoxNamSelectionChanged);
        }

        private void OnComboBoxNamSelectionChanged(object sender, EventArgs e)
        {
            string query = "SELECT DISTINCT Thang FROM BAOCAOTON WHERE Nam = " + comboBoxNam.SelectedItem.ToString();
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                        while(reader.Read())
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
            if(comboBoxNam.SelectedIndex < 0 || comboBoxThang.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn năm, tháng của báo cáo tồn");
            }
            else
            {
                string query = "SELECT SACH.MaSach, TenDauSach, TonDau, PhatSinh, TonCuoi FROM (SELECT * FROM BAOCAOTON WHERE Nam = " + comboBoxNam.SelectedItem + " AND THANG = " + comboBoxThang.SelectedItem +") AS A INNER JOIN SACH ON (A.MaSach = SACH.MaSach) INNER JOIN DAUSACH ON (SACH.MaDauSach = DAUSACH.MaDauSach)";
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.HasRows)
                        {
                            while(reader.Read())
                            {
                                list.Add(new SachBaoCaoTon() { MaSach = (long)reader[0], TenSach = (string)reader[1], TonDau = (int)reader[2], PhatSinh = (int)reader[3], TonCuoi = (int)reader[4] });
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
