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
    /// Interaction logic for QuanLyDauSach.xaml
    /// </summary>
    public partial class QuanLyDauSach : Window
    {
        public class TheLoai
        {
            public long MaTheLoai { get; set; }
            public string TenTheLoai { get; set; }
        }

        public class TacGia
        {
            public long MaTacGia { get; set; }

            public string TenTacGia { get; set; }

            public int NamSinh { get; set; }
            public string MaTacGiaTenTacGia
            {
                get { return MaTacGia.ToString() + " | " + TenTacGia; }
                set { MaTacGiaTenTacGia = MaTacGia.ToString() + " | " + TenTacGia; }
            }

            public bool TrangThaiChon { get; set; }
        }

        public class DauSach
        {
            public long MaDauSach { get; set; }
            public string TenDauSach { get; set; }
            public string TacGia { get; set; }
            public string TenTheLoai { get; set; }
            public bool TrangThaiChon { get; set; }
        }

        public event EventHandler myEvent;
        private ObservableCollection<TacGia> listTacGia;
        private ObservableCollection<DauSach> listDauSach;
        private ObservableCollection<TheLoai> listTheLoai;
        private ObservableCollection<TacGia> listTacGiaDataGrid;
        public QuanLyDauSach()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            listTacGia = new ObservableCollection<TacGia>();
            listDauSach = new ObservableCollection<DauSach>();
            listTheLoai = new ObservableCollection<TheLoai>();
            listTacGiaDataGrid = new ObservableCollection<TacGia>();
            dataGridTacGia.ItemsSource = listTacGiaDataGrid;
            comboBoxTacGia.ItemsSource = listTacGia;
            dataGrid.ItemsSource = listDauSach;
            comboBoxTheLoai.ItemsSource = listTheLoai;
            string query = "SELECT MaTheLoai, TenTheLoai FROM THELOAI";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                    {
                        while(reader.Read())
                        {
                            listTheLoai.Add(new TheLoai() { MaTheLoai = (long)reader[0], TenTheLoai = (string)reader[1] });
                        }
                    }
                    else
                    {
                        MessageBox.Show("Không có dữ liệu thể loại");
                    }
                }
            }
            ReloadTacGiaComboBox();
            ReloadDauSachDataGrid();
        }

        protected void ReloadTacGiaComboBox()
        {
            while(listTacGia.Count > 0)
            {
                listTacGia.RemoveAt(0);
            }
            string query = "SELECT MaTacGia, TenTacGia, NamSinh FROM TACGIA";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            listTacGia.Add(new TacGia() { MaTacGia = (long)reader[0], TenTacGia = (string)reader[1], NamSinh = (int)reader[2], TrangThaiChon = false });
                        }
                    }
                    else
                    {
                        MessageBox.Show("Không có dữ liệu thông tin tác giả");
                    }
                }
            }
        }

        protected void ReloadDauSachDataGrid()
        {
            string query;
            while(listDauSach.Count > 0)
            {
                listDauSach.RemoveAt(0);
            }
            query = "SELECT MaDauSach, TenDauSach, TenTheLoai FROM DAUSACH INNER JOIN THELOAI ON (DAUSACH.MaTheLoai = THELOAI.MaTheLoai)";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            listDauSach.Add(new DauSach() { MaDauSach = (long)reader[0], TenDauSach = (string)reader[1], TenTheLoai = (string)reader[2] });
                        }
                    }
                }
            }
            for (int i = listDauSach.Count - 1; i >= 0; i--)
            {
                query = "SELECT TenTacGia FROM (SELECT * FROM CHITIETTACGIA WHERE MaDauSach = " + listDauSach[i].MaDauSach + ") AS A INNER JOIN TACGIA ON (A.MaTacGia = TACGIA.MaTacGia)";
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
                                    listDauSach[i].TacGia += "; " + reader[0];
                                }
                                else
                                {
                                    listDauSach[i].TacGia += reader[0];
                                    ReadFlag = true;
                                }
                            }
                        }
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
            foreach(var x in listDauSach.ToList<DauSach>())
            {
                bool DeleteFlag = false;
                if(x.TrangThaiChon == true)
                {
                    string query = "SELECT MaSach FROM SACH WHERE MaDauSach = " + x.MaDauSach;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (!reader.HasRows)
                            {
                                DeleteFlag = true;
                            }
                        }
                    }
                    if(DeleteFlag)
                    {
                        query = "DELETE FROM CHITIETTACGIA WHERE MaDauSach = " + x.MaDauSach;
                        using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                        {
                            cmd.ExecuteNonQuery();
                        }
                        query = "DELETE FROM DAUSACH WHERE MaDauSach = " + x.MaDauSach;
                        using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                        {
                            cmd.ExecuteNonQuery();
                        }
                        listDauSach.Remove(x);
                    }
                }
            }
            foreach(var x in listDauSach)
            {
                if(x.TrangThaiChon == true)
                {
                    MessageBox.Show("Các mục chọn còn lại không thể xóa được");
                    break;
                }
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if(comboBoxTacGia.SelectedIndex < 0)
            {
                MessageBox.Show("Vui lòng chọn tác giả");
            }
            else
            {
                listTacGiaDataGrid.Add((TacGia)comboBoxTacGia.SelectedItem);
                listTacGia.Remove((TacGia)comboBoxTacGia.SelectedItem);
                comboBoxTacGia.SelectedIndex = -1;
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            foreach(var x in listTacGiaDataGrid.ToList<TacGia>())
            {
                if(x.TrangThaiChon == true)
                {
                    listTacGiaDataGrid[listTacGiaDataGrid.IndexOf(x)].TrangThaiChon = false;
                    listTacGia.Add(x);
                    listTacGiaDataGrid.Remove(x);
                }
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            if(textBoxTenDauSach.Text != "" && comboBoxTheLoai.SelectedIndex >= 0 && dataGridTacGia.HasItems)
            {
                long madausach = -1;
                string query = "EXEC spInsertIntoDAUSACH '" + textBoxTenDauSach.Text + "', " + comboBoxTheLoai.SelectedValue;
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                query = "SELECT MAX(MaDauSach) FROM DAUSACH";
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                            if (reader.Read())
                                madausach = (long)reader[0];
                    }
                }
                foreach(var x in listTacGiaDataGrid)
                {
                    query = "EXEC spInsertIntoCHITIETTACGIA " + x.MaTacGia + ", " + madausach;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                textBoxTenDauSach.Text = "";
                comboBoxTheLoai.SelectedIndex = -1;
                while(listTacGiaDataGrid.Count > 0)
                {
                    listTacGiaDataGrid.RemoveAt(0);
                }
                ReloadTacGiaComboBox();
                ReloadDauSachDataGrid();
                MessageBox.Show("Đã thêm đầu sách vào cơ sở dữ liệu");
            }
            else
            {
                MessageBox.Show("Thiếu thông tin đầu sách, vui lòng kiểm tra lại");
            }
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            DauSach dauSach = (DauSach)dataGrid.SelectedItem;
            BtCapNhat.IsEnabled = true;
            textBoxMaDauSach.Text = dauSach.MaDauSach.ToString();
            textBoxTenDauSach.Text = dauSach.TenDauSach;

        }
    }
}
