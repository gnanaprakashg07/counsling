<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="vappoint.aspx.cs" Inherits="vappoint" %>

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
        <span class="style5">VIEW APPOINTMENT</span></strong><br />
        <br />
        <strong><span class="style5">SELECT DOCTOR NAME : </span>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="doctname" 
            DataValueField="doctname" Height="16px" Width="127px">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT [doctname] FROM [appoint] ORDER BY [doctname]">
        </asp:AccessDataSource>
        <asp:Button ID="Button1" runat="server" Text="View" />
        </strong>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="AccessDataSource2" ForeColor="Black" GridLines="Vertical" 
            Height="319px" Width="914px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="appno" HeaderText="appno" SortExpression="appno" />
                <asp:BoundField DataField="apppatient" HeaderText="apppatient" 
                    SortExpression="apppatient" />
                <asp:BoundField DataField="doctname" HeaderText="doctname" 
                    SortExpression="doctname" />
                <asp:BoundField DataField="doapp" HeaderText="doapp" SortExpression="doapp" />
                <asp:BoundField DataField="appprob" HeaderText="appprob" 
                    SortExpression="appprob" />
                <asp:BoundField DataField="toapp" HeaderText="toapp" SortExpression="toapp" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [appoint] WHERE ([doctname] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="doctname" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

