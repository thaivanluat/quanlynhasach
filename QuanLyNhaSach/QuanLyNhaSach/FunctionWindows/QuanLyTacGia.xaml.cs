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
    /// Interaction logic for QuanLyTacGia.xaml
    /// </summary>
    public partial class QuanLyTacGia : Window
    {
        public event EventHandler myEvent;
        public class TacGia : INotifyPropertyChanged
        {
            private long matacgia;
            public long MaTacGia
            {
                get { return matacgia; }
                set
                {
                    matacgia = value;
                    OnPropertyChanged("MaTacGia");
                }
            }

            private string tentacgia;
            public string TenTacGia
            {
                get { return tentacgia; }
                set
                {
                    tentacgia = value;
                    OnPropertyChanged("TenTacGia");
                }
            }

            private int namsinh;
            public int NamSinh
            {
                get { return namsinh; }
                set
                {
                    namsinh = value;
                    OnPropertyChanged("NamSinh");
                }
            }

            private bool trangthaichon;

            public bool TrangThaiChon
            {
                get { return trangthaichon; }
                set
                {
                    trangthaichon = value;
                    OnPropertyChanged("TrangThaiChon");
                }
            }

            private void OnPropertyChanged(string propertyName)
            {
                PropertyChangedEventHandler handler = PropertyChanged;
                if (handler != null)
                {
                    handler(this, new PropertyChangedEventArgs(propertyName));
                }
            }

            public bool IsValid = false;

            public event PropertyChangedEventHandler PropertyChanged;
        }
        private ObservableCollection<TacGia> list { get; set; }

        public QuanLyTacGia()
        {
            InitializeComponent();
            this.Closed += new EventHandler(OnWindowClosed);
            list = new ObservableCollection<TacGia>();
            dataGrid.ItemsSource = list;
            using (SqlCommand cmd = new SqlCommand("SELECT MaTacGia, TenTacGia, NamSinh FROM TACGIA", QuanLyNhaSach.MainWindow.sqlConnection))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while(reader.Read())
                        {
                            list.Add(new TacGia() { MaTacGia = (long)reader[0], TenTacGia = (string)reader[1], NamSinh = (int)reader[2] });
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
            if (textBoxMaTacGia.Text == "")
            {
                int namsinh;
                if (textBoxTenTacGia.Text.Length == 0 || int.TryParse(textBoxNamSinh.Text, out namsinh) == false)
                {
                    MessageBox.Show("Lỗi nhập tên tác giả và năm sinh");
                }
                else
                {
                    string queryString = "EXEC spInsertIntoTACGIA " + textBoxTenTacGia.Text + ", " + textBoxNamSinh.Text;
                    using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    queryString = "SELECT MAX(MaTacGia) FROM TACGIA";
                    long id = -1;
                    using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                if (reader.Read()) { id = (long)reader[0]; }
                            }
                        }
                    }
                    list.Add(new TacGia() { MaTacGia = id, TenTacGia = textBoxTenTacGia.Text, NamSinh = namsinh });
                    textBoxTenTacGia.Text = "";
                    textBoxNamSinh.Text = "";
                    MessageBox.Show("Đã thêm vào cơ sở dữ liệu");
                }
            }
            else
            {
                long matacgia = -1;
                int namsinh = -1;
                if (long.TryParse(textBoxMaTacGia.Text, out matacgia) == false || int.TryParse(textBoxNamSinh.Text, out namsinh) == false)
                {
                    MessageBox.Show("Lỗi nhập Mã tác giả và Năm sinh vui lòng nhập lại");
                }
                else
                {
                    string queryString = "UPDATE TACGIA SET TenTacGia = '" + textBoxTenTacGia.Text + "', NamSinh = " + textBoxNamSinh.Text + " WHERE MaTacGia = " + textBoxMaTacGia.Text;
                    using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                    for(int i = 0; i < list.Count; i++)
                    {
                        if (list[i].MaTacGia == matacgia)
                        {
                            list[i].TenTacGia = textBoxTenTacGia.Text;
                            list[i].NamSinh = namsinh;
                            CollectionViewSource.GetDefaultView(list).Refresh();
                            break;
                        }
                    }
                    textBoxMaTacGia.Text = "";
                    textBoxTenTacGia.Text = "";
                    textBoxNamSinh.Text = "";
                    BtThem.Content = "Thêm";
                }
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            TacGia selectedItem = (TacGia)dataGrid.SelectedItem;
            textBoxMaTacGia.Text = selectedItem.MaTacGia.ToString();
            textBoxTenTacGia.Text = selectedItem.TenTacGia;
            textBoxNamSinh.Text = selectedItem.NamSinh.ToString();
            BtThem.Content = "Cập nhật";
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            foreach(var x in list.ToList<TacGia>())
            {
                if(x.TrangThaiChon == true)
                {
                    string queryString = "DELETE FROM TACGIA WHERE MaTacGia = " + x.MaTacGia;
                    using (SqlCommand cmd = new SqlCommand(queryString, QuanLyNhaSach.MainWindow.sqlConnection))
                    {
                        cmd.ExecuteNonQuery();
                    }
                        list.Remove(x);
                }
            }
        }
    }
}
