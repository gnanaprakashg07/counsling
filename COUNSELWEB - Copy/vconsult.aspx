<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="vconsult.aspx.cs" Inherits="vconsult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <strong>
        <br />
        VIEW CONSULT</strong></p>
    <p>
        SELECT THE PATIENT ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="VIEW" />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataSourceID="AccessDataSource1" Height="412px" 
            Width="911px" AllowPaging="True">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
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
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
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

