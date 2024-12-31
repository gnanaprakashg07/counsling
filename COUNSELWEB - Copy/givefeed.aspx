<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="givefeed.aspx.cs" Inherits="givefeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style5
        {
            color: #000000;
            font-weight: bold;
            font-size: medium;
            text-align: left;
        }
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            width: 256px;
            height: 256px;
            font-size: medium;
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <strong><span class="style7">SHARE YOUR FEEDBACK</span></strong></p>
    <table class="style3">
        <tr>
            <td class="style5">
                ENTER YOUR NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                APPOINTMENT DATE (DD/MM/YYYY)</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                PYSCHOLOGIST NAME</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                FEEDBACK</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="95px" TextMode="MultiLine" 
                    Width="244px" CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
                    CssClass="style6" />
                <asp:Button ID="Button2" runat="server" Text="RESET" onclick="Button2_Click" 
                    CssClass="style6" />
            </td>
        </tr>
        <tr class="style6">
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

