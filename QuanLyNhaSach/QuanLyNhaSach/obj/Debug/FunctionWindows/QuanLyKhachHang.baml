   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   3    -QuanLyNhaSach.FunctionWindows.QuanLyKhachHang   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Quản lý khách hàng��5   	   $	��600��6$   $	��920��61    � 
ResizeMode$ NoResize=�6=    � WindowStartupLocation$ CenterScreen=�6S    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5      $
��Left=�6%   $	��274��6@   $��	10,99,0,0q�6M   $	��Top=�6`   $	��884��6x      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "   VerticalScrollBarVisibility$
 Auto=�6�   	   CanUserAddRows	 .  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã khách hàng��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6n   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6<   �� *MaKhachHang+   	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5      ��  �� Property � �� �� Value# [  5   !   5      5        5      $ 	Họ tên��6%    . $
 Auto 6a    65   �� *HoTen+ 5      �� 5      "  6    .�5      ��  � ��# [  5   !   5      5        5      $ Địa chỉ��6%    . $
 Auto 6c    66   �� *DiaChi+ 5       �� 5!      "  6    .�5"      ��  � ��# [  5#   !   5$      5&        5'      $ Điện thoại��6%    . $
 Auto 6i    69   �� *	DienThoai+ 5(      �� 5)      "  6    .�5*      ��  � ��# [  5+   !   5,      5.        5/      $ Email��6%    . $
 Auto 6`    64   �� *Email+ 50      �� 51      "  6    .�52      ��  � ��# [  53   !   54      56        57      $ Tổng nợ��6%    . $
 Auto 6c    66   �� *TongNo+ 58      �� 59      "  6    .�5:      ��  � ��# [  5;   !   5<      5>      4  .System.Windows.Controls.DataGridCheckBoxColumn  5?      $ Chọn��6)   $
 Auto 6Y    67   �� *TrangThaiChon+6h   5A      �� 5B   
   $
��Left=�6   $��
256,10,0,0q�6/   $
��Wrap=�6C   $��QUẢN LÝ KHÁCH HÀNG��6W   $	��Top=�6q   $��43��6�   $	��384��6�   $��36(�6�   �� 5C   
   $
��Left=�6   $��
357,67,0,0q�6/   $
��Wrap=�6C   $��Danh sách khách hàng��6W   $	��Top=�6s   $��27��6�   $	��184��6�   $��18(�6�   �� 5D   
   $
��Left=�6   $��
10,391,0,0q�6/   $
��Wrap=�6C   $��Mã khách hàng��6W   $	��Top=�6l   �� 5E   
   -   5         ��Name$ textBoxMaKhachHang��5E      $
��Left=�6.   $��23��6I   $��134,390,0,0q�6U    �� TextWrapping$
 Wrap=�6j   $	��Top=�6~   $	��250��6�   {�.  6�   �� 5F   
   -   5        $ textBoxHoTen��5F      $
��Left=�6(   $��23��6C   $��134,419,0,0q�6O   $
 Wrap=�6d   $	��Top=�6x   $	��250��6�   �� 5G   
   -   5        $ textBoxDiaChi��5G      $
��Left=�6)   $��65��6D   $��134,446,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��250��6�   �� 5H   
   $
��Left=�6   $��471,391,0,0q�6/   $
��Wrap=�6D   $��Số điện thoại��6X   $	��Top=�6m   �� 5I   
   $
��Left=�6   $��	9,447,0,0q�6/   $
��Wrap=�6B   $��Địa chỉ khách hàng��6V   $	��Top=�6p   �� 5J   
   $
��Left=�6   $��
10,419,0,0q�6/   $
��Wrap=�6C   $��Họ tên khách hàng��6W   $	��Top=�6p   �� 5K   
   -   5        $ textBoxTongNo��5K      $
��Left=�6)   $��23��6D   $��571,447,0,0q�6P   $
 Wrap=�6e   $	��Top=�6y   $	��250��6�   {�.  6�   �� 5L   
   -   5        $ textBoxDienThoai��5L      $
��Left=�6,   $��23��6G   $��571,390,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��250��6�   �� 5M   
   -   5        $ textBoxEmail��5M      $
��Left=�6(   $��23��6C   $��571,418,0,0q�6O   $
 Wrap=�6d   $	��Top=�6x   $	��250��6�   �� 5N   
   $
��Left=�6   $��473,420,0,0q�6/   $
��Wrap=�6D   $��Email��6X   $	��Top=�6e   �� 5O   
   $
��Left=�6   $��472,448,0,0q�6/   $
��Wrap=�6D   $��Tổng nợ��6X   $	��Top=�6g   �� 5P   
   -   5        $��Thoát��5P      $
��Left=�6!   $��807,531,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5Q   
   -	   5         ��Name$ BtThem��5Q      $��Thêm��6!   $
��Left=�60   $��
16,536,0,0q�6K   $	��Top=�6_   $��75��6w   6�   �� 5R   
   -
   5        $��Sửa��5R      $
��Left=�6   $��
96,536,0,0q�6:   $	��Top=�6N   $��75��6f   6q   �� 5S   
   -   5        $
��Xóa��5S      $
��Left=�6   $��176,536,0,0q�6:   $	��Top=�6O   $��75��6g   6r   5T      5U      