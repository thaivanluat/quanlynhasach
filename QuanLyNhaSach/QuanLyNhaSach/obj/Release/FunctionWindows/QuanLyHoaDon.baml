   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  0    *QuanLyNhaSach.FunctionWindows.QuanLyHoaDon   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý hóa đơn��$	��480��$	��720�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+��� $
��Left=�$
��Wrap=�$��QUẢN LÝ HÓA ĐƠN��$	��Top=�$��24(�$��
236,10,0,0q��� $
��Left=�$	��347��$	��Top=�$	��694��$��	10,37,0,0q�.@��� $��Lập hóa đơn��$��22��$��-2,-2,-1.6,0q�$	��Top=�.��� ���	#FFE5E5E5$��0,-5,-2.2,-2.4q� � ColumnDefinitions �� $��0* ��� .+��� $
��Left=�$
��Wrap=�$��Mã khách hàng��$	��Top=�$��9,11,0,0q�$��1��$��16��$��82���� -    ��Name$ textBoxMaKhachHang��$
��Left=�$��23��$��
114,10,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��179��$��1���� $
��Left=�$
��Wrap=�$��Ngày lập hóa đơn��$	��Top=�$��9,44,0,0q�$��1��$��16��$	��101��(  "System.Windows.Controls.DatePicker  -     Name$ 
datePicker��$
��Left=�$	��Top=�$��
114,38,0,0q�$	��179��$��14(�	   Text$	 Chọn ngày nhập��$��1��$��27���� $
��Left=�$
��Wrap=�$��Tổng tiền��$	��Top=�$��9,71,0,0q�$��1��$��16��$��55���� -   $ textBoxTongTien��$
��Left=�$��23��$��
114,70,0,0q�$
 Wrap=�$	��Top=�$	��179��$��1��$��0��{�.  �� $
��Left=�$
��Wrap=�$��Số tiền trả��$	��Top=�$��	10,99,0,0q�$��1��$��16��$��55���� -   $ textBoxSoTienTra��$
��Left=�$��23��$��
114,98,0,0q�$
 Wrap=�$	��Top=�$	��179��$��1���� $
��Left=�$
��Wrap=�$��
Còn lại��$	��Top=�$��
10,130,0,0q�$��1��$��16��$��55���� -   $ textBoxConLai��$
��Left=�$��23��$��114,126,0,0q�$
 Wrap=�$	��Top=�$	��179��$��1��{�.  �� $
��Left=�$
��Wrap=�$��Họ tên khách hàng��$	��Top=�$��	9,154,0,0q�$��1��$��16��$	��101���� -   $ textBoxHoTen��$
��Left=�$��23��$��115,154,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Điện thoại��$	��Top=�$��
10,182,0,0q�$��1��$��16��$��55���� -   $ textBoxDienThoai��$
��Left=�$��23��$��114,182,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Địa chỉ��$	��Top=�$��
10,238,0,0q�$��1��$��16��$��69���� -   $ textBoxDiaChi��$
��Left=�$��47��$��115,238,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Email��$	��Top=�$��
10,211,0,0q�$��1��$��16��$��29���� -	   $ textBoxEmail��$
��Left=�$��23��$��115,210,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Tổng nợ��$	��Top=�$��
10,291,0,0q�$��1��$��16��$��45���� -
   $ textBoxTongNo��$
��Left=�$��23��$��115,290,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $��2��$
��Left=�$��
440,10,0,0q�$
��Wrap=�$��Danh sách mua sách��$	��Top=�$	��116��&   System.Windows.Controls.DataGrid  -   
  Name$
 dataGridDanhSachSach��$
��Left=�$	��203��$	��Top=�$	��365��$��2��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�   CanUserAddRows .  $��
316,31,0,0q�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaSach+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ 
Tên sách�� . $
 Auto  �� *	TenSach+ �� "  .���  � ��# [    $ Số lượng�� . $
 Auto  �� *	SoLuong+ �� "  .���  � ��# [    $ 
Đơn giá�� . $
 Auto  �� *	DonGiaBan+ �� "  .���  � ��# [    $ Thể loại�� . $
 Auto  �� *	TheLoai+ �� "  .���  � ��# [    $ Nhà xuất bản�� . $
 Auto  �� *
NhaXuatBan+ �� "  .���  � ��# [    $ 
Tác Giả�� . $
 Auto  �� *TacGia+ �� "  .���  � ��# [  4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Chọn��$
 Auto  �� *TrangThaiChon+�� -   $��2��$��Thêm��$
��Left=�$��316,295,0,0q�$	��Top=�$��75���� -   $��2��$
��Xóa��$
��Left=�$��398,295,0,0q�$	��Top=�$��75���� -   $��2��$��Lập hóa đơn��$
��Left=�$��586,296,0,0q�$	��Top=�$��95���� -   $ textBoxNhapMaSach��$��2��$
��Left=�$��23��$��398,238,0,0q�$
 Wrap=�$	��Top=�$��75��{�.  �� $��2��$
��Left=�$��316,238,0,0q�$
��Wrap=�$��Nhập mã sách��$	��Top=��� $��2��$
��Left=�$��493,241,0,0q�$
��Wrap=�$��Nhập số lượng��$	��Top=��� -   $ textBoxSoLuong��$��2��$
��Left=�$��23��$��586,238,0,0q�$
 Wrap=�$	��Top=�$��75��{�.  �� $��Danh sách hóa đơn��.��� ���	#FFE5E5E5$��0,0,-0.2,-14.8q� �� $��0* ��� .+�  -   $
 dataGrid��$
��Left=�$	��276��$	��Top=�$	��679��$��2�� .  $
 Auto=�$
 Auto=� .     $ Mã hóa đơn�� . $
 Auto  �� *
MaHoaDon+ �� "  .���  � ��# [    $ Ngày lập�� . $
 Auto  �� *	NgayLap+ �� "  .���  � ��# [    $ Mã khách hàng�� . $
 Auto  �� *MaKhachHang+ �� "  .���  � ��# [    $ Tổng tiền�� . $
 Auto  �� *
TongTien+ �� "  .���  � ��# [    $ Số tiền trả�� . $
 Auto  �� *	SoTienTra+ �� "  .���  � ��# [    $ 
Còn lại�� . $
 Auto  �� *ConLai+ �� "  .���  � ��# [  �� -   $��2��$!��Tải danh sách hóa đơn��$
��Left=�$��283,293,0,0q�$	��Top=�$	��129���� -   $��Thoát��$
��Left=�$��614,407,0,0q�$	��Top=�$��75���� -    ��Name$ textBlockTongNoToiDa��$
��Left=�$��
10,389,0,0q�$
��Wrap=�$��	TextBlock��$	��Top=����	#FFF42F2F�� -   $' !textBlockSoLuongSauKhiBanToiThieu��$
��Left=�$��
10,410,0,0q�$
��Wrap=�$��	TextBlock��$	��Top=����	#FFF42F2F