<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:SqlDataSource ID="sqldsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
    </div>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="MaDanhMuc" DataSourceID="sqldsCategory">
        <ItemTemplate>
            <div class="row">
                <asp:HiddenField ID="HiddenField1" runat="server" value='<%# Eval("MaDanhMuc") %>'/>
                <div class="col-md-12">
                    
                    <a href="Shop.aspx?category=<%# Eval("MaDanhMuc") %>"><h2 class='title'><%# Eval("tenDanhMuc") %></h2></a>
                </div>
                <asp:SqlDataSource ID="sqlds3Product" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="select Top 3 * from Hang where maDanhMuc = @maDanhMuc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="maDanhMuc" PropertyName="Value" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView3" runat="server" DataKeyNames="MaHang" DataSourceID="sqlds3Product">
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
                                <a href="ChiTiet.aspx?MaHang=<%# Eval("MaHang") %>">Chi tiết</a>
                            </div>
                        </div> 
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
            </div>
        </ItemTemplate>
        </asp:ListView>
</asp:Content>

