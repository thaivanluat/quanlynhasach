   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   .    (QuanLyNhaSach.FunctionWindows.QuanLySach   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Quản lý sách��5   	   $	��550��6   $	��720��6+    � 
ResizeMode$ CanMinimize=�67    � WindowStyle$ 
ToolWindow=�6P    � WindowStartupLocation$ CenterScreen=�6i    � ShowInTaskbar .   � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5      $
��Left=�6%   $	��230��6@   $��	10,88,0,0q�6M   $	��Top=�6`   $	��694��6x      AutoGenerateColumns .  $	   HorizontalScrollBarVisibility$
	 Auto=�6�   "
   VerticalScrollBarVisibility$

 Auto=�6�      CanUserAddRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *MaSach+   	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5      ��  �� Property � �� �� Value# [  5   !   5      5        5      $ 
Tên sách��6%    . $
 Auto 6e    67   �� *	TenSach+ 5      �� 5      "  6    .�5      ��  � ��# [  5   !   5      5        5      $ Thể loại��6%    . $
 Auto 6e    67   �� *	TheLoai+ 5       �� 5!      "  6    .�5"      ��  � ��# [  5#   !   5$      5&        5'      $ Tên tác giả��6%    . $
 Auto 6j    6:   �� *	TenTacGia+ 5(      �� 5)      "  6    .�5*      ��  � ��# [  5+   !   5,      5.        5/      $ Nhà xuất bản��6%    . $
 Auto 6l    6;   �� *
NhaXuatBan+ 50      �� 51      "  6    .�52      ��  � ��# [  53   !   54      56        57      $ Năm xuất bản��6%    . $
 Auto 6l    6;   �� *
NamXuatBan+ 58      �� 59      "  6    .�5:      ��  � ��# [  5;   !   5<      5>        5?      $ Số lượng tồn��6%    . $
 Auto 6l    6;   �� *
SoLuongTon+ 5@      �� 5A      "  6    .�5B      ��  � ��# [  5C   !   5D      5F        5G      $ Đơn giá bán��6%    . $
 Auto 6j    6:   �� *	DonGiaBan+ 5H      �� 5I      "  6    .�5J      ��  � ��# [  5K   !   5L      5N      5P      �� 5Q   
   $
��Left=�6   $��	10,67,0,0q�6/   $
��Wrap=�6B   $��Danh sách sách��6V   $	��Top=�6l   $	��694��6�   $��14(�6�    �� TextAlignment$ Center=�6�   �� 5R   
   $
��Left=�6   $��	10,10,0,0q�6/   $
��Wrap=�6B   $��Quản lý sách��6V   $	��Top=�6j   $��42��6�   $	��694��6�   $ Center=�6�   $��24(�6�   �� 5S   
   $
��Left=�6   $��
10,332,0,0q�6/   $
��Wrap=�6C   $��	Mã sách��6W   $	��Top=�6f   �� 5T   
   -   5         ��Name$ textBoxMaSach��5T      $
��Left=�6)   $��23��6D   $��
90,331,0,0q�6P    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��241��6�   {�.  6�   �� 5U   
   $
��Left=�6   $��
10,360,0,0q�6/   $
��Wrap=�6C   $��
Tên Sách��6W   $	��Top=�6g   �� 5V   
   -   5        $ textBoxTenSach��5V      $
��Left=�6*   $��23��6E   $��
90,359,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��241��6�   {�.  6�   �� 5W   
   -   5        $ textBoxTheLoai��5W      $
��Left=�6*   $��23��6E   $��
90,387,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��241��6�   {�.  6�   �� 5X   
   $
��Left=�6   $��
10,388,0,0q�6/   $
��Wrap=�6C   $��Thể loại��6W   $	��Top=�6g   �� 5Y   
   -   5        $ textBoxTenTacGia��5Y      $
��Left=�6,   $��23��6G   $��
90,415,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��241��6�   {�.  6�   �� 5Z   
   $
��Left=�6   $��
10,416,0,0q�6/   $
��Wrap=�6C   $��Tên tác giả��6W   $	��Top=�6j   �� 5[   
   $
��Left=�6   $��363,333,0,0q�6/   $
��Wrap=�6D   $��Nhà xuất bản��6X   $	��Top=�6l   �� 5\   
   -   5        $ textBoxNhaXuatBan��5\      $
��Left=�6-   $��23��6H   $��462,332,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��241��6�   �� 5]   
   -   5        $ textBoxNamXuatBan��5]      $
��Left=�6-   $��23��6H   $��462,359,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��241��6�   �� 5^   
   $
��Left=�6   $��363,419,0,0q�6/   $
��Wrap=�6D   $��Đơn giá bán��6X   $	��Top=�6k   �� 5_   
   $
��Left=�6   $��363,391,0,0q�6/   $
��Wrap=�6D   $��Số lượng tồn��6X   $	��Top=�6l   �� 5`   
   $
��Left=�6   $��363,363,0,0q�6/   $
��Wrap=�6D   $��Năm xuất bản��6X   $	��Top=�6l   �� 5a   
   -   5        $ textBoxSoLuongTon��5a      $
��Left=�6-   $��23��6H   $��462,387,0,0q�6T   $
 Wrap=�6i   $	��Top=�6}   $	��241��6�   {�.  6�   �� 5b   
   -	   5        $ textBoxDonGiaBan��5b      $
��Left=�6,   $��23��6G   $��462,415,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��241��6�   {�.  6�   �� 5c   
   -
   5        $��Thoát��5c      $
��Left=�6!   $��628,492,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5d   
   -   5         ��Name$ 	BtCapNhap��5d      $��Cập nhật��6$   $
��Left=�67   $��
10,492,0,0q�6R   $	��Top=�6f   $��75��6~   {�.  6�   �� 5e   
   -   5        $��Sửa��5e      $
��Left=�6   $��
90,492,0,0q�6:   $	��Top=�6N   $��75��6f   6q   �� 5f   
   -   5         ��Name$ comboBoxMaDauSach��5f       �� SelectedValuePath$ 	MaDauSach��6N    �� DisplayMemberPath$ 	MaDauSach��6l   $
��Left=�6�   $��
90,443,0,0q�6�   $	��Top=�6�   $	��136��6�   ��6.   �� *	DauSach+6�   �� 5g   
   $
��Left=�6   $��
10,449,0,0q�6/   $
��Wrap=�6C   $��Mã đầu sách��6W   $	��Top=�6j   �� 5h   
   -   5        $ BtThem��5h      $��Thêm��6!   $
��Left=�60   $��170,492,0,0q�6K   $	��Top=�6`   $��75��6x   6�   5j      5k      