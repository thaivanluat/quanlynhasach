   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   4    .QuanLyNhaSach.FunctionWindows.LapPhieuNhapSach   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	   -   5          �Name$  closing��5   	    � Title$  Lập phiếu nhập sách��5   	    � 
ResizeMode$ CanMinimize=�6%   $	��600��6>   $	��920��6K    � WindowStyle$ 
ToolWindow=�6W    � WindowStartupLocation$ CenterScreen=�6p    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   �� $
��Left=�6   $
��Wrap=�6/   $ ��LẬP PHIẾU NHẬP SÁCH��6C   $	��Top=�6^   $��	10,10,0,0q�6v   $��70��6�   $	��893��6�   $��36(�6�    �� TextAlignment$ Center=�6�   �� 5   
   $
��Left=�6   $
��Wrap=�6/   $��Ngày nhập:��6C   $	��Top=�6U   $��	10,85,0,0q�6m   $��14(�6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ 
datePicker��5      $
��Left=�6)   $	��Top=�6D   $��	86,85,0,0q�6\   $	��160��6o   $��14(�6{   	   Text$	 Chọn ngày nhập��6�   �� 5   
   $
��Left=�6   $
��Wrap=�6/   $��Tổng tiền:��6C   $	��Top=�6U   $��660,491,0,0q�6m   $��14(�6�   �� 5   
   -   5        
 ��Name$
 textBoxTongTien��5      $
��Left=�6+   $��23��6F   $��727,492,0,0q�6R    �� TextWrapping$
 Wrap=�6g   $��0��6{   $	��Top=�6�   $	��176��6�   {�.  6�   �� 5   
   $
��Left=�6   $��919,606,0,-51.6q�6/   $
��Wrap=�6H   $��	TextBlock��6\   $	��Top=�6m   �� 5   
   -   5        $��Thoát��5      $
��Left=�6!   $��828,526,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5   
   -   5        $
��Xóa��5      $
��Left=�6   $��250,492,0,0q�6:   $	��Top=�6O   $��75��6g   6r   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $	��356��6@   $��250,131,0,0q�6M   $	��Top=�6b   $	��653��6z      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "   VerticalScrollBarVisibility$
 Auto=�6�      CanUserAddRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��6%      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *MaSach+6e     5      $ 
Tên sách��6%    .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6e    67   �� *	TenSach+6e     5      $ Thể Loại��6%    . $
 Auto 6e    67   �� *	TheLoai+6e     5      $ 
Tác Giả��6%    . $
 Auto 6c    66   �� *TacGia+6c     5      $ Số lượng tồn��6%    . $
 Auto 6l    6;   �� *
SoLuongTon+6l     5      $ Số lượng��6%    . $
 Auto 6e    67   �� *	SoLuong+6t     5      $ Đơn giá nhập��6%    . $
 Auto 6l    6;   �� *
DonGiaNhap+6{     5      $ Thành tiền��6%    . $
 Auto 6i    69   �� *	ThanhTien+6i   5       �� 5!   
   -   5         ��Name$ BtThem��5!      $��Thêm��6!   $
��Left=�60   $��
70,490,0,0q�6K   $	��Top=�6_   $��75��6w   {�.  6�   �� 5"   
   -   5        $
��Lưu��5"      $
��Left=�6   $��748,526,0,0q�6:   $	��Top=�6O   $��75��6g   6r   �� 5#   
   $
��Left=�6   $��
455,99,0,0q�6/   $
��Wrap=�6C   $��Danh sách nhập sách��6W   $	��Top=�6r   $��27��6�   $	��202��6�   $��18(�6�   $ Center=�6�   �� 5$   
   $
��Left=�6   $��
71,117,0,0q�6/   $
��Wrap=�6C   $��Chi tiết nhập sách��6W   $	��Top=�6q   $��14(�6�   �� 5%   
   $
��Left=�6   $��
10,158,0,0q�6/   $
��Wrap=�6C   $��	Mã sách��6W   $	��Top=�6f   �� 5&   
   -	   5         ��Name$ comboBoxMaSach��5&       �� SelectedValuePath$ MaSach��6X    �� DisplayMemberPath$ MaSach��6s   $
��Left=�6�   $��
70,158,0,0q�6�   $	��Top=�6�   $��95��6�   ��6+   �� *ChiTietPhieuNhapSach+6�   �� 5'   
   -
   5        $
 textBoxTenSach��5'      $
��Left=�6*   $��46��6E   $��
70,186,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��175��6�   {�.  6�   �� 5(   
   $
��Left=�6   $��
10,187,0,0q�6/   $
��Wrap=�6C   $��
Tên sách��6W   $	��Top=�6g   �� 5)   
   -   5        $
 textBoxTheLoai��5)      $
��Left=�6*   $��23��6E   $��
70,237,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��175��6�   {�.  6�   �� 5*   
   -   5        $
 textBoxTacGia��5*      $
��Left=�6)   $��46��6D   $��
70,265,0,0q�6P   $
 Wrap=�6d   $	��Top=�6x   $	��175��6�   {�.  6�   �� 5+   
   -   5        $
 textBoxSoLuongTon��5+      $
��Left=�6-   $��23��6H   $��
71,316,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��175��6�   {�.  6�   �� 5,   
   -   5        $
 textBoxSoLuong��5,      $
��Left=�6*   $��23��6E   $��
70,344,0,0q�6Q   $
 Wrap=�6e   $��0��6y   $	��Top=�6�   $	��175��6�   6�   �� 5-   
   -   5        $
 textBoxDonGiaNhap��5-      $
��Left=�6-   $��23��6H   $��
71,372,0,0q�6T   $
 Wrap=�6h   $��0��6|   $	��Top=�6�   $	��175��6�   6�   �� 5.   
   -   5        $
 textBoxThanhTien��5.      $
��Left=�6,   $��23��6G   $��
70,400,0,0q�6S   $
 Wrap=�6g   $��0��6{   $	��Top=�6�   $	��175��6�   {�.  6�   �� 5/   
   $
��Left=�6   $��
10,238,0,0q�6/   $
��Wrap=�6C   $��Thể loại��6W   $	��Top=�6g   �� 50   
   $
��Left=�6   $��
10,266,0,0q�6/   $
��Wrap=�6C   $��
Tác giả��6W   $	��Top=�6f   �� 51   
   $
��Left=�6   $��	9,320,0,0q�6/   $
��Wrap=�6B   $��Số lượng tồn��6V   $	��Top=�6j   $��56��6�   $��9(�6�   �� 52   
   $
��Left=�6   $��
10,348,0,0q�6/   $
��Wrap=�6C   $��Số lượng nhập��6W   $	��Top=�6l   $��9(�6�   �� 53   
   $
��Left=�6   $��
10,376,0,0q�6/   $
��Wrap=�6C   $��Đơn giá nhập��6W   $	��Top=�6k   $��9(�6�   �� 54   
   $
��Left=�6   $��	9,401,0,0q�6/   $
��Wrap=�6B   $��Thành tiền��6V   $	��Top=�6h   �� 55   
   -   5         ��Name$" textBlockSoLuongNhapToiThieu��55      $
��Left=�6:   $��
10,514,0,0q�6U   $
��Wrap=�6i   $��	TextBlock��6}   $	��Top=�6�   $	��315��6�   ���	#FFF42F2F6�   �� 56   
   -   5        $$ textBlockSoLuongTonDeNhapToiDa��56      $
��Left=�6<   $��
10,535,0,0q�6W   $
��Wrap=�6k   $��	TextBlock��6   $	��Top=�6�   $	��315��6�   ���	#FFF42F2F6�   57      58      