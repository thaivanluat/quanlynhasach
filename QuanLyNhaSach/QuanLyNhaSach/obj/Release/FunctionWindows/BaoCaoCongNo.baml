   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  0    *QuanLyNhaSach.FunctionWindows.BaoCaoCongNo   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Báo cáo công nợ��$	��500��$	��630�� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+��� -    ��Name$ comboBoxNam��$
��Left=�$��	61,66,0,0q�$	��Top=�$��70���� -   $ comboBoxThang��$
��Left=�$��
194,66,0,0q�$	��Top=�$��50���� $
��Left=�$��
219,10,0,0q�$
��Wrap=�$��Báo cáo công nợ��$	��Top=�$	��193��$��24(��� $
��Left=�$��	22,69,0,0q�$
��Wrap=�$
��Năm��$	��Top=��� $
��Left=�$��
146,69,0,0q�$
��Wrap=�$��Tháng��$	��Top=�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��330��$��
10,103,0,0q�$	��Top=�$	��591��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�	   CanUserAddRows	 .  
   Columns
 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã khách hàng��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaKhachHang+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ 	Họ tên�� . $
 Auto  �� *HoTen+ �� "  .���  � ��# [    $ Nợ đầu�� . $
 Auto  �� *NoDau+ �� "  .���  � ��# [    $ 
Phát sinh�� . $
 Auto  �� *
PhatSinh+ �� "  .���  � ��# [    $ Nợ cuối�� . $
 Auto  �� *NoCuoi+ �� "  .���  � ��# [  �� -   $��Thoát��$
��Left=�$��526,438,0,0q�$	��Top=�$��75���� -   $	��Xem��$
��Left=�$��
262,66,0,0q�$	��Top=�$��55��$��22��