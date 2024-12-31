<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            font-size: x-large;
            color: #CC0000;
        }
        .style5
        {
            color: #000000;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
        <strong><span class="style4">SHARE YOUR FEEDBACK</span></strong></p>
    <table class="style3">
        <tr>
            <td class="style5">
                ENTER YOUR NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                APPOINTMENT DATE (DD/MM/YYYY)</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                PYSCHOLOGIST NAME</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                FEEDBACK</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="95px" TextMode="MultiLine" 
                    Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
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
    &nbsp;</p>
</asp:Content>

