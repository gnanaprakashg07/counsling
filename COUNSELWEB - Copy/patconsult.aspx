<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="patconsult.aspx.cs" Inherits="patconsult" %>

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
        <br />
        <strong><span class="style5">VIEW CONSULTATION OUTCOME FROM DOCTOR</span></strong></p>
    <p>
        <strong>ENTER PATIENT ID </strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataSourceID="AccessDataSource1" GridLines="Horizontal" Height="267px" 
            Width="909px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="consid" HeaderText="consid" 
                    SortExpression="consid" />
                <asp:BoundField DataField="patid" HeaderText="patid" SortExpression="patid" />
                <asp:BoundField DataField="docname" HeaderText="docname" 
                    SortExpression="docname" />
                <asp:BoundField DataField="consdate" HeaderText="consdate" 
                    SortExpression="consdate" />
                <asp:BoundField DataField="theraphies" HeaderText="theraphies" 
                    SortExpression="theraphies" />
                <asp:BoundField DataField="recomd" HeaderText="recomd" 
                    SortExpression="recomd" />
                <asp:BoundField DataField="followups" HeaderText="followups" 
                    SortExpression="followups" />
                <asp:BoundField DataField="nxtdate" HeaderText="nxtdate" 
                    SortExpression="nxtdate" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/counsel.mdb" 
            SelectCommand="SELECT * FROM [consult] WHERE ([patid] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="patid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

