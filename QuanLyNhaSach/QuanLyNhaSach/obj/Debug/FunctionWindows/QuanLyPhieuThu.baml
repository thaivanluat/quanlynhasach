   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   2    ,QuanLyNhaSach.FunctionWindows.QuanLyPhieuThu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Quản lý phiếu thu��5   	   $	��450��6#   $	��630��60    � 
ResizeMode$ NoResize=�6<    � WindowStartupLocation$ CenterScreen=�6R    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   �� $
��Left=�6   $
��Wrap=�6/   $��QUẢN LÝ PHIẾU THU��6C   $	��Top=�6\   $��24(�6t   $��	232,0,0,0q�6�   �� 5   
   $
��Left=�6   $	��347��60   $	��Top=�6=   $	��608��6U   $��	10,37,0,0q�6a   .@�5      �� $��Lập phiếu thu��6   .��5      � ���	#FFE5E5E5 � ColumnDefinitions 5      �� 5      $
��167* �6+   �� 5      $
��436* �6+   .+�5      �� $
��Left=�6    $
��Wrap=�6;   $��Mã khách hàng��6O   $	��Top=�6d   $��
130,10,0,0q�6|   $��2��6�   �� 5      -   5         ��Name$ textBoxMaKhachHang��5      $
��Left=�6:   $��23��6U   $��113.4,10,0,0q�6a    �� TextWrapping$
 Wrap=�6w   $	��Top=�6�   $	��179��6�   $��1��6�   �� 5      $
��Left=�6    $
��Wrap=�6;   $��Ngày lập phiếu thu��6O   $	��Top=�6i   $��
130,44,0,0q�6�   $��2��6�   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ 
datePicker��5   !   $
��Left=�65   $	��Top=�6P   $��113.4,38,0,0q�6h   $	��179��6~   $��14(�6�   	   Text$	 Chọn ngày nhập��6�   $��1��6�   �� 5      $
��Left=�6    $
��Wrap=�6;   $��Số tiền thu��6O   $	��Top=�6b   $��
130,71,0,0q�6z   $��2��6�   �� 5      -   5        $ textBoxSoTienThu��5      $
��Left=�68   $��23��6S   $��113.4,70,0,0q�6_   $
 Wrap=�6u   $	��Top=�6�   $	��179��6�   $��1��6�   �� 5      $
��Left=�6    $
��Wrap=�6;   $��Họ tên khách hàng��6O   $	��Top=�6h   $��
130,99,0,0q�6�   $��2��6�   �� 5      -   5        $ textBoxHoTen��5      $
��Left=�64   $��23��6O   $��113.4,98,0,0q�6[   $
 Wrap=�6q   $	��Top=�6�   $	��179��6�   {�.  $��1��6�   �� 5      $
��Left=�6    $
��Wrap=�6;   $��Điện thoại��6O   $	��Top=�6a   $��130,127,0,0q�6y   $��2��6�   �� 5      -   5        $ textBoxDienThoai��5      $
��Left=�68   $��23��6S   $��113.4,126,0,0q�6_   $
 Wrap=�6v   $	��Top=�6�   $	��179��6�   {�.  $��1��6�   �� 5      $
��Left=�6    $
��Wrap=�6;   $��Địa chỉ��6O   $	��Top=�6^   $��130,155,0,0q�6v   �� 5       -   5        $ textBoxDiaChi��5       $
��Left=�65   $��47��6P   $��113.4,154,0,0q�6\   $
 Wrap=�6s   $	��Top=�6�   $	��179��6�   {�.  $��1��6�   �� 5!      $
��Left=�6    $
��Wrap=�6;   $��Email��6O   $	��Top=�6\   $��130,207,0,0q�6t   �� 5"      -   5        $ textBoxEmail��5"      $
��Left=�64   $��23��6O   $��113.4,206,0,0q�6[   $
 Wrap=�6r   $	��Top=�6�   $	��179��6�   {�.  $��1��6�   �� 5#      $
��Left=�6    $
��Wrap=�6;   $��Tổng nợ��6O   $	��Top=�6^   $��130,235,0,0q�6v   $��2��6�   �� 5$      -   5        $ textBoxTongNo��5$      $
��Left=�66   $��23��6Q   $��113.4,234,0,0q�6]   $
 Wrap=�6t   $	��Top=�6�   $	��179��6�   {�.  $��1��6�   �� 5%      -	   5        $��Lập phiếu thu��5%      $
��Left=�65   $��113.8,287,0,0q�6P   $	��Top=�6g   $��84��6   $��1��6�   6�   5&      5'      �� 5(      $��Danh sách phiếu thu��6   .��5)      � ���	#FFE5E5E5 5*      �� 5+      $	��58* �6+   �� 5,      $
��545* �6+   .+�5.      &   System.Windows.Controls.DataGrid  -
   5        
  Name$
 dataGrid��5.      $
��Left=�61   $	��285��6L   $	��Top=�6Y   $	��592��6q   $��2��6}      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "   VerticalScrollBarVisibility$
 Auto=�6�      CanUserAddRows .     Columns 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã phiếu thu��61      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6x   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6G   �� *
MaPhieuThu+   	CellStyle 51   "   �� 52   &    �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6,   .�53   *   ��  �� Property � �� �� Value# [  54   !   55   '   57        58      $ Mã khách hàng��61    . $
 Auto 6z    6H   �� *MaKhachHang+ 59   "   �� 5:   &   "  6,   .�5;   *   ��  � ��# [  5<   !   5=   '   5?        5@      $ Ngày lập��61    . $
 Auto 6q    6C   �� *	NgayLap+ 5A   "   �� 5B   &   "  6,   .�5C   *   ��  � ��# [  5D   !   5E   '   5G        5H      $ Số tiền thu��61    . $
 Auto 6v    6F   �� *	SoTienThu+ 5I   "   �� 5J   &   "  6,   .�5K   *   ��  � ��# [  5L   !   5M   '   5O      5Q      �� 5R      -   5         ��Name$ BtTaiPhieuThu��5R      $��Tải phiếu thu��64   $
��Left=�6L   $��196.2,290,0,0q�6g   $	��Top=�6~   $��75��6�   $��1��6�   5S      5T      5U      �� 5V   
   -   5        $��Thoát��5V      $
��Left=�6!   $��521,389,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5W   
   -   5         ��Name$ textBlockQuyDinh��5W      $
��Left=�6.   $��
10,392,0,0q�6I   $
��Wrap=�6]   $��	TextBlock��6q   $	��Top=�6�   ���	#FFF42F2F6�   5Z      5[      