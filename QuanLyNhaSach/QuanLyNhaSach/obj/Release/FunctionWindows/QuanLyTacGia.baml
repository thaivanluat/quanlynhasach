   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  0    *QuanLyNhaSach.FunctionWindows.QuanLyTacGia   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý tác giả��$	��350��$	��500�� � 
ResizeMode$ CanMinimize=� � WindowStyle$ 
ToolWindow=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��129��$��7,74,0,0q�$	��Top=�$	��471��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"	   VerticalScrollBarVisibility$
	 Auto=�
   CanUserAddRows
 .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã tác giả��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *
MaTacGia+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ Tên tác giả�� . $
 Auto  �� *	TenTacGia+ �� "  .���  � ��# [    $ 	Năm sinh�� . $
 Auto  �� *	NamSinh+ �� "  .���  � ��# [  4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Chọn��$
 Auto  �� *TrangThaiChon+�� $
��Left=�$��
17,209,0,0q�$
��Wrap=�$��Mã tác giả��$	��Top=��� -    ��Name$ textBoxMaTacGia��$
��Left=�$��23��$��
87,208,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��120��{�.  �� $
��Left=�$��
17,237,0,0q�$
��Wrap=�$��Tên tác giả��$	��Top=��� -   $ textBoxTenTacGia��$
��Left=�$��23��$��
87,236,0,0q�$
 Wrap=�$	��Top=�$	��120���� $
��Left=�$��
17,265,0,0q�$
��Wrap=�$��	Năm sinh��$	��Top=��� -   $ textBoxNamSinh��$
��Left=�$��23��$��
87,264,0,0q�$
 Wrap=�$	��Top=�$	��120���� -   $
��Xóa��$
��Left=�$��170,292,0,0q�$	��Top=�$��75���� -   $��Sửa��$
��Left=�$��
90,292,0,0q�$	��Top=�$��75���� -    ��Name$ BtThem��$��Thêm��$
��Left=�$��
10,292,0,0q�$	��Top=�$��75���� -   $��Thoát��$
��Left=�$��409,292,0,0q�$	��Top=�$��75���� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$��QUẢN LÝ TÁC GIẢ��$	��Top=�$	��474��$��38��$��14(� �� TextAlignment$ Center=��� $
��Left=�$��7,53,0,0q�$
��Wrap=�$��Danh sách tác giả��$	��Top=�$	��474��$ Center=�