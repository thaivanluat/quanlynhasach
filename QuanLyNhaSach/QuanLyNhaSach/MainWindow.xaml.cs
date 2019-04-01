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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;

namespace QuanLyNhaSach
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static SqlConnection sqlConnection = new SqlConnection("Server=localhost; Database=QuanLyNhaSach; Integrated Security=True;");
        public MainWindow()
        {
            InitializeComponent();
            this.Loaded += new RoutedEventHandler(OnWindowLoaded);
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (accountTextBox.Text == "" || passwordBox.Password == "")
            {
                MessageBox.Show("Vui lòng nhập tài khoản và mật khẩu");
            }
            else
            {
                statusText.Text = "Đang kết nối, vui lòng đợi...";
                try
                {
                    sqlConnection.Open();
                    /*
                    MainMenu mainMenu = new MainMenu();
                    mainMenu.Show();
                    this.Close();
                    */
                    string query = "SELECT TaiKhoan, MatKhau FROM TAIKHOAN WHERE TaiKhoan = '" + accountTextBox.Text + "' AND MatKhau = '" + passwordBox.Password + "'";
                    using (SqlCommand cmd = new SqlCommand(query, sqlConnection))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.HasRows)
                            {
                                MainMenu mainMenu = new MainMenu();
                                mainMenu.Show();
                                this.Close();
                            }
                            else
                            {
                                sqlConnection.Close();
                                statusText.Text = "";
                                passwordBox.Password = "";
                                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng, vui lòng thử lại");
                            }
                        }
                    }

                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Kết nối thất bại");
                }
            }
        }

        private void OnWindowLoaded(object sender, RoutedEventArgs e)
        {
            statusText.Text = "";
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
