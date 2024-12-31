<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vfeedback.aspx.cs" Inherits="vfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: large;
            color: #003366;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <span class="style5"><strong>VIEW FEEDBACK</strong></span></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="AccessDataSource1" Height="297px" Width="917px">
            <Columns>
                <asp:BoundField DataField="csname" HeaderText="csname" 
                    SortExpression="csname" />
                <asp:BoundField DataField="apdate" HeaderText="apdate" 
                    SortExpression="apdate" />
                <asp:BoundField DataField="psyname" HeaderText="psyname" 
                    SortExpression="psyname" />
                <asp:BoundField DataField="feedb" HeaderText="feedb" SortExpression="feedb" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" SelectCommand="SELECT * FROM [feedback]">
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

