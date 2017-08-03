<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CapNhatThongTinCaNhan.aspx.cs" Inherits="CapNhatThongTinCaNhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
            <asp:SqlDataSource ID="sqlDsThongTinCaNhan" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TaiKhoan] = @TaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([TaiKhoan], [MatKhau], [Email], [DiaChi], [SoDT], [Loai]) VALUES (@TaiKhoan, @MatKhau, @Email, @DiaChi, @SoDT, @Loai)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [MatKhau] = @MatKhau, [Email] = @Email, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Loai] = @Loai WHERE [TaiKhoan] = @TaiKhoan">
                <DeleteParameters>
                    <asp:Parameter Name="TaiKhoan" Type="String" />
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
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDT" Type="String" />
                    <asp:Parameter Name="Loai" Type="String" />
                    <asp:Parameter Name="TaiKhoan" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h1>Thông tin cá nhân</h1>
            <table class="auto-style1">
                <tr>
                    <td width="300">Tài khoản</td>
                    <td>
                        <asp:Label ID="lblTaiKhoan" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMatKhau1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatKhau1" runat="server" ControlToValidate="txtMatKhau1" ErrorMessage="Chưa nhập" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Nhập lại mật khẩu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMatKhau2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatKhau2" runat="server" ControlToValidate="txtMatKhau2" ErrorMessage="Chưa nhập" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvMatKhau" runat="server" ControlToCompare="txtMatKhau1" ControlToValidate="txtMatKhau2" ErrorMessage="Mật khẩu chưa khớp!" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Chưa nhập" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Chưa nhập" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Số điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtSoDienThoai" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSoDienThoai" runat="server" ControlToValidate="txtSoDienThoai" ErrorMessage="Chưa nhập" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revSoDienThoai" runat="server" ControlToValidate="txtSoDienThoai" ErrorMessage="Điện thoại không hợp lệ!" ValidationExpression="^0\d{9,10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Loại</td>
                    <td>
                        <asp:Label ID="lblLoai" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnCapNhat" runat="server" OnClick="btnCapNhat_Click" Text="Cập nhật" />
            <asp:Button ID="btnHuy" runat="server" Text="Hủy" />
        <p>
            <asp:Label ID="lblThongBao" runat="server"></asp:Label>
        </p>
    </form>
</asp:Content>

