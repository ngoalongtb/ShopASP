<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyHoaDon.aspx.cs" Inherits="QuanLyHoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Quản lý hóa đơn</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <h1>Quản lý hóa đơn</h1>

        <asp:SqlDataSource ID="sqldsHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHang], [TaiKhoan], [SoLuong], [NgayMua]) VALUES (@MaHang, @TaiKhoan, @SoLuong, @NgayMua)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaHang] = @MaHang, [TaiKhoan] = @TaiKhoan, [SoLuong] = @SoLuong, [NgayMua] = @NgayMua WHERE [MaHoaDon] = @MaHoaDon">
            <DeleteParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHang" Type="String" />
                <asp:Parameter Name="TaiKhoan" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter DbType="Date" Name="NgayMua" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaHang" Type="String" />
                <asp:Parameter Name="TaiKhoan" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter DbType="Date" Name="NgayMua" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaHoaDon" DataSourceID="sqldsHoaDon" ForeColor="Black" GridLines="Horizontal" PageSize="5" Width="100%">
            <Columns>
                <asp:BoundField DataField="MaHoaDon" HeaderText="Mã hóa đơn" InsertVisible="False" ReadOnly="True" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="MaHang" HeaderText="Mã hàng" SortExpression="MaHang" />
                <asp:BoundField DataField="TaiKhoan" HeaderText="Tài khoản" SortExpression="TaiKhoan" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
                <asp:BoundField DataField="NgayMua" HeaderText="Ngày mua" SortExpression="NgayMua" />
                <asp:CommandField CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" InsertText="Chèn" NewText="Thêm mới" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
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

    </form>
</asp:Content>

