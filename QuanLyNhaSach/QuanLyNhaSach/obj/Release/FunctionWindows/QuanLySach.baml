   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  .    (QuanLyNhaSach.FunctionWindows.QuanLySach   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý sách��$	��550��$	��720�� � 
ResizeMode$ CanMinimize=� � WindowStyle$ 
ToolWindow=� � WindowStartupLocation$ CenterScreen=� � ShowInTaskbar .   � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��230��$��	10,88,0,0q�$	��Top=�$	��694��   AutoGenerateColumns .  $	   HorizontalScrollBarVisibility$
	 Auto=�"
   VerticalScrollBarVisibility$

 Auto=�   CanUserAddRows .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaSach+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ 
Tên sách�� . $
 Auto  �� *	TenSach+ �� "  .���  � ��# [    $ Thể loại�� . $
 Auto  �� *	TheLoai+ �� "  .���  � ��# [    $ Tên tác giả�� . $
 Auto  �� *	TenTacGia+ �� "  .���  � ��# [    $ Nhà xuất bản�� . $
 Auto  �� *
NhaXuatBan+ �� "  .���  � ��# [    $ Năm xuất bản�� . $
 Auto  �� *
NamXuatBan+ �� "  .���  � ��# [    $ Số lượng tồn�� . $
 Auto  �� *
SoLuongTon+ �� "  .���  � ��# [    $ Đơn giá bán�� . $
 Auto  �� *	DonGiaBan+ �� "  .���  � ��# [  �� $
��Left=�$��	10,67,0,0q�$
��Wrap=�$��Danh sách sách��$	��Top=�$	��694��$��14(� �� TextAlignment$ Center=��� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$��Quản lý sách��$	��Top=�$��42��$	��694��$ Center=�$��24(��� $
��Left=�$��
10,332,0,0q�$
��Wrap=�$��	Mã sách��$	��Top=��� -    ��Name$ textBoxMaSach��$
��Left=�$��23��$��
90,331,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��241��{�.  �� $
��Left=�$��
10,360,0,0q�$
��Wrap=�$��
Tên Sách��$	��Top=��� -   $ textBoxTenSach��$
��Left=�$��23��$��
90,359,0,0q�$
 Wrap=�$	��Top=�$	��241��{�.  �� -   $ textBoxTheLoai��$
��Left=�$��23��$��
90,387,0,0q�$
 Wrap=�$	��Top=�$	��241��{�.  �� $
��Left=�$��
10,388,0,0q�$
��Wrap=�$��Thể loại��$	��Top=��� -   $ textBoxTenTacGia��$
��Left=�$��23��$��
90,415,0,0q�$
 Wrap=�$	��Top=�$	��241��{�.  �� $
��Left=�$��
10,416,0,0q�$
��Wrap=�$��Tên tác giả��$	��Top=��� $
��Left=�$��363,333,0,0q�$
��Wrap=�$��Nhà xuất bản��$	��Top=��� -   $ textBoxNhaXuatBan��$
��Left=�$��23��$��462,332,0,0q�$
 Wrap=�$	��Top=�$	��241���� -   $ textBoxNamXuatBan��$
��Left=�$��23��$��462,359,0,0q�$
 Wrap=�$	��Top=�$	��241���� $
��Left=�$��363,419,0,0q�$
��Wrap=�$��Đơn giá bán��$	��Top=��� $
��Left=�$��363,391,0,0q�$
��Wrap=�$��Số lượng tồn��$	��Top=��� $
��Left=�$��363,363,0,0q�$
��Wrap=�$��Năm xuất bản��$	��Top=��� -   $ textBoxSoLuongTon��$
��Left=�$��23��$��462,387,0,0q�$
 Wrap=�$	��Top=�$	��241��{�.  �� -	   $ textBoxDonGiaBan��$
��Left=�$��23��$��462,415,0,0q�$
 Wrap=�$	��Top=�$	��241��{�.  �� -
   $��Thoát��$
��Left=�$��628,492,0,0q�$	��Top=�$��75���� -    ��Name$ 	BtCapNhap��$��Cập nhật��$
��Left=�$��
10,492,0,0q�$	��Top=�$��75��{�.  �� -   $ BtSua��$��Sửa��$
��Left=�$��
90,492,0,0q�$	��Top=�$��75���� -    ��Name$ comboBoxMaDauSach�� �� SelectedValuePath$ 	MaDauSach�� �� DisplayMemberPath$ 	MaDauSach��$
��Left=�$��
90,443,0,0q�$	��Top=�$	��136������ *	DauSach+�� $
��Left=�$��
10,449,0,0q�$
��Wrap=�$��Mã đầu sách��$	��Top=��� -   $ BtThem��$��Thêm��$
��Left=�$��170,492,0,0q�$	��Top=�$��75��