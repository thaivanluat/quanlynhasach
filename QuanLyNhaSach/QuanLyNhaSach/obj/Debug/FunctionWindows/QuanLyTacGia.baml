   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   0    *QuanLyNhaSach.FunctionWindows.QuanLyTacGia   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Quản lý tác giả��5   	   $	��350��6!   $	��500��6.    � 
ResizeMode$ CanMinimize=�6:    � WindowStyle$ 
ToolWindow=�6S    � WindowStartupLocation$ CenterScreen=�6l    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5      $
��Left=�6%   $	��129��6@   $��7,74,0,0q�6M   $	��Top=�6_   $	��471��6w      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "	   VerticalScrollBarVisibility$
	 Auto=�6�   
   CanUserAddRows
 .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã tác giả��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6h   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *
MaTacGia+   	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5      ��  �� Property � �� �� Value# [  5   !   5      5        5      $ Tên tác giả��6%    . $
 Auto 6j    6:   �� *	TenTacGia+ 5      �� 5      "  6    .�5      ��  � ��# [  5   !   5      5        5      $ 	Năm sinh��6%    . $
 Auto 6e    67   �� *	NamSinh+ 5       �� 5!      "  6    .�5"      ��  � ��# [  5#   !   5$      5&      4  .System.Windows.Controls.DataGridCheckBoxColumn  5'      $ Chọn��6)   $
 Auto 6Y    67   �� *TrangThaiChon+6h   5)      �� 5*   
   $
��Left=�6   $��
17,209,0,0q�6/   $
��Wrap=�6C   $��Mã tác giả��6W   $	��Top=�6i   �� 5+   
   -   5         ��Name$ textBoxMaTacGia��5+      $
��Left=�6+   $��23��6F   $��
87,208,0,0q�6R    �� TextWrapping$
 Wrap=�6f   $	��Top=�6z   $	��120��6�   {�.  6�   �� 5,   
   $
��Left=�6   $��
17,237,0,0q�6/   $
��Wrap=�6C   $��Tên tác giả��6W   $	��Top=�6j   �� 5-   
   -   5        $ textBoxTenTacGia��5-      $
��Left=�6,   $��23��6G   $��
87,236,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��120��6�   �� 5.   
   $
��Left=�6   $��
17,265,0,0q�6/   $
��Wrap=�6C   $��	Năm sinh��6W   $	��Top=�6g   �� 5/   
   -   5        $ textBoxNamSinh��5/      $
��Left=�6*   $��23��6E   $��
87,264,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��120��6�   �� 50   
   -   5        $
��Xóa��50      $
��Left=�6   $��170,292,0,0q�6:   $	��Top=�6O   $��75��6g   6r   �� 51   
   -   5        $��Sửa��51      $
��Left=�6   $��
90,292,0,0q�6:   $	��Top=�6N   $��75��6f   6q   �� 52   
   -   5         ��Name$ BtThem��52      $��Thêm��6!   $
��Left=�60   $��
10,292,0,0q�6K   $	��Top=�6_   $��75��6w   6�   �� 53   
   -   5        $��Thoát��53      $
��Left=�6!   $��409,292,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 54   
   $
��Left=�6   $��	10,10,0,0q�6/   $
��Wrap=�6B   $��QUẢN LÝ TÁC GIẢ��6V   $	��Top=�6m   $	��474��6�   $��38��6�   $��14(�6�    �� TextAlignment$ Center=�6�   �� 55   
   $
��Left=�6   $��7,53,0,0q�6/   $
��Wrap=�6A   $��Danh sách tác giả��6U   $	��Top=�6n   $	��474��6�   $ Center=�6�   56      57      