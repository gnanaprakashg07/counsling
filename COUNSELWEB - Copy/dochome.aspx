<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="dochome.aspx.cs" Inherits="dochome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">


        .style5
        {
            font-size: large;
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <strong><span class="style5">MODIFY PYSCHOLOGIST INFORMATION</span></strong></p>
    <table class="style6">
        <tr>
            <td class="style7">
                PYSCHOLOGIST ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="FIND" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                PYSCHOLOGIST NAME</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                QUALIFICATION</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                GENDER</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                EMAIL</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                MOBILE</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                ADDRESS</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                SPECIALITY</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                GRADEPOINTS</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="MODIFY" />
                <asp:Button ID="Button2" runat="server" Text="RESET" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
    </asp:Content>

