<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 310px;
        height: 218px;
    }
    .style5
    {
        width: 326px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<table class="style3">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            <img alt="ds" class="style4" src="images/3475821.png" /></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <b>ENTER THE USERNAME</b></td>
        <td class="style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Must have a Username" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <b>ENTER THE PASSWORD</b></td>
        <td class="style5">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Must have a Password" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="RESET" onclick="Button2_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

