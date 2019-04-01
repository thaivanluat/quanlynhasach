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
    /// Interaction logic for QuanLyTheLoai.xaml
    /// </summary>
    public partial class QuanLyTheLoai : Window
    {
        public class TheLoai
        {
            public long MaTheLoai { get; set; }
            public string TenTheLoai { get; set; }
            public bool TrangThaiChon { get; set; }
        }
        public event EventHandler myEvent;
        public ObservableCollection<TheLoai> list;
        public QuanLyTheLoai()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<TheLoai>();
            dataGrid.ItemsSource = list;
            string query = "SELECT MaTheLoai, TenTheLoai FROM THELOAI";
            using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if(reader.HasRows)
                    {
                        while(reader.Read())
                        {
                            list.Add(new TheLoai() { MaTheLoai = (long)reader[0], TenTheLoai = (string)reader[1], TrangThaiChon = false });
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
            TheLoai theLoai = (TheLoai)dataGrid.SelectedItem;
            textBoxMaTheLoai.Text = theLoai.MaTheLoai.ToString();
            textBoxTenTheLoai.Text = theLoai.TenTheLoai;
            BtThem.Content = "Cập nhật";
        }

        private void BtThem_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxMaTheLoai.Text == "")
            {
                if (textBoxTenTheLoai.Text != "")
                {
                    string query = "EXEC spInsertIntoTHELOAI '" + textBoxTenTheLoai.Text + "'";
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    query = "SELECT MAX(MaTheLoai) FROM THELOAI";
                    long matheloai = -1;
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                                if (reader.Read())
                                    matheloai = (long)reader[0];
                        }
                    }
                    list.Add(new TheLoai() { MaTheLoai = matheloai, TenTheLoai = textBoxTenTheLoai.Text, TrangThaiChon = false });
                    textBoxTenTheLoai.Text = "";
                    MessageBox.Show("Đã thêm vào cơ sở dữ liệu");
                }
                else
                {
                    MessageBox.Show("Vui lòng nhập tên thể loại");
                }
            }
            else
            {
                long matheloai = long.Parse(textBoxMaTheLoai.Text);
                string query = "UPDATE THELOAI SET TenTheLoai = '" + textBoxTenTheLoai.Text + "' WHERE MaTheLoai = " + textBoxMaTheLoai.Text;
                using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                {
                    cmd.ExecuteNonQuery();
                }
                for(int i = list.Count() - 1; i >= 0; i--)
                {
                    if(list[i].MaTheLoai == matheloai)
                    {
                        list[i].TenTheLoai = textBoxTenTheLoai.Text;
                        CollectionViewSource.GetDefaultView(list).Refresh();
                        break;
                    }
                }
                BtThem.Content = "Thêm";
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            string query;
            foreach (var x in list.ToList<TheLoai>())
            {
                if (x.TrangThaiChon)
                {
                    bool DeleteFlag = false;
                    query = "SELECT MaDauSach FROM DAUSACH WHERE MaTheLoai = " + x.MaTheLoai.ToString();
                    using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(!reader.HasRows)
                            {
                                list.Remove(x);
                                DeleteFlag = true;
                            }
                        }
                    }
                    if (DeleteFlag)
                    {
                        query = "DELETE FROM THELOAI WHERE MaTheLoai = " + x.MaTheLoai.ToString();
                        using (SqlCommand cmd = new SqlCommand(query, QuanLyNhaSach.MainWindow.sqlConnection))
                        {
                            cmd.ExecuteNonQuery();
                        }
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
