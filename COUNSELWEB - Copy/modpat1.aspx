<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="modpat1.aspx.cs" Inherits="modpat1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style5
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <strong>
    <br />
    PATIENT ID &amp; DATA MODIFIER</strong></p>
    <p>
        <strong><span class="style5">UPDATE PATIENT DETAILS</span></strong></p>
<table class="style4" style="height: 458px; width: 909px">
    <tr>
        <td class="style5">
            CUSTOMER NAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="SEARCH" />
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
        </td>
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
            <asp:Button ID="Button1" runat="server" Text="UPDATE" 
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
<p>
</p>
<p>
</p>
</asp:Content>

