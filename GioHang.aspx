<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Giỏ hàng</title>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Giỏ hàng"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnRowCommand="gvGioHang_RowCommand" Width="529px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaHang" HeaderText="Mã Hàng">
            <ControlStyle Width="150px" />
            <HeaderStyle Width="100px" />
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Tên hàng">
                <ItemTemplate>
                    <asp:Label ID="labTenHang" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="300px" />
                <ItemStyle Width="500px" />
            </asp:TemplateField>
            <asp:BoundField DataField="Gia" HeaderText="Giá">
            <ControlStyle Width="100px" />
            <HeaderStyle Width="100px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                </ItemTemplate>
                <ControlStyle Width="100px" />
                <ItemStyle Width="200px" />
            </asp:TemplateField>
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền">
            <ControlStyle Width="150px" />
            <ItemStyle Width="250px" />
            </asp:BoundField>
            <asp:ButtonField Text="Cập nhật">
            <ControlStyle BackColor="Lime" Width="100px" />
            <ItemStyle Width="200px" />
            </asp:ButtonField>
        </Columns>
        <EmptyDataTemplate>
            Không có hàng trong giỏ
        </EmptyDataTemplate>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    <asp:Label ID="labThongBao" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tổng tiền:"></asp:Label>
&nbsp;
    <asp:Label ID="labTongTien" runat="server"></asp:Label>
&nbsp; (VND)<br />
    <br />
    <asp:Button ID="butTiepTuc" runat="server" BackColor="#FF6600" BorderColor="#FF6600" Font-Size="Large" Height="40px" OnClick="butTiepTuc_Click" Text="Tiếp tục mua hàng" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="butXoaGioHang" runat="server" BackColor="#FF6600" Font-Size="Large" Height="40px" OnClick="butXoaGioHang_Click" Text="Xóa Giỏ Hàng" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;
    <br />
    <asp:SqlDataSource ID="sqldsHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [HoaDon]" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHang], [TaiKhoan], [SoLuong], [NgayMua]) VALUES (@MaHang, @TaiKhoan, @SoLuong, @NgayMua)" UpdateCommand="UPDATE [HoaDon] SET [MaHang] = @MaHang, [TaiKhoan] = @TaiKhoan, [SoLuong] = @SoLuong, [NgayMua] = @NgayMua WHERE [MaHoaDon] = @MaHoaDon">
        <DeleteParameters>
            <asp:Parameter Name="MaHoaDon" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHang" Type="String" />
            <asp:Parameter Name="TaiKhoan" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="NgayMua" DbType="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaHang" Type="String" />
            <asp:Parameter Name="TaiKhoan" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="NgayMua" DbType="Date" />
            <asp:Parameter Name="MaHoaDon" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="butMua" runat="server" BackColor="#FF6600" Font-Size="Large" Height="40px" Text="Mua" Width="200px" OnClick="butMua_Click"  />

    <br />
    <asp:Label ID="labThongBaoMua" runat="server"></asp:Label>

    <br />

</asp:Content>

