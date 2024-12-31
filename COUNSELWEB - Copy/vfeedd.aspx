<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="vfeedd.aspx.cs" Inherits="vfeedd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="AccessDataSource1" GridLines="Horizontal" Height="548px" 
            Width="907px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="csname" HeaderText="csname" 
                    SortExpression="csname" />
                <asp:BoundField DataField="apdate" HeaderText="apdate" 
                    SortExpression="apdate" />
                <asp:BoundField DataField="psyname" HeaderText="psyname" 
                    SortExpression="psyname" />
                <asp:BoundField DataField="feedb" HeaderText="feedb" SortExpression="feedb" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [feedback] ORDER BY [apdate] DESC">
        </asp:AccessDataSource>
    </p>
</asp:Content>

