<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="vregister.aspx.cs" Inherits="vregister" %>

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
        <br />
        </strong><span class="style5"><strong>VIEW REGISTRATIONS OF CLIENTS</strong></span></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" 
            GridLines="None" Height="324px" Width="909px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="csid" HeaderText="csid" SortExpression="csid" />
                <asp:BoundField DataField="csname" HeaderText="csname" 
                    SortExpression="csname" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" 
                    SortExpression="emailid" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="aadhar" HeaderText="aadhar" 
                    SortExpression="aadhar" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" SelectCommand="SELECT * FROM [register]">
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

