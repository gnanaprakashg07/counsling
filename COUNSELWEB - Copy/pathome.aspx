<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="pathome.aspx.cs" Inherits="pathome" %>

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
        <br class="style5" />
        <span class="style5">VIEW DOCTORS AVAILABILITY</span></strong>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="AccessDataSource1" Height="313px" Width="915px">
            <Columns>
                <asp:BoundField DataField="psyid" HeaderText="psyid" SortExpression="psyid" />
                <asp:BoundField DataField="psyname" HeaderText="psyname" 
                    SortExpression="psyname" />
                <asp:BoundField DataField="psyqual" HeaderText="psyqual" 
                    SortExpression="psyqual" />
                <asp:BoundField DataField="psygend" HeaderText="psygend" 
                    SortExpression="psygend" />
                <asp:BoundField DataField="psyemail" HeaderText="psyemail" 
                    SortExpression="psyemail" />
                <asp:BoundField DataField="psymob" HeaderText="psymob" 
                    SortExpression="psymob" />
                <asp:BoundField DataField="psyaddr" HeaderText="psyaddr" 
                    SortExpression="psyaddr" />
                <asp:BoundField DataField="psyspecial" HeaderText="psyspecial" 
                    SortExpression="psyspecial" />
                <asp:BoundField DataField="psygpoint" HeaderText="psygpoint" 
                    SortExpression="psygpoint" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [psdoctor] ORDER BY [psyname]">
        </asp:AccessDataSource>
    </p>
</asp:Content>

