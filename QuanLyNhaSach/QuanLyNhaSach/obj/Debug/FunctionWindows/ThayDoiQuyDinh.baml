   M S B A M L   `   `   `  ����H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  5   	   2    ,QuanLyNhaSach.FunctionWindows.ThayDoiQuyDinh   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:QuanLyNhaSach.FunctionWindows     5   	     � Title$  Thay đổi quy định��5   	   $	��500��6#   $	��500��60    � WindowStyle$ 
ToolWindow=�6<    � WindowStartupLocation$ CenterScreen=�6U   .��5	      � .+�5
   
   �� $
��Left=�6   $��
128,10,0,0q�6/   $
��Wrap=�6C   $��THAY ĐỔI QUY ĐỊNH��6W   $	��Top=�6p   $��24(�6�   �� 5   
   $
��Left=�6   $��	22,87,0,0q�6/   $
��Wrap=�6B   $(��"Số lượng nhập tối thiểu��6V   $	��Top=�6u   �� 5   
   $
��Left=�6   $��
22,136,0,0q�6/   $
��Wrap=�6C   $0��*Số lượng tồn để nhập tối đa��6W   $	��Top=�6z   �� 5   
   $
��Left=�6   $��
22,185,0,0q�6/   $
��Wrap=�6C   $��Tổng nợ tối đa��6W   $	��Top=�6m   �� 5   
   $
��Left=�6   $��
22,234,0,0q�6/   $
��Wrap=�6C   $/��)Lượng tồn sau khi bán tối thiểu��6W   $	��Top=�6~   �� 5   
   $
��Left=�6   $��
22,283,0,0q�6/   $
��Wrap=�6C   $Y��SCho phép số tiền thu vượt tổng nợ (0 = Không cho phép, 1 = Cho phép)��6W   $	��Top=�6�   $	��184��6�   $��49��6�   �� 5   
   $
��Left=�6   $��
22,345,0,0q�6/   $
��Wrap=�6C   $)��#Tỉ lệ tính đơn giá bán (%)��6W   $	��Top=�6y   �� 5   
   -   5         ��Name$# textBoxSoLuongNhapToiThieuMoi��5      $
��Left=�69   $��23��6T   $��
211,89,0,0q�6`    �� TextWrapping$
 Wrap=�6t   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $% textBoxSoLuongTonDeNhapToiDaMoi��5      $
��Left=�6;   $��23��6V   $��211,138,0,0q�6b   $
 Wrap=�6w   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $ textBoxTongNoToiDaMoi��5      $
��Left=�61   $��23��6L   $��211,184,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $) #textBoxLuongTonSauKhiBanToiThieuMoi��5      $
��Left=�6?   $��23��6Z   $��211,233,0,0q�6f   $
 Wrap=�6{   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $* $textBoxChoPhepSoTienThuVuotTongNoMoi��5      $
��Left=�6@   $��23��6[   $��211,282,0,0q�6g   $
 Wrap=�6|   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $! textBoxTiLeTinhDonGiaBanMoi��5      $
��Left=�67   $��23��6R   $��211,344,0,0q�6^   $
 Wrap=�6s   $	��Top=�6�   $	��120��6�   6�   �� 5   
   -   5        $" textBoxSoLuongNhapToiThieuCu��5      $
��Left=�68   $��23��6S   $��
336,89,0,0q�6_   $
 Wrap=�6s   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   -   5        $$ textBoxSoLuongTonDeNhapToiDaCu��5      $
��Left=�6:   $��23��6U   $��336,138,0,0q�6a   $
 Wrap=�6v   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   -	   5        $ textBoxTongNoToiDaCu��5      $
��Left=�60   $��23��6K   $��336,184,0,0q�6W   $
 Wrap=�6l   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   -
   5        $( "textBoxLuongTonSauKhiBanToiThieuCu��5      $
��Left=�6>   $��23��6Y   $��336,233,0,0q�6e   $
 Wrap=�6z   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   -   5        $) #textBoxChoPhepSoTienThuVuotTongNoCu��5      $
��Left=�6?   $��23��6Z   $��336,283,0,0q�6f   $
 Wrap=�6{   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   -   5        $  textBoxTiLeTinhDonGiaBanCu��5      $
��Left=�66   $��23��6Q   $��336,344,0,0q�6]   $
 Wrap=�6r   $	��Top=�6�   $	��120��6�   {�.  6�   �� 5   
   $
��Left=�6   $��
243,68,0,0q�6/   $
��Wrap=�6C   $��Giá trị mới��6W   $	��Top=�6j   ���#c0392b6�   �� 5   
   $
��Left=�6   $��
370,68,0,0q�6/   $
��Wrap=�6C   $��Giá trị cũ��6W   $	��Top=�6i   ���#c0392b6�   �� 5   
   -   5        $��Thoát��5      $
��Left=�6!   $��381,400,0,0q�6<   $	��Top=�6Q   $��75��6i   6t   �� 5    
   -   5        $��Cập nhật��5       $
��Left=�6$   $��301,400,0,0q�6?   $	��Top=�6T   $��75��6l   6w   �� 5!   
   $
��Left=�6   $��
22,400,0,0q�6/   $
��Wrap=�6C   $i��cVui lòng để trống mục giá trị mới tương ứng nếu muốn giữ nguyên quy định��6W   $	��Top=�6�   ���#27ae60$	��235��6�   5#      5$      