   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  1    +QuanLyNhaSach.FunctionWindows.QuanLyTheLoai   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows       � Title$  Quản lý thể loại��$	��350��$	��500�� � WindowStyle$ 
ToolWindow=� � 
ResizeMode$ CanMinimize=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��129��$��7,74,0,0q�$	��Top=�$	��471��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"	   VerticalScrollBarVisibility$
	 Auto=�
   CanUserAddRows
 .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Mã thể loại��   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	MaTheLoai+   	CellStyle ��  �� 
TargetType*  $System.Windows.Controls.DataGridCell"  .���  �� Property � �� �� Value# [    $ Tên thể loại�� . $
 Auto  �� *
TenTheLoai+ �� "  .���  � ��# [  4  .System.Windows.Controls.DataGridCheckBoxColumn  $ Chọn��$
 Auto  �� *TrangThaiChon+�� $
��Left=�$��
17,209,0,0q�$
��Wrap=�$��Mã thể loại��$	��Top=��� -    ��Name$ textBoxMaTheLoai��$
��Left=�$��23��$��
87,208,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��120��{�.  �� $
��Left=�$��
17,237,0,0q�$
��Wrap=�$��Tên thể loại��$	��Top=��� -   $ textBoxTenTheLoai��$
��Left=�$��23��$��
87,236,0,0q�$
 Wrap=�$	��Top=�$	��120���� -   $
��Xóa��$
��Left=�$��170,277,0,0q�$	��Top=�$��75���� -   $��Sửa��$
��Left=�$��
90,277,0,0q�$	��Top=�$��75���� -    ��Name$ BtThem��$��Thêm��$
��Left=�$��
10,277,0,0q�$	��Top=�$��75���� -   $��Thoát��$
��Left=�$��406,277,0,0q�$	��Top=�$��75���� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$��QUẢN LÝ THỂ LOẠI��$	��Top=�$	��474��$��38��$��14(� �� TextAlignment$ Center=��� $
��Left=�$��7,53,0,0q�$
��Wrap=�$��Danh sách thể loại��$	��Top=�$	��474��$ Center=�