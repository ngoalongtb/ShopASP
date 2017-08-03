<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:SqlDataSource ID="sqldsCategoryDetail" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT DISTINCT [tenDanhMuc] FROM [DanhMuc] WHERE ([MaDanhMuc] = @MaDanhMuc)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDanhMuc" QueryStringField="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="lvCateName" runat="server" DataSourceID="sqldsCategoryDetail">
            <ItemTemplate>
                <h1><%# Eval("tenDanhMuc") %></h1>
            </ItemTemplate>    
        </asp:ListView>

    </div>
    <div class="row">
        <asp:SqlDataSource ID="sqldsHang" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [Hang] WHERE ([MaDanhMuc] = @MaDanhMuc)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaDanhMuc" QueryStringField="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaHang" DataSourceID="sqldsHang">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="item">
                        <div class="itemTop">
                            <div class="itemHeader">
                                <h2><%# Eval("TenHang") %></h2>
                                <h3><%# Eval("MaHang") %></h3>
                            </div>
                            <div class="itemImage">
                                <a href="ChiTiet.aspx?MaHang=<%# Eval("MaHang") %>">
                                    <img src="public/images/<%# Eval("Anh") %>" alt="Alternate Text" width="250" height="333"/>
                                </a>
                            </div>
                        </div>
                        <div class="itemFooter">
                            <div class="itemPrice">
                                <h3><%# Eval("GiaHang") %></h3>
                            </div>
                            <div class="itemButton">
                                Buy
                            </div>
                        </div> 
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>

    </div>
    
</asp:Content>

