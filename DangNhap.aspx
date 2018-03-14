<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Đăng nhập</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15 contentDangNhap">
        <tr>
            <td class="style3"><span style="color: rgb(80, 80, 80); font-family: verdana, geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="Apple-converted-space">&nbsp; </span>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td><span style="color: rgb(80, 80, 80); font-family: verdana, geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="Apple-converted-space">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black" Text="ĐĂNG NHẬP "></asp:Label>
                            <asp:SqlDataSource ID="sqlDsDN" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" 
                                SelectCommand="SELECT [TaiKhoan], [MatKhau], [Loai] FROM [TaiKhoan] WHERE (([TaiKhoan] = @TaiKhoan) AND ([MatKhau] = @MatKhau))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtTenTKDN" Name="TaiKhoan" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="txtMatKhauDN" Name="MatKhau" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </span></span></td>
                    </tr>
                </table>
                </span></td>
            <td class="style4">
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style7"><strong>Tên Tài Khoản :</strong></td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtTenTKDN" runat="server" Height="25px" Width="219px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqTenDN" runat="server" 
                                ControlToValidate="txtTenTKDN" ForeColor="Red">Tên đăng nhập không được bỏ trống </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Mật Khẩu :</strong></td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtMatKhauDN" runat="server" Height="25px" TextMode="Password" Width="220px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqMatKhauDN" runat="server" 
                                ControlToValidate="txtMatKhauDN" ForeColor="Red">Mật khẩu không được trống</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style21">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/public/images/anhDN.jpg" Width="580px" />
                        </td>
                        <td class="style2"></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style2">
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style12"><em>Nếu bạn chưa có tài khoản vui lòng đăng ký tại đây 
                            <a href="DangKy.aspx">Đăng Ký </a>
                            </em></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Button ID="btnDangNhap" runat="server" CssClass="auto-style14" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Height="30px" Text="Đăng Nhập " Width="171px" OnClick="btnDangNhap_Click" />
                            <br />
                            <asp:Label ID="lblThongBao" runat="server" Text="lblThongBao" 
                                Font-Italic="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td class="auto-style11"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

