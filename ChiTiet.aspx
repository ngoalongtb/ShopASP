<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 384px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDsChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:KieuShopConnectionString %>" SelectCommand="SELECT * FROM [Hang] WHERE ([MaHang] = @MaHang)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaHang" QueryStringField="MaHang" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     <br />
    <table class="nav-justified" >
        <tr>
            <td class="auto-style1" >
                <asp:GridView ID="gvChiTietHang" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDsChiTiet" OnRowCommand="gvChiTietHang_RowCommand" Width="401px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MaHang" HeaderText="Mã Hàng">
                        <ControlStyle Width="50px" />
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenHang" HeaderText="Tên Hàng">
                        <ControlStyle Width="50px" />
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GiaHang" HeaderText="Giá">
                        <ControlStyle Width="50px" />
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:ButtonField Text="Thêm vào giỏ">
                        <ControlStyle Width="100px" BackColor="#FF6600" BorderColor="#FF3300" />
                        <ItemStyle Width="100px" />
                        </asp:ButtonField>
                    </Columns>
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
            </td>
            <td rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td rowspan="3">
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDsChiTiet" Width="338px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/public/images/{0}" ShowHeader="False">
                            <ControlStyle Height="400px" Width="300px" />
                            <ItemStyle BorderWidth="50px" HorizontalAlign="Center" Width="400px" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDsChiTiet" Width="399px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MoTa" HeaderText="Mô tả">
                        <ItemStyle Width="400px" />
                        </asp:BoundField>
                    </Columns>
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
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
    
    <br />
</asp:Content>

