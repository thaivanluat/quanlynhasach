   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   1    +QuanLyNhaSach.FunctionWindows.QuanLyDauSach   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Quản lý đầu sách��5   	   $	��500��6"   $	��920��6/    � WindowStartupLocation$ CenterScreen=�6;    � 
ResizeMode$ NoResize=�6`    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   �� $
��Left=�6   $��
350,10,0,0q�6/   $
��Wrap=�6C   $��Quản lý đầu sách��6W   $	��Top=�6o   $��24(�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $	��300��6@   $��402,110,0,0q�6M   $	��Top=�6b   $	��502��6z      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "   VerticalScrollBarVisibility$
 Auto=�6�   	   CanUserAddRows	 .  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã đầu sách��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6j   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *	MaDauSach+   	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5      ��  �� Property � �� �� Value# [  5   !   5      5        5      $ Tên đầu sách��6%    . $
 Auto 6l    6;   �� *
TenDauSach+ 5      �� 5      "  6    .�5      ��  � ��# [  5   !   5      5        5       $ 
Tác giả��6%    . $
 Auto 6c    66   �� *TacGia+ 5!      �� 5"      "  6    .�5#      ��  � ��# [  5$   !   5%      5'        5(      $ Thể loại��6%    . $
 Auto 6h    67   �� *
TenTheLoai+ 5)      �� 5*      "  6    .�5+      ��  � ��# [  5,   !   5-      5/      4  .System.Windows.Controls.DataGridCheckBoxColumn  50      $ Chọn��6)   $
 Auto 6Y    67   �� *TrangThaiChon+6h   52      �� 53   
   $
��Left=�6   $��
589,87,0,0q�6/   $
��Wrap=�6C   $��Danh sách đầu sách��6W   $	��Top=�6q   $��14(�6�   �� 54   
   $
��Left=�6   $��
149,87,0,0q�6/   $
��Wrap=�6C   $��Thông tin đầu sách��6W   $	��Top=�6q   $��14(�6�   �� 55   
   -   5        $��Thêm��55      $
��Left=�6    $��402,415,0,0q�6;   $	��Top=�6P   $��75��6h   6s   �� 56   
   -   5        $��Sửa��56      $
��Left=�6   $��482,415,0,0q�6:   $	��Top=�6O   $��75��6g   6r   �� 57   
   -   5        $
��Xóa��57      $
��Left=�6   $��562,415,0,0q�6:   $	��Top=�6O   $��75��6g   6r   �� 58   
   $
��Left=�6   $��
27,115,0,0q�6/   $
��Wrap=�6C   $��Mã đầu sách��6W   $	��Top=�6j   �� 59   
   -   5         ��Name$ textBoxMaDauSach��59      $
��Left=�6,   $��23��6G   $��
98,114,0,0q�6S    �� TextWrapping$
 Wrap=�6g   $	��Top=�6{   $	��299��6�   {�.  6�   �� 5:   
   $
��Left=�6   $��
27,143,0,0q�6/   $
��Wrap=�6C   $��Tên đầu sách��6W   $	��Top=�6k   �� 5;   
   -   5        $ textBoxTenDauSach��5;      $
��Left=�6-   $��53��6H   $��
98,142,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��299��6�   �� 5<   
   $
��Left=�6   $��
27,201,0,0q�6/   $
��Wrap=�6C   $��Thể loại��6W   $	��Top=�6g   �� 5=   
   -   5         ��Name$ comboBoxTheLoai��5=       �� SelectedValuePath$ 	MaTheLoai��6L    �� DisplayMemberPath$ 
TenTheLoai��6j   $
��Left=�6�   $��
98,201,0,0q�6�   $	��Top=�6�   $	��299��6�   ��6,   �� *	TheLoai+6�   �� 5>   
   $
��Left=�6   $��
27,229,0,0q�6/   $
��Wrap=�6C   $��
Tác giả��6W   $	��Top=�6f     5?   
   -   5        $ dataGridTacGia��5?      $
��Left=�6+   $	��100��6F   $��
98,229,0,0q�6S   $	��Top=�6g   $	��299��6    .  $
 Auto=�6�   $
 Auto=�6�   	 .  
 5@        5A      $ Mã tác giả��6%    . $
 Auto 6h    69   �� *
MaTacGia+ 5B      �� 5C      "  6    .�5D      ��  � ��# [  5E   !   5F      5H        5I      $ Tên tác giả��6%    . $
 Auto 6j    6:   �� *	TenTacGia+ 5J      �� 5K      "  6    .�5L      ��  � ��# [  5M   !   5N      5P        5Q      $ 	Năm sinh��6%    . $
 Auto 6e    67   �� *	NamSinh+ 5R      �� 5S      "  6    .�5T      ��  � ��# [  5U   !   5V      5X        5Y      $ Chọn��6)   $
 Auto 6Y    67   �� *TrangThaiChon+6h   5[      �� 5\   
   -	   5        $��Thêm tác giả��5\      $
��Left=�6(   $��
98,334,0,0q�6C   $	��Top=�6W   $��75��6o   6z   �� 5]   
   -
   5        $��Xóa tác giả��5]      $
��Left=�6'   $��
98,359,0,0q�6B   $	��Top=�6V   $��75��6n   6y   �� 5^   
   -   5        $ comboBoxTacGia��5^      $ MaTacGia��6J   $ MaTacGiaTenTacGia��6g   $
��Left=�6�   $��249,334,0,0q�6�   $	��Top=�6�   $	��148��6�   ��6+   �� *TacGia+6�   �� 5_   
   $
��Left=�6   $��178,336,0,0q�6/   $
��Wrap=�6D   $��Chọn tác giả��6X   $	��Top=�6l   �� 5`   
   -   5         ��Name$ 	BtCapNhat��5`      $��Cập nhật��6$   $
��Left=�67   $��197,415,0,0q�6R   $	��Top=�6g   $��75��6   {�.  6�   �� 5a   
   -   5        $��Thoát��5a      $
��Left=�6!   $��829,415,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   5b      5c      