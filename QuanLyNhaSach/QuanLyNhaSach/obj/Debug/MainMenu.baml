   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyNhaSachQuanLyNhaSach  5   	       QuanLyNhaSach.MainMenu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyNhaSach     5   	     � Title$
  Menu��5   	    � 
ResizeMode$ NoResize=�6   $	��540��6,   $	��880��69    � WindowStartupLocation$ CenterScreen=�6E   .��5	      � ���	#FFECF0F1.+�5
   
   �� $
��Left=�6   $	��460��60   $	��Top=�6=   $	��260��6U   $��	20,20,0,0q�6a   ���	#FFE74C3C J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      .+�5      �� $��10q�6   $��25(�6$   $
��Bold"�62   $��Sách��6D    �� TextAlignment$ Center=�6P   
�������$��Bahnschrift Light)�6z   �� 5      -   5         ��Name$ BtLapPhieuNhapSach��5      $��
10,20,10,5q�61   $��60��6E   $ ��Lập phiếu nhập sách��6Q   ���	#FFC0392B
�������$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFC0392B6�   �� 5      -   5        $ BtQuanLySach��5      $��	10,5,10,5q�6+   $��60��6>   $��Quản lý sách��6J   
����������	#FFC0392B$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFC0392B6�   �� 5      -   5        $ BtQuanLyDauSach��5      $��	10,5,10,5q�6.   $��60��6A   $��Quản lý đầu sách��6M   
����������	#FFC0392B$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFC0392B6�   �� 5      -   5        $ BtQuanLyTacGia��5      $��	10,5,10,5q�6-   $��60��6@   $��Quản lý tác giả��6L   
����������	#FFC0392B$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFC0392B6�   �� 5      -   5        $ BtQuanLyTheLoai��5      $��	10,5,10,5q�6.   $��60��6A   $��Quản lý thể loại��6M   
����������	#FFC0392B$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFC0392B6�   5      �� 5   
   $
��Left=�6   $	��460��60   $	��Top=�6=   $	��260��6U   $��
300,20,0,0q�6a   ���	#FF3498DB 5        5      .+�5      �� $��10q�6   $��25(�6$   $
��Bold"�62   $ Center=�6D   
�������$��Bahnschrift Light)�6n   �� 6�   $�Khách hàng��6�   6�   �� 5      -   5        $ BtQuanLyKhachHang��5      $��
10,20,10,5q�60   $��60��6D   $��Quản lý khách hàng��6P   
����������	#FF2980B9$��Bahnschrift Light)�6�   $��16(�6�   ���	#FF2980B96�   �� 5      -   5        $ BtQuanLyPhieuThu��5      $��	10,5,10,5q�6/   $��60��6B   $��Quản lý phiếu thu��6N   
����������	#FF2980B9$��Bahnschrift Light)�6�   $��16(�6�   ���	#FF2980B96�   �� 5      -   5        $ BtQuanLyHoaDon��5      $��	10,5,10,5q�6-   $��60��6@   $��Quản lý hóa đơn��6L   
����������	#FF2980B9$��Bahnschrift Light)�6�   $��16(�6�   ���	#FF2980B96�   5      �� 5   
   $
��Left=�6   $	��220��60   $	��Top=�6=   $	��260��6U   $��
580,20,0,0q�6a   ���	#FF2ECC71 5        5       .+�5"      �� $��10q�6   $��25(�6$   $
��Bold"�62   $��	Báo cáo��6D   $ Center=�6S   
�������$��Bahnschrift Light)�6}   �� 5#      -	   5        $ BtBaoCaoTon��5#      $��
10,20,10,5q�6*   $��60��6>   $��Báo cáo tồn��6J   
����������	#FF27AE60$��Bahnschrift Light)�6�   $��16(�6�   ���	#FF27AE606�   �� 5$      -
   5        $ BtBaoCaoCongNo��5$      $��	10,5,10,5q�6-   $��60��6@   $��Báo cáo công nợ��6L   
����������	#FF27AE60$��Bahnschrift Light)�6�   $��16(�6�   ���	#FF27AE606�   5%      �� 5&   
   $
��Left=�6   $	��220��60   $	��Top=�6=   $	��260��6U   $��580,260,0,0q�6a   ���	#FFE67E22 5'        5(      .+�5*      �� $��10q�6   $��25(�6$   $
��Bold"�62   $��Hệ thống��6D   $ Center=�6T   
�������$��Bahnschrift Light)�6~   �� 5+      -   5        $ BtThayDoiQuyDinh��5+      $��
10,20,10,5q�6/   $��60��6C   $��Thay đổi quy định��6O   
����������	#FFD35400$��Bahnschrift Light)�6�   $��16(�6�   ���	#FFD354006�   �� 5,      -   5        $��
10,10,10,5q�5,      $��60��6)   $��Đăng xuất��65   
����������	#FFD35400$��Bahnschrift Light)�6s   $��16(�6�   ���	#FFD354006�   5-      5.      5/      