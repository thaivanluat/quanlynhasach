   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   -    'QuanLyNhaSach.FunctionWindows.BaoCaoTon   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Báo cáo tồn��5   	   $	��500��6   $	��630��6*    � WindowStartupLocation$ CenterScreen=�66    � 
ResizeMode$ NoResize=�6[    � 	Resources 5	         clBr �� Color��%+   &	        �� 5
   
   $ #ecf0f1��6'   5      .��5      � ���	#FFECF0F1.+�5   
   �� -   5         ��Name$ comboBoxNam��5      $
��Left=�6(   $��	61,66,0,0q�6C   $	��Top=�6V   $��70��6n   �� 5   
   -   5        $ comboBoxThang��5      $
��Left=�6*   $��
194,66,0,0q�6E   $	��Top=�6Y   $��50��6q   �� 5   
   $
��Left=�6   $��
235,10,0,0q�6/   $
��Wrap=�6C   $��Báo cáo tồn��6W   $	��Top=�6j   $	��136��6�   $��24(�6�   �� 5   
   $
��Left=�6   $��	22,69,0,0q�6/   $
��Wrap=�6B   $
��Năm��6V   $	��Top=�6a   �� 5   
   $
��Left=�6   $��
146,69,0,0q�6/   $
��Wrap=�6C   $��Tháng��6W   $	��Top=�6d   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGrid��5      $
��Left=�6%   $	��330��6@   $��
10,103,0,0q�6M   $	��Top=�6a   $	��591��6y      AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�6�   "	   VerticalScrollBarVisibility$
	 Auto=�6�   
   CanUserAddRows
 .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6c   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *MaSach+   	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    .�5      ��  �� Property � �� �� Value# [  5   !   5      5        5      $ 
Tên sách��6%    . $
 Auto 6e    67   �� *	TenSach+ 5      �� 5      "  6    .�5      ��  � ��# [  5    !   5!      5#        5$      $ Tồn đầu��6%    . $
 Auto 6c    66   �� *TonDau+ 5%      �� 5&      "  6    .�5'      ��  � ��# [  5(   !   5)      5+        5,      $ 
Phát sinh��6%    . $
 Auto 6g    68   �� *
PhatSinh+ 5-      �� 5.      "  6    .�5/      ��  � ��# [  50   !   51      53        54      $ Tồn cuối��6%    . $
 Auto 6e    67   �� *	TonCuoi+ 55      �� 56      "  6    .�57      ��  � ��# [  58   !   59      5;      5=      �� 5>   
   -   5        $��Thoát��5>      $
��Left=�6!   $��526,438,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5?   
   -   5        $	��Xem��5?      $
��Left=�6   $��
262,66,0,0q�6:   $	��Top=�6N   $��55��6f   $��22��6q   6}   5@      5A      