<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="bookapp.aspx.cs" Inherits="bookapp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 391px;
        }
        .style7
        {
            width: 391px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <strong>BOOK APPOINTMENT</strong></p>
    <table class="style5">
        <tr>
            <td class="style7">
                APPOINTMENT NUMBER</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                PATIENT NAME</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                DOCTOR NAME</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                DATE OF APPOINTMENT</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                PROBLEMS IDENTIFIED IN PATIENT</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                TIME OF APPOINTMENT</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="BOOK" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="RESET" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

