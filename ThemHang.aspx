<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ThemHang.aspx.cs" Inherits="ThemHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Thêm mới hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="sqldsHang" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select * from Hang"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqldsDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
    <h1>Thêm mới hàng</h1>
    <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
    <table class="nav-justified table">
        <tr>
            <td width="200"><strong>Mã hàng</strong></td>
            <td>
                <asp:TextBox ID="txtMaHang" runat="server" Text='' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMaHang" ErrorMessage="Vui lòng nhập mã hàng" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>Tên hàng</strong></td>
            <td>
                <asp:TextBox ID="txtTenHang" runat="server" Text='' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTenHang" ErrorMessage="Vui lòng nhập tên hàng" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>Giá hàng</strong></td>
            <td>
                <asp:TextBox ID="txtGiaHang" runat="server" Text='' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtGiaHang" Display="Dynamic" ErrorMessage="Giá hàng không đúng định dạng" ForeColor="Red" ValidationExpression="^\d{4,}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGiaHang" Display="Dynamic" ErrorMessage="Vui lòng nhập vào giá hàng" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>Mô tả</strong></td>
            <td>

                <asp:TextBox ID="txtMoTa" runat="server" Text='' TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td><strong>Ảnh</strong></td>
            <td>
                <asp:FileUpload ID="fileImage" runat="server"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fileImage" ErrorMessage="Vui lòng upload ảnh minh họa cho sản phẩm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><strong>Mã Danh mục</strong></td>
            <td>
                <asp:DropDownList ID="ddlDanhMuc" runat="server" DataSourceID="sqldsDanhMuc" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td></td>
        </tr>
    </table>
            
        <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click" />
        <asp:Button ID="btnHuyBo" runat="server" Text="Hủy bỏ" OnClick="btnHuyBo_Click"/>
</form>
</asp:Content>

