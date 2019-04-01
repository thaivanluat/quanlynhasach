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
using QuanLyNhaSach.FunctionWindows;

namespace QuanLyNhaSach
{
    /// <summary>
    /// Interaction logic for MainMenu.xaml
    /// </summary>
    public partial class MainMenu : Window
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            LapPhieuNhapSach lapPhieuNhapSach = new LapPhieuNhapSach();
            lapPhieuNhapSach.myEvent += new EventHandler(DisableButton);
            BtLapPhieuNhapSach.IsEnabled = false;
            lapPhieuNhapSach.Show();
        }

        private void DisableButton(object sender, EventArgs e)
        {
            BtLapPhieuNhapSach.IsEnabled = true;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow.sqlConnection.Close();
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            QuanLyTacGia quanLyTacGia = new QuanLyTacGia();
            quanLyTacGia.myEvent += new EventHandler(OnClosedQuanLyTacGiaWindow);
            BtQuanLyTacGia.IsEnabled = false;
            quanLyTacGia.Show();
        }

        private void OnClosedQuanLyTacGiaWindow(object sender, EventArgs e)
        {
            BtQuanLyTacGia.IsEnabled = true;
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            QuanLySach quanLySach = new QuanLySach();
            quanLySach.myEvent += new EventHandler(OnClosedQuanLySachWindow);
            BtQuanLySach.IsEnabled = false;
            quanLySach.Show();
        }

        private void OnClosedQuanLySachWindow(object sender, EventArgs e)
        {
            BtQuanLySach.IsEnabled = true;
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            QuanLyTheLoai quanLyTheLoai = new QuanLyTheLoai();
            quanLyTheLoai.myEvent += new EventHandler(OnClosedQuanLyTheLoaiWindow);
            BtQuanLyTheLoai.IsEnabled = false;
            quanLyTheLoai.Show();
        }

        private void OnClosedQuanLyTheLoaiWindow(object sender, EventArgs e)
        {
            BtQuanLyTheLoai.IsEnabled = true;
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            QuanLyKhachHang quanLyKhachHang = new QuanLyKhachHang();
            quanLyKhachHang.myEvent += new EventHandler(OnClosedQuanLyKhachHangWindow);
            BtQuanLyKhachHang.IsEnabled = false;
            quanLyKhachHang.Show();
        }

        private void OnClosedQuanLyKhachHangWindow(object sender, EventArgs e)
        {
            BtQuanLyKhachHang.IsEnabled = true;
        }

        private void BtQuanLyPhieuThu_Click(object sender, RoutedEventArgs e)
        {
            QuanLyPhieuThu quanLyPhieuThu = new QuanLyPhieuThu();
            quanLyPhieuThu.myEvent += new EventHandler(OnClosedQuanLyPhieuThuWindow);
            BtQuanLyPhieuThu.IsEnabled = false;
            quanLyPhieuThu.Show();
        }

        private void OnClosedQuanLyPhieuThuWindow(object sender, EventArgs e)
        {
            BtQuanLyPhieuThu.IsEnabled = true;
        }

        private void BtQuanLyHoaDon_Click(object sender, RoutedEventArgs e)
        {
            QuanLyHoaDon quanLyHoaDon = new QuanLyHoaDon();
            quanLyHoaDon.myEvent += new EventHandler(OnClosedQuanLyHoaDonWindow);
            BtQuanLyHoaDon.IsEnabled = false;
            quanLyHoaDon.Show();
        }

        private void OnClosedQuanLyHoaDonWindow(object sender, EventArgs e)
        {
            BtQuanLyHoaDon.IsEnabled = true;
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            BaoCaoTon baoCaoTon = new BaoCaoTon();
            baoCaoTon.myEvent += new EventHandler(OnClosedBaoCaoTonWindow);
            BtBaoCaoTon.IsEnabled = false;
            baoCaoTon.Show();
        }

        private void OnClosedBaoCaoTonWindow(object sender, EventArgs e)
        {
            BtBaoCaoTon.IsEnabled = true;
        }

        private void BtBaoCaoCongNo_Click(object sender, RoutedEventArgs e)
        {
            BaoCaoCongNo baoCaoCongNo = new BaoCaoCongNo();
            baoCaoCongNo.myEvent += new EventHandler(OnClosedBaoCaoCongNoWindow);
            BtBaoCaoCongNo.IsEnabled = false;
            baoCaoCongNo.Show();
        }

        private void OnClosedBaoCaoCongNoWindow(object sender, EventArgs e)
        {
            BtBaoCaoCongNo.IsEnabled = true;
        }

        private void Button_Click_7(object sender, RoutedEventArgs e)
        {
            QuanLyDauSach quanLyDauSach = new QuanLyDauSach();
            quanLyDauSach.myEvent += new EventHandler(OnClosedQuanLyDauSachWindow);
            BtQuanLyDauSach.IsEnabled = false;
            quanLyDauSach.Show();
        }

        private void OnClosedQuanLyDauSachWindow(object sender, EventArgs e)
        {
            BtQuanLyDauSach.IsEnabled = true;
        }

        private void Button_Click_8(object sender, RoutedEventArgs e)
        {
            ThayDoiQuyDinh thayDoiQuyDinh = new ThayDoiQuyDinh();
            thayDoiQuyDinh.myEvent += new EventHandler(OnClosedThayDoiQuyDinhWindow);
            BtThayDoiQuyDinh.IsEnabled = false;
            thayDoiQuyDinh.Show();
        }

        private void OnClosedThayDoiQuyDinhWindow(object sender, EventArgs e)
        {
            BtThayDoiQuyDinh.IsEnabled = true;
        }
    }
}
