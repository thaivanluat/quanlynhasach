   M S B A M L   `   `   `  ���� H  DQuanLyNhaSach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:QuanLyNhaSach.FunctionWindowsQuanLyNhaSach.FunctionWindows  4    .QuanLyNhaSach.FunctionWindows.LapPhieuNhapSach   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     =local+clr-namespace:QuanLyNhaSach.FunctionWindows     -     �Name$  closing�� � Title$  Lập phiếu nhập sách�� � 
ResizeMode$ CanMinimize=�$	��600��$	��920�� � WindowStyle$ 
ToolWindow=� � WindowStartupLocation$ CenterScreen=� � 	Resources    clBr �� Color��%   &	        �� $ #ecf0f1��.��� ���	#FFECF0F1.+��� $
��Left=�$
��Wrap=�$ ��LẬP PHIẾU NHẬP SÁCH��$	��Top=�$��	10,10,0,0q�$��70��$	��893��$��36(� �� TextAlignment$ Center=��� $
��Left=�$
��Wrap=�$��Ngày nhập:��$	��Top=�$��	10,85,0,0q�$��14(�(  "System.Windows.Controls.DatePicker  -     Name$ 
datePicker��$
��Left=�$	��Top=�$��	86,85,0,0q�$	��160��$��14(�	   Text$	 Chọn ngày nhập���� $
��Left=�$
��Wrap=�$��Tổng tiền:��$	��Top=�$��660,491,0,0q�$��14(��� -   
 ��Name$
 textBoxTongTien��$
��Left=�$��23��$��727,492,0,0q� �� TextWrapping$
 Wrap=�$��0��$	��Top=�$	��176��{�.  �� $
��Left=�$��919,606,0,-51.6q�$
��Wrap=�$��	TextBlock��$	��Top=��� -   $��Thoát��$
��Left=�$��828,526,0,0q�$	��Top=�$��75���� -   $
��Xóa��$
��Left=�$��250,492,0,0q�$	��Top=�$��75��&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$
��Left=�$	��356��$��250,131,0,0q�$	��Top=�$	��653��   AutoGenerateColumns .  $   HorizontalScrollBarVisibility$
 Auto=�"   VerticalScrollBarVisibility$
 Auto=�   CanUserAddRows .     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��   
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *MaSach+  $ 
Tên sách�� .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto  �� *	TenSach+  $ Thể Loại�� . $
 Auto  �� *	TheLoai+  $ 
Tác Giả�� . $
 Auto  �� *TacGia+  $ Số lượng tồn�� . $
 Auto  �� *
SoLuongTon+  $ Số lượng�� . $
 Auto  �� *	SoLuong+  $ Đơn giá nhập�� . $
 Auto  �� *
DonGiaNhap+  $ Thành tiền�� . $
 Auto  �� *	ThanhTien+�� -    ��Name$ BtThem��$��Thêm��$
��Left=�$��
70,490,0,0q�$	��Top=�$��75��{�.  �� -   $
��Lưu��$
��Left=�$��748,526,0,0q�$	��Top=�$��75���� $
��Left=�$��
455,99,0,0q�$
��Wrap=�$��Danh sách nhập sách��$	��Top=�$��27��$	��202��$��18(�$ Center=��� $
��Left=�$��
71,117,0,0q�$
��Wrap=�$��Chi tiết nhập sách��$	��Top=�$��14(��� $
��Left=�$��
10,158,0,0q�$
��Wrap=�$��	Mã sách��$	��Top=��� -	    ��Name$ comboBoxMaSach�� �� SelectedValuePath$ MaSach�� �� DisplayMemberPath$ MaSach��$
��Left=�$��
70,158,0,0q�$	��Top=�$��95������ *ChiTietPhieuNhapSach+�� -
   $
 textBoxTenSach��$
��Left=�$��46��$��
70,186,0,0q�$
 Wrap=�$	��Top=�$	��175��{�.  �� $
��Left=�$��
10,187,0,0q�$
��Wrap=�$��
Tên sách��$	��Top=��� -   $
 textBoxTheLoai��$
��Left=�$��23��$��
70,237,0,0q�$
 Wrap=�$	��Top=�$	��175��{�.  �� -   $
 textBoxTacGia��$
��Left=�$��46��$��
70,265,0,0q�$
 Wrap=�$	��Top=�$	��175��{�.  �� -   $
 textBoxSoLuongTon��$
��Left=�$��23��$��
71,316,0,0q�$
 Wrap=�$	��Top=�$	��175��{�.  �� -   $
 textBoxSoLuong��$
��Left=�$��23��$��
70,344,0,0q�$
 Wrap=�$��0��$	��Top=�$	��175���� -   $
 textBoxDonGiaNhap��$
��Left=�$��23��$��
71,372,0,0q�$
 Wrap=�$��0��$	��Top=�$	��175���� -   $
 textBoxThanhTien��$
��Left=�$��23��$��
70,400,0,0q�$
 Wrap=�$��0��$	��Top=�$	��175��{�.  �� $
��Left=�$��
10,238,0,0q�$
��Wrap=�$��Thể loại��$	��Top=��� $
��Left=�$��
10,266,0,0q�$
��Wrap=�$��
Tác giả��$	��Top=��� $
��Left=�$��	9,320,0,0q�$
��Wrap=�$��Số lượng tồn��$	��Top=�$��56��$��9(��� $
��Left=�$��
10,348,0,0q�$
��Wrap=�$��Số lượng nhập��$	��Top=�$��9(��� $
��Left=�$��
10,376,0,0q�$
��Wrap=�$��Đơn giá nhập��$	��Top=�$��9(��� $
��Left=�$��	9,401,0,0q�$
��Wrap=�$��Thành tiền��$	��Top=��� -    ��Name$" textBlockSoLuongNhapToiThieu��$
��Left=�$��
10,514,0,0q�$
��Wrap=�$��	TextBlock��$	��Top=�$	��315�����	#FFF42F2F�� -   $$ textBlockSoLuongTonDeNhapToiDa��$
��Left=�$��
10,535,0,0q�$
��Wrap=�$��	TextBlock��$	��Top=�$	��315�����	#FFF42F2F