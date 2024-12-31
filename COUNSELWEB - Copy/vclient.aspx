<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="vclient.aspx.cs" Inherits="vclient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <strong>
        <br />
        SEARCH CLIENTS</strong></p>
    <p>
        ENTER CUSTOMER-ID
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="SEARCH" />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="AccessDataSource1" GridLines="Horizontal" 
            Height="508px" Width="902px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
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
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [register] WHERE ([csid] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="csid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

