<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyTaiKhoan.aspx.cs" Inherits="QuanLyTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Quản lý tài khoản</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Quản lý tài khoản</h1>
    <form id="form1" runat="server" class="auto-style1">
        <div>
        <asp:SqlDataSource ID="sqlDsTaikhoan" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TaiKhoan] = @TaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([TaiKhoan], [MatKhau], [Email], [DiaChi], [SoDT], [Loai]) VALUES (@TaiKhoan, @MatKhau, @Email, @DiaChi, @SoDT, @Loai)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [MatKhau] = @MatKhau, [Email] = @Email, [DiaChi] = @DiaChi, [SoDT] = @SoDT, [Loai] = @Loai WHERE [TaiKhoan] = @TaiKhoan">
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
        <asp:GridView ID="gvTaiKhoan" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TaiKhoan" DataSourceID="sqlDsTaikhoan" ForeColor="Black" GridLines="Horizontal" AllowSorting="True" Width="100%" PageSize="5">
            <Columns>
                <asp:BoundField DataField="TaiKhoan" HeaderText="Tài Khoản" ReadOnly="True" SortExpression="TaiKhoan" >
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" SortExpression="MatKhau" >
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" >
                <ItemStyle Width="300px" />
                </asp:BoundField>
                <asp:BoundField DataField="SoDT" HeaderText="Số ĐT" SortExpression="SoDT" />
                <asp:BoundField DataField="Loai" HeaderText="Loại" SortExpression="Loai" />
                <asp:CommandField CancelText="Bỏ qua" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Tạo mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle Height="50px" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
    </form>
</asp:Content>

