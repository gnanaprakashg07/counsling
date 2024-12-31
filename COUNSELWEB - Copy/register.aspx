<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style3
    {
        font-size: x-large;
    }
    .style4
    {
        width: 100%;
    }
    .style5
    {
        color: #000000;
        font-weight: bold;
    }
    .style6
    {
        color: #CC0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style6">
    <strong>
    <br />
    </strong><span class="style3"><strong>Registration Form</strong></span></p>
<table class="style4">
    <tr>
        <td class="style5">
            CUSTOMER NAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            GENDER</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            AGE</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            E-MAIL ID</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            MOBILE NUMBER</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            AADHAR NUMBER</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            ADDRESS</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            DATE OF JOIN</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="REGISTER" 
                onclick="Button1_Click" />
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="RESET" onclick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

