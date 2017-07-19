<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-4">
            <div class="item">
                <div class="itemTop">
                    <div class="itemHeader">
                        <h2>Lorem ipsum dolor sit amet</h2>
                        <h3>Lorem ipsum</h3>
                    </div>
                    <img src="pic.jpg" alt="Alternate Text" />
                </div>
                <div class="itemFooter">
                    <div class="itemPrice">
                        <h3>50.000</h3>
                    </div>
                    <div class="itemButton">
                        Buy
                    </div>
                </div> 
            </div>
        </div>
        <div class="col-md-4">
            <div class="item">

            </div>
        </div>
        <div class="col-md-4">
            <div class="item">

            </div>
        </div>
    </div>
</asp:Content>

