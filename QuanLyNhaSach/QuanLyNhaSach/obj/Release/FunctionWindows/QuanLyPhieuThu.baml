   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  2    ,QuanLyNhaSach.FunctionWindows.QuanLyPhieuThu   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý phiếu thu��$	��450��$	��630�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+��� $
��Left=�$
��Wrap=�$��QUẢN LÝ PHIẾU THU��$	��Top=�$��24(�$��	232,0,0,0q��� $
��Left=�$	��347��$	��Top=�$	��608��$��	10,37,0,0q�.@��� $��Lập phiếu thu��.��� ���	#FFE5E5E5 � ColumnDefinitions �� $
��167* ��� $
��436* �.+��� $
��Left=�$
��Wrap=�$��Mã khách hàng��$	��Top=�$��
130,10,0,0q�$��2���� -    ��Name$ textBoxMaKhachHang��$
��Left=�$��23��$��113.4,10,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��179��$��1���� $
��Left=�$
��Wrap=�$��Ngày lập phiếu thu��$	��Top=�$��
130,44,0,0q�$��2��(  "System.Windows.Controls.DatePicker  -     Name$ 
datePicker��$
��Left=�$	��Top=�$��113.4,38,0,0q�$	��179��$��14(�	   Text$	 Chọn ngày nhập��$��1���� $
��Left=�$
��Wrap=�$��Số tiền thu��$	��Top=�$��
130,71,0,0q�$��2���� -   $ textBoxSoTienThu��$
��Left=�$��23��$��113.4,70,0,0q�$
 Wrap=�$	��Top=�$	��179��$��1���� $
��Left=�$
��Wrap=�$��Họ tên khách hàng��$	��Top=�$��
130,99,0,0q�$��2���� -   $ textBoxHoTen��$
��Left=�$��23��$��113.4,98,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Điện thoại��$	��Top=�$��130,127,0,0q�$��2���� -   $ textBoxDienThoai��$
��Left=�$��23��$��113.4,126,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Địa chỉ��$	��Top=�$��130,155,0,0q��� -   $ textBoxDiaChi��$
��Left=�$��47��$��113.4,154,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Email��$	��Top=�$��130,207,0,0q��� -   $ textBoxEmail��$
��Left=�$��23��$��113.4,206,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� $
��Left=�$
��Wrap=�$��Tổng nợ��$	��Top=�$��130,235,0,0q�$��2���� -   $ textBoxTongNo��$
��Left=�$��23��$��113.4,234,0,0q�$
 Wrap=�$	��Top=�$	��179��{�.  $��1���� -	   $��Lập phiếu thu��$
��Left=�$��113.8,287,0,0q�$	��Top=�$��84��$��1���� $��Danh sách phiếu thu��.��� ���	#FFE5E5E5 �� $	��58* ��� $
��545* �.+�&   System.Windows.Controls.DataGrid  -
   
  Name$
 dataGrid��$
��Left=�$	��285��$	��Top=�$	��592��$��2��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�   CanUserAddRows .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã phiếu thu��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
MaPhieuThu+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ Mã khách hàng�� . $
 Auto  �� *MaKhachHang+ �� "  .���  � ��# [    $ Ngày lập�� . $
 Auto  �� *	NgayLap+ �� "  .���  � ��# [    $ Số tiền thu�� . $
 Auto  �� *	SoTienThu+ �� "  .���  � ��# [  �� -    ��Name$ BtTaiPhieuThu��$��Tải phiếu thu��$
��Left=�$��196.2,290,0,0q�$	��Top=�$��75��$��1���� -   $��Thoát��$
��Left=�$��521,389,0,0q�$	��Top=�$��75���� -    ��Name$ textBlockQuyDinh��$
��Left=�$��
10,392,0,0q�$
��Wrap=�$��	TextBlock��$	��Top=����	#FFF42F2F