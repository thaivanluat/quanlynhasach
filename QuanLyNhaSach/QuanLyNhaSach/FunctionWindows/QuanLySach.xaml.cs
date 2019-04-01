using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
    /// Interaction logic for QuanLySach.xaml
    /// </summary>
    /// 
    
    public partial class QuanLySach : Window
    {
        public class Sach
        {
            public long MaSach { get; set; }
            public string TenSach { get; set; }
            public string TheLoai { get; set; }
            public string TenTacGia { get; set; }
            public string NhaXuatBan { get; set; }
            public int NamXuatBan { get; set; }
            public int SoLuongTon { get; set; }
            public decimal DonGiaBan { get; set; }

            public long MaDauSach;
        }

        public class DauSach
        {
            public long MaDauSach { get; set; }
            public string TenDauSach { get; set; }
            public string TacGia { get; set; }
            public string TenTheLoai { get; set; }
        }

        public event EventHandler myEvent;
        private ObservableCollection<DauSach> listDauSach;
        private ObservableCollection<Sach> list { get; set; }
        public QuanLySach()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<Sach>();
            listDauSach = new ObservableCollection<DauSach>();
            dataGrid.ItemsSource = list;
            comboBoxMaDauSach.ItemsSource = listDauSach;
            LoadBookList();
            LoadDauSach();
        }

        protected void LoadDauSach()
        {
            string query;
            while (listDauSach.Count > 0)
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

        protected void LoadBookList()
        {
            string queryString = "SELECT MaSach, DAUSACH.TenDauSach, THELOAI.TenTheLoai, NhaXuatBan, NamXuatBan, SoLuongTon, DonGiaBan, SACH.MaDauSach FROM SACH INNER JOIN DAUSACH ON (SACH.MaDauSach = DAUSACH.MaDauSach) INNER JOIN THELOAI ON (DAUSACH.MaTheLoai = THELOAI.MaTheLoai)";
            using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            list.Add(new Sach()
                            {
                                MaSach = (long)reader[0],
                                TenSach = (string)reader[1],
                                TheLoai = (string)reader[2],
                                NhaXuatBan = (string)reader[3],
                                NamXuatBan = (int)reader[4],
                                SoLuongTon = (int)reader[5],
                                DonGiaBan = (decimal)reader[6],
                                MaDauSach = (long)reader[7],
                                TenTacGia = ""
                            });
                        }
                    }
                }
            }
            for (int i = list.Count() - 1; i >= 0; i--)
            {
                queryString = "SELECT TenTacGia FROM (SELECT * FROM CHITIETTACGIA WHERE MaDauSach = " + list[i].MaDauSach + ") AS A INNER JOIN TACGIA ON (A.MaTacGia = TACGIA.MaTacGia)";
                using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
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
                                    list[i].TenTacGia += "; " + reader[0];
                                }
                                else
                                {
                                    list[i].TenTacGia += reader[0];
                                    ReadFlag = true;
                                }
                            }
                        }
                    }
                }
            }
            CollectionViewSource.GetDefaultView(list).Refresh();
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

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            BtSua.IsEnabled = false;
            BtThem.IsEnabled = false;
            comboBoxMaDauSach.SelectedIndex = -1;
            comboBoxMaDauSach.IsEnabled = false;
            BtCapNhap.IsEnabled = true;
            Sach sach = (Sach)dataGrid.SelectedItem;
            textBoxMaSach.Text = sach.MaSach.ToString();
            textBoxTenSach.Text = sach.TenSach;
            textBoxTheLoai.Text = sach.TheLoai;
            textBoxTenTacGia.Text = sach.TenTacGia;
            textBoxNhaXuatBan.Text = sach.NhaXuatBan;
            textBoxNamXuatBan.Text = sach.NamXuatBan.ToString();
            textBoxSoLuongTon.Text = sach.SoLuongTon.ToString();
            textBoxDonGiaBan.Text = sach.DonGiaBan.ToString();
        }

        private void BtCapNhap_Click(object sender, RoutedEventArgs e)
        {
            int namxuatban = -1;
            decimal dongiaban = -1;
            long masach = -1;
            if (int.TryParse(textBoxNamXuatBan.Text, out namxuatban) == true && decimal.TryParse(textBoxSoLuongTon.Text, out dongiaban) == true)
            {
                string queryString = "UPDATE SACH SET NhaXuatBan = '" + textBoxNhaXuatBan.Text + "', NamXuatBan = " + textBoxNamXuatBan.Text + ", DonGiaBan = " + textBoxDonGiaBan.Text + " WHERE MaSach = " + textBoxMaSach.Text;
                using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                masach = long.Parse(textBoxMaSach.Text);
                for (int i = list.Count() - 1; i >= 0; i--)
                {
                    if(list[i].MaSach == masach)
                    {
                        list[i].NhaXuatBan = textBoxNhaXuatBan.Text;
                        list[i].NamXuatBan = namxuatban;
                        list[i].DonGiaBan = dongiaban;
                        break;
                    }
                }
                CollectionViewSource.GetDefaultView(list).Refresh();
                textBoxMaSach.Text = "";
                textBoxTenSach.Text = "";
                textBoxTheLoai.Text = "";
                textBoxTenTacGia.Text = "";
                textBoxNhaXuatBan.Text = "";
                textBoxNamXuatBan.Text = "";
                textBoxSoLuongTon.Text = "";
                textBoxDonGiaBan.Text = "";
                BtCapNhap.IsEnabled = false;
                MessageBox.Show("Đã lưu cập nhật vào cơ sở dữ liệu");
            }
            else
            {
                MessageBox.Show("Trường nhập không hợp lệ");
            }
            comboBoxMaDauSach.IsEnabled = true;
            BtThem.IsEnabled = true;
            BtSua.IsEnabled = true;
        }

        private void comboBoxMaDauSach_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(comboBoxMaDauSach.SelectedIndex >= 0)
            {
                DauSach dauSach = (DauSach)comboBoxMaDauSach.SelectedItem;
                textBoxTenSach.Text = dauSach.TenDauSach;
                textBoxTheLoai.Text = dauSach.TenTheLoai;
                textBoxTenTacGia.Text = dauSach.TacGia;
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

        private void BtThem_Click(object sender, RoutedEventArgs e)
        {
            if (isDigits(textBoxNamXuatBan.Text))
            {
                DauSach dauSach = (DauSach)comboBoxMaDauSach.SelectedItem;
                string query = "EXEC spInsertIntoSACH " + dauSach.MaDauSach + ", '" + textBoxNhaXuatBan.Text + "', " + textBoxNamXuatBan.Text;
                using (SqlCommand cmd = new SqlCommand(query, MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                LoadBookList();
                MessageBox.Show("Đã thêm sách vào cơ sở dữ liệu");
            }
            else
            {
                MessageBox.Show("Giá trị năm xuất bản không hợp lệ");
            }
        }
    }
}
