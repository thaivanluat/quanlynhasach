   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  3    -QuanLyNhaSach.FunctionWindows.QuanLyKhachHang   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý khách hàng��$	��600��$	��920�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��274��$��	10,99,0,0q�$	��Top=�$	��884��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�	   CanUserAddRows	 .  
   Columns
 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã khách hàng��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaKhachHang+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ 	Họ tên�� . $
 Auto  �� *HoTen+ �� "  .���  � ��# [    $ Địa chỉ�� . $
 Auto  �� *DiaChi+ �� "  .���  � ��# [    $ Điện thoại�� . $
 Auto  �� *	DienThoai+ �� "  .���  � ��# [    $ Email�� . $
 Auto  �� *Email+ �� "  .���  � ��# [    $ Tổng nợ�� . $
 Auto  �� *TongNo+ �� "  .���  � ��# [  4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Chọn��$
 Auto  �� *TrangThaiChon+�� $
��Left=�$��
256,10,0,0q�$
��Wrap=�$��QUẢN LÝ KHÁCH HÀNG��$	��Top=�$��43��$	��384��$��36(��� $
��Left=�$��
357,67,0,0q�$
��Wrap=�$��Danh sách khách hàng��$	��Top=�$��27��$	��184��$��18(��� $
��Left=�$��
10,391,0,0q�$
��Wrap=�$��Mã khách hàng��$	��Top=��� -    ��Name$ textBoxMaKhachHang��$
��Left=�$��23��$��134,390,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��250��{�.  �� -   $ textBoxHoTen��$
��Left=�$��23��$��134,419,0,0q�$
 Wrap=�$	��Top=�$	��250���� -   $ textBoxDiaChi��$
��Left=�$��65��$��134,446,0,0q�$
 Wrap=�$	��Top=�$	��250���� $
��Left=�$��471,391,0,0q�$
��Wrap=�$��Số điện thoại��$	��Top=��� $
��Left=�$��	9,447,0,0q�$
��Wrap=�$��Địa chỉ khách hàng��$	��Top=��� $
��Left=�$��
10,419,0,0q�$
��Wrap=�$��Họ tên khách hàng��$	��Top=��� -   $ textBoxTongNo��$
��Left=�$��23��$��571,447,0,0q�$
 Wrap=�$	��Top=�$	��250��{�.  �� -   $ textBoxDienThoai��$
��Left=�$��23��$��571,390,0,0q�$
 Wrap=�$	��Top=�$	��250���� -   $ textBoxEmail��$
��Left=�$��23��$��571,418,0,0q�$
 Wrap=�$	��Top=�$	��250���� $
��Left=�$��473,420,0,0q�$
��Wrap=�$��Email��$	��Top=��� $
��Left=�$��472,448,0,0q�$
��Wrap=�$��Tổng nợ��$	��Top=��� -   $��Thoát��$
��Left=�$��807,531,0,0q�$	��Top=�$��75���� -	    ��Name$ BtThem��$��Thêm��$
��Left=�$��
16,536,0,0q�$	��Top=�$��75���� -
   $��Sửa��$
��Left=�$��
96,536,0,0q�$	��Top=�$��75���� -   $
��Xóa��$
��Left=�$��176,536,0,0q�$	��Top=�$��75��