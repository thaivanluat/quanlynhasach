   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  1    +QuanLyNhaSach.FunctionWindows.QuanLyDauSach   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý đầu sách��$	��500��$	��920�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+��� $
��Left=�$��
350,10,0,0q�$
��Wrap=�$��Quản lý đầu sách��$	��Top=�$��24(�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��300��$��402,110,0,0q�$	��Top=�$	��502��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�	   CanUserAddRows	 .  
   Columns
 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã đầu sách��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	MaDauSach+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ Tên đầu sách�� . $
 Auto  �� *
TenDauSach+ �� "  .���  � ��# [    $ 
Tác giả�� . $
 Auto  �� *TacGia+ �� "  .���  � ��# [    $ Thể loại�� . $
 Auto  �� *
TenTheLoai+ �� "  .���  � ��# [  4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Chọn��$
 Auto  �� *TrangThaiChon+�� $
��Left=�$��
589,87,0,0q�$
��Wrap=�$��Danh sách đầu sách��$	��Top=�$��14(��� $
��Left=�$��
149,87,0,0q�$
��Wrap=�$��Thông tin đầu sách��$	��Top=�$��14(��� -   $��Thêm��$
��Left=�$��402,415,0,0q�$	��Top=�$��75���� -   $��Sửa��$
��Left=�$��482,415,0,0q�$	��Top=�$��75���� -   $
��Xóa��$
��Left=�$��562,415,0,0q�$	��Top=�$��75���� $
��Left=�$��
27,115,0,0q�$
��Wrap=�$��Mã đầu sách��$	��Top=��� -    ��Name$ textBoxMaDauSach��$
��Left=�$��23��$��
98,114,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��299��{�.  �� $
��Left=�$��
27,143,0,0q�$
��Wrap=�$��Tên đầu sách��$	��Top=��� -   $ textBoxTenDauSach��$
��Left=�$��53��$��
98,142,0,0q�$
 Wrap=�$	��Top=�$	��299���� $
��Left=�$��
27,201,0,0q�$
��Wrap=�$��Thể loại��$	��Top=��� -    ��Name$ comboBoxTheLoai�� �� SelectedValuePath$ 	MaTheLoai�� �� DisplayMemberPath$ 
TenTheLoai��$
��Left=�$��
98,201,0,0q�$	��Top=�$	��299������ *	TheLoai+�� $
��Left=�$��
27,229,0,0q�$
��Wrap=�$��
Tác giả��$	��Top=�  -   $ dataGridTacGia��$
��Left=�$	��100��$��
98,229,0,0q�$	��Top=�$	��299�� .  $
 Auto=�$
 Auto=�	 .  
   $ Mã tác giả�� . $
 Auto  �� *
MaTacGia+ �� "  .���  � ��# [    $ Tên tác giả�� . $
 Auto  �� *	TenTacGia+ �� "  .���  � ��# [    $ 	Năm sinh�� . $
 Auto  �� *	NamSinh+ �� "  .���  � ��# [    $ Chọn��$
 Auto  �� *TrangThaiChon+�� -	   $��Thêm tác giả��$
��Left=�$��
98,334,0,0q�$	��Top=�$��75���� -
   $��Xóa tác giả��$
��Left=�$��
98,359,0,0q�$	��Top=�$��75���� -   $ comboBoxTacGia��$ MaTacGia��$ MaTacGiaTenTacGia��$
��Left=�$��249,334,0,0q�$	��Top=�$	��148������ *TacGia+�� $
��Left=�$��178,336,0,0q�$
��Wrap=�$��Chọn tác giả��$	��Top=��� -    ��Name$ 	BtCapNhat��$��Cập nhật��$
��Left=�$��197,415,0,0q�$	��Top=�$��75��{�.  �� -   $��Thoát��$
��Left=�$��829,415,0,0q�$	��Top=�$��75��