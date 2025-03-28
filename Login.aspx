<%@ Page Title="" Language="C#" MasterPageFile="~/Makan.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Makaan.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container col-md-12 px-5">
        <div class="wow fadeInUp" data-wow-delay="0.5s">
            <div class="d-flex flex-column justify-content-center align-items-center my-5">
                <h1 class="fw-bold">Welcome back</h1>
                <p class="">Please Login via Email and Password </p>
            </div>   
            <div class="row g-3 my-4">
                <div class="form-floating">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address" TextMode="Email" required></asp:TextBox>
                    <label for="txtEmail">Email Address</label>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" required></asp:TextBox>
                    <label for="txtPassword">Password</label>
                </div>  
            </div>
            <div class="col-12">
                <button class="btn btn-primary w-100 py-3" type="submit">Login</button>
            </div>
        </div>
    </div>
</asp:Content>
