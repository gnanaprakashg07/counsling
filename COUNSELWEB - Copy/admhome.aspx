<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admhome.aspx.cs" Inherits="admhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <strong>
        <br class="style5" />
        <span class="style5">WELCOME ADMINISTRATOR</span></strong></p>
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
            Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
            Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource1" 
            ForeColor="#333333" GridLines="None" Height="360px" Width="909px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="csname" HeaderText="csname" 
                    SortExpression="csname" />
                <asp:BoundField DataField="apdate" HeaderText="apdate" 
                    SortExpression="apdate" />
                <asp:BoundField DataField="psyname" HeaderText="psyname" 
                    SortExpression="psyname" />
                <asp:BoundField DataField="feedb" HeaderText="feedb" SortExpression="feedb" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [feedback] ORDER BY [apdate]">
        </asp:AccessDataSource>
    </p>
</asp:Content>

