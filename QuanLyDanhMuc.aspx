<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyDanhMuc.aspx.cs" Inherits="QuanLyDanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Quản lý danh mục</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h1>Quản lý danh mục</h1>
        <p>
            <asp:SqlDataSource ID="sqlDsDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" DeleteCommand="DELETE FROM [DanhMuc] WHERE [MaDanhMuc] = @MaDanhMuc" InsertCommand="INSERT INTO [DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (@MaDanhMuc, @TenDanhMuc)" SelectCommand="SELECT * FROM [DanhMuc]" UpdateCommand="UPDATE [DanhMuc] SET [TenDanhMuc] = @TenDanhMuc WHERE [MaDanhMuc] = @MaDanhMuc">
                <DeleteParameters>
                    <asp:Parameter Name="MaDanhMuc" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaDanhMuc" Type="String" />
                    <asp:Parameter Name="TenDanhMuc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenDanhMuc" Type="String" />
                    <asp:Parameter Name="MaDanhMuc" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvDanhMuc" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaDanhMuc" DataSourceID="sqlDsDanhMuc" ForeColor="Black" GridLines="Horizontal" Height="140px" Width="355px">
                <Columns>
                    <asp:BoundField DataField="MaDanhMuc" HeaderText="Mã danh mục" ReadOnly="True" SortExpression="MaDanhMuc" />
                    <asp:BoundField DataField="TenDanhMuc" HeaderText="Tên danh mục" SortExpression="TenDanhMuc" />
                    <asp:CommandField CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <table class="nav-justified">
                <tr>
                    <td>Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="txtMaDanhMuc" runat="server" OnTextChanged="txtMaDanhMuc_TextChanged" Width="166px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Tên danh mục</td>
                    <td>
                        <asp:TextBox ID="txtTenDanhMuc" runat="server" OnTextChanged="txtTenDanhMuc_TextChanged" Width="163px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </p>
        <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm" Width="80px" />
        <br />
        <asp:Label ID="lblThongBao" runat="server"></asp:Label>
    </form>
</asp:Content>

