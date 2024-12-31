<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="conreply.aspx.cs" Inherits="conreply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 402px;
        }
        .style7
        {
            width: 402px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <table class="style5">
            <tr>
                <td class="style6">
                    <strong>ENTER THE CONSULTATION-ID</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SEARCH" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    PATIENT ID</td>
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
                    CONSULTATION DATE</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    THERAPHIES</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    RECOMMENDATIONS</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="87px" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    FOLLOW-UPS</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="95px" Width="239px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    NEXT DATE OF CONSULT</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
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
    </p>
</asp:Content>

