<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqldsSoTaiKhoan" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select count(*) from TaiKhoan"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqldsSoDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select count(*) from DanhMuc"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqldsSoHang" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select count(*) from Hang"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqldsSoHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select count(*) from HoaDon"></asp:SqlDataSource>
    </div>
    <h1>Admin</h1>

            <div class="row">
                <div class="col-md-3">
                    <div class="item-manager item1">
                        <div class="item-manager-content">
                            <span class="glyphicon glyphicon-user"></span>
                            <div>
                                <div class="number">
                                    <asp:Label ID="lblSoTaiKhoan" runat="server" CssClass="number" Text="26"></asp:Label>
                                </div>
                                <div class="title">Tài khoản</div>
                            </div>
                        </div>
                        <div class="item-manager-footer">
                            <a href="QuanLyTaiKhoan.aspx">Quản lý <span class="glyphicon glyphicon-arrow-right"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-manager item2">
                        <div class="item-manager-content">
                            <span class="glyphicon glyphicon-duplicate"></span>
                            <div>
                                <div class="number">
                                    <asp:Label ID="lblSoDanhMuc" runat="server" CssClass="number" Text="26"></asp:Label>
                                </div>
                                <div class="title">Danh mục</div>
                            </div>
                        </div>
                        <div class="item-manager-footer">
                            <a href="QuanLyDanhMuc.aspx">Quản lý <span class="glyphicon glyphicon-arrow-right"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-manager item3">
                        <div class="item-manager-content">
                            <span class="glyphicon glyphicon-briefcase"></span>
                            <div>
                                <div class="number">
                                    <asp:Label ID="lblSoHang" runat="server" CssClass="number" Text="26"></asp:Label>
                                </div>
                                <div class="title">Hàng</div>
                            </div>
                        </div>
                        <div class="item-manager-footer">
                            <a href="QuanLyHang.aspx">Quản lý <span class="glyphicon glyphicon-arrow-right"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="item-manager  item4">
                        <div class="item-manager-content">
                            <span class="glyphicon glyphicon-tasks"></span>
                            <div>
                                <div class="number">
                                    <asp:Label ID="lblSoHoaDon" runat="server" CssClass="number" Text="26"></asp:Label>
                                </div>
                                <div class="title">Hóa đơn</div>
                            </div>
                        </div>
                        <div class="item-manager-footer">
                            <a href="QuanLyHoaDon.aspx">Quản lý <span class="glyphicon glyphicon-arrow-right"></span></a>
                        </div>
                    </div>
                </div>
            </div>
    </form>
</asp:Content>

