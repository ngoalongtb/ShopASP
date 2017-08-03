<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="QuanLyHang.aspx.cs" Inherits="QuanLyHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Quản lý hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="sqldsDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqldsHang" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" DeleteCommand="DELETE FROM [Hang] WHERE [MaHang] = @MaHang" InsertCommand="INSERT INTO [Hang] ([MaHang], [TenHang], [GiaHang], [MoTa], [Anh], [MaDanhMuc], [ThoiGianNhap]) VALUES (@MaHang, @TenHang, @GiaHang, @MoTa, @Anh, @MaDanhMuc, @ThoiGianNhap)" SelectCommand="SELECT * FROM [Hang] WHERE ([MaDanhMuc] = @MaDanhMuc) and (MaHang like '%'+@search+'%' or TenHang like  '%'+@search+'%'  or LTRIM(RTRIM(@search)) = '')" UpdateCommand="UPDATE [Hang] SET [TenHang] = @TenHang, [GiaHang] = @GiaHang, [MoTa] = @MoTa, [Anh] = @Anh, [MaDanhMuc] = @MaDanhMuc, [ThoiGianNhap] = @ThoiGianNhap WHERE [MaHang] = @MaHang">
            <DeleteParameters>
                <asp:Parameter Name="MaHang" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHang" Type="String" />
                <asp:Parameter Name="TenHang" Type="String" />
                <asp:Parameter Name="GiaHang" Type="Int32" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="MaDanhMuc" Type="String" />
                <asp:Parameter DbType="Date" Name="ThoiGianNhap" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlDanhMuc" Name="MaDanhMuc" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtSearchBox" Name="search" PropertyName="Text" DefaultValue=" " />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenHang" Type="String" />
                <asp:Parameter Name="GiaHang" Type="Int32" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="Anh" Type="String" />
                <asp:Parameter Name="MaDanhMuc" Type="String" />
                <asp:Parameter DbType="Date" Name="ThoiGianNhap" />
                <asp:Parameter Name="MaHang" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <h1>Quản lý hàng</h1>
    <div class="manager-header">
        <div class="mh-left">
            <asp:DropDownList ID="ddlDanhMuc" runat="server" AutoPostBack="True" DataSourceID="sqldsDanhMuc" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc" CssClass="ddl"></asp:DropDownList>
            <a href="ThemHang.aspx" class="btn">Thêm mới</a>
        </div>
        <div class="mh-right">
            Tìm kiếm : <asp:TextBox ID="txtSearchBox" runat="server" AutoPostBack="true"></asp:TextBox>
        </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MaHang" DataSourceID="sqldsHang" ForeColor="Black" GridLines="Horizontal" PageSize="5" Width="100%">
            <Columns>
                <asp:BoundField DataField="MaHang" HeaderText="Mã hàng" ReadOnly="True" SortExpression="MaHang" >
                <ItemStyle CssClass="text-center" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="TenHang" HeaderText="Tên hàng" SortExpression="TenHang" >
                <ItemStyle CssClass="text-center" Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="GiaHang" HeaderText="Giá" SortExpression="GiaHang" >
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa">
                <ItemStyle Width="200px"/>
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/public/images/{0}" HeaderText="Ảnh" ControlStyle-Width="250px" ControlStyle-Height="333px">
<ControlStyle Height="333px" Width="250px"></ControlStyle>

                    <ItemStyle Height="333px" Width="250px" />
                </asp:ImageField>
                <asp:BoundField DataField="ThoiGianNhap" HeaderText="Thời gian nhập" SortExpression="ThoiGianNhap" >
                <ItemStyle CssClass="text-center" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="MaHang" DataNavigateUrlFormatString="~/CapNhatHang.aspx?maHang={0}" Text="Sửa" />
                <asp:CommandField DeleteText="Xóa" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle Height="150px" />
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass="table-header" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </form>

</asp:Content>

