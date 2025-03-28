<%@ Page Title="" Language="C#" MasterPageFile="~/Makan.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Makaan.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container-fluid col-md-12 px-5">
        <div class="wow fadeInUp" data-wow-delay="0.5s">
            <div class="my-5 d-flex flex-column justify-content-center align-items-center">
                <h1 class="fw-bold">Welcome to Makaan</h1>
                <p class="">Register now to explore and list properties effortlessly. Get access to exclusive real estate deals.</p
            </div>
            <div class="row g-3 my-4">
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" Placeholder="First Name" required></asp:TextBox>
                        <label for="txtFirstName">First Name</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" Placeholder="Last Name" required></asp:TextBox>
                        <label for="txtLastName">Last Name</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" Placeholder="Email Address" required></asp:TextBox>
                        <label for="txtEmail">Email Address</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" Placeholder="Phone Number" required></asp:TextBox>
                        <label for="txtPhone">Phone Number</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" Placeholder="Password" required></asp:TextBox>
                        <label for="txtPassword">Password</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" TextMode="Password" Placeholder="Confirm Password" required></asp:TextBox>
                        <label for="txtConfirmPassword">Confirm Password</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:TextBox ID="txtCity" CssClass="form-control" runat="server" Placeholder="City/Location" required></asp:TextBox>
                        <label for="txtCity">City</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <asp:DropDownList ID="ddlUserType" CssClass="form-control" runat="server" required>
                            <asp:ListItem Text="Select User Type" Value="" Disabled="True" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Buyer" Value="Buyer"></asp:ListItem>
                            <asp:ListItem Text="Seller" Value="Seller"></asp:ListItem>
                        </asp:DropDownList>
                        <label for="ddlUserType">User Type</label>
                    </div>
                </div>
                <div class="col-12">
                    <asp:Button ID="btnRegister" CssClass="btn btn-primary w-100 py-3" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
