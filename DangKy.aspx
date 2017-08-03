<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Đăng ký</title>
    <style type="text/css">
        .auto-style24 {
            width: 182px;
            height: 60px;
        }
        .auto-style25 {
            width: 492px;
            height: 60px;
        }
        .auto-style27 {
            height: 60px;
        }
        .auto-style36 {
            width: 172px;
            height: 60px;
        }
        .auto-style37 {
            width: 102%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDsDangKy" runat="server" 
    ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" 
    DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TaiKhoan] = @MaTaiKhoan" 
    InsertCommand="INSERT INTO [TaiKhoan] ( [TaiKhoan], [MatKhau], [Email], [DiaChi], [SoDT], [Loai]) VALUES ( @TaiKhoan, @MatKhau, @Email, @DiaChi, @SoDT, @Loai)" 
    SelectCommand="SELECT * FROM [TaiKhoan]" 
    UpdateCommand="UPDATE [TaiKhoan] SET [TaiKhoan] = @TaiKhoan, [MatKhau] = @MatKhau, [Email] = @Email, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Loai] = @Loai WHERE [MaTaiKhoan] = @MaTaiKhoan">
                                <DeleteParameters>
                                    <asp:Parameter Name="MaTaiKhoan" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="TaiKhoan" Type="String" />
                                    <asp:Parameter Name="MatKhau" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="DiaChi" Type="String" />
                                    <asp:Parameter Name="SoDT" Type="String" />
                                    <asp:Parameter Name="Loai" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="TaiKhoan" Type="String" />
                                    <asp:Parameter Name="MatKhau" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="DiaChi" Type="String" />
                                    <asp:Parameter Name="SoDT" Type="String" />
                                    <asp:Parameter Name="Loai" Type="String" />
                                    
                                </UpdateParameters>
</asp:SqlDataSource>


                            <table class="auto-style37">
                            <tr>
                                <td class="auto-style24"><strong>Họ :</strong></td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtHo" runat="server" Height="25px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="redHo" runat="server" ControlToValidate="txtHo" 
                                        ForeColor="Red">Họ không được trống</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style36"><strong>Số Điện Thoại</strong></td>
                                <td class="auto-style27">
                                    <asp:TextBox ID="txtSoDT" runat="server" Height="26px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqSoDT" runat="server" 
                                        ControlToValidate="txtSoDT" 
                                        ForeColor="Red">SĐT không được để trống</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="regDienThoai" runat="server" 
                                        ControlToValidate="txtSoDT" ForeColor="Red" 
                                        ValidationExpression="^0[0-9]{9,10}$">SĐT  không đúng định dạng</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24"><strong>Tên :</strong></td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtTen" runat="server" Height="26px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqTenDK" runat="server" 
                                        ControlToValidate="txtTen" ForeColor="Red">Tên không được trống</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style36"><strong>Địa chỉ :</strong></td>
                                <td class="auto-style27">
                                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="col-xs-offset-0" Height="25px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqDiaChi" runat="server" 
                                        ControlToValidate="txtDiaChi" ForeColor="Red">Địa chỉ không được  bỏ trống</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24"><strong>Tên tài khoản :</strong></td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtTenTaiKhoanDK" runat="server" Height="25px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="redTenTaiKhoan" runat="server" 
                                        ControlToValidate="txtTenTaiKhoanDK" ForeColor="Red">Tên tài khoản không được trống</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style36"><strong>Email</strong></td>
                                <td class="auto-style27">
                                    <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" 
                                        ControlToValidate="txtEmail" ForeColor="Red"> Email không được bỏ trống</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="regEmail" runat="server" 
                                        ControlToValidate="txtEmail" ErrorMessage="Email không đúng định dạng" 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24"><strong>Mật khẩu :</strong></td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtMatKhauDK" runat="server" Height="25px" TextMode="Password" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqMatKhau" runat="server" 
                                        ControlToValidate="txtMatKhauDK" ForeColor="Red">Mật khẩu không được bỏ trống</asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:RegularExpressionValidator ID="regMatKhau" runat="server" 
                                        ControlToValidate="txtMatKhauDK" ErrorMessage="Mật khẩu từ 3 ký tự trở lên " 
                                        ForeColor="Red" ValidationExpression="^[A-Za-z0-9]{3,}$"></asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style36"><strong><em>Nếu bạn đã có một tài khoản </em></strong>
                                </td>
                                <td class="auto-style27"><strong><em>Xin vui lòng đăng nhập&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></strong>
                                    <a href="DangNhap.aspx"><strong><em>Đăng Nhập </em></strong> </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24"><strong>Nhập lại mật khẩu :</strong></td>
                                
                                <td class="auto-style25">
                                    <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" Height="25px" TextMode="Password" Width="220px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqNhapLaiMatKhau" runat="server" 
                                        ControlToValidate="txtNhapLaiMatKhau" ForeColor="Red">Yêu cầu nhập lại mật khẩu</asp:RequiredFieldValidator>
                                    &nbsp;<asp:CompareValidator ID="cmpMatKhau" runat="server" 
                                        ControlToCompare="txtMatKhauDK" ControlToValidate="txtNhapLaiMatKhau" 
                                        ForeColor="Red">Yêu cầu nhập lại mật khẩu</asp:CompareValidator>
                                </td>
                                <td class="auto-style36">
                                    <asp:Button ID="btnDangKy" runat="server" Font-Bold="True" Font-Italic="True" 
                                        Font-Size="Large" ForeColor="Black" Height="35px" Text="Đăng Ký" Width="162px" 
                                        onclick="btnDangKy_Click" />
                                    <br />
                                    <em>
                                    <asp:Label ID="lblThongBao" runat="server" Text="lblThongBao" ForeColor="Red"></asp:Label>
                                    </em>
                                </td>
                                <td class="auto-style27"></td>
                            </tr>
                        </table>
</asp:Content>

