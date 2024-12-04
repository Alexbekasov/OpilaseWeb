<%@ Page Title="Meie Õpilased" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OpilaseWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p><%: Title %>.</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="opilaneID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="747px">
        <Columns>
            <asp:CommandField CancelText="Loobuda" DeleteText="Kustuta" InsertText="Lisa" NewText="Uus" ShowDeleteButton="True" />
            <asp:BoundField DataField="opilaneID" HeaderText="opilaneID" InsertVisible="False" ReadOnly="True" SortExpression="opilaneID" Visible="False" />
            <asp:BoundField DataField="opilanePerenimi" HeaderText="Perenimi" SortExpression="opilanePerenimi" />
            <asp:BoundField DataField="opilaneNimi" HeaderText="Eesnimi" SortExpression="opilaneNimi" />
            <asp:BoundField DataField="sunniaeg" DataFormatString="{0:d}" HeaderText="Sünniaeg" SortExpression="sunniaeg" />
            <asp:BoundField DataField="aadress" HeaderText="Aadress" SortExpression="aadress" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:opilasedTARConnectionString1 %>" DeleteCommand="DELETE FROM [opilaneTabel] WHERE [opilaneID] = @opilaneID" InsertCommand="INSERT INTO [opilaneTabel] ([opilaneNimi], [opilanePerenimi], [sunniaeg], [aadress]) VALUES (@opilaneNimi, @opilanePerenimi, @sunniaeg, @aadress)" ProviderName="<%$ ConnectionStrings:opilasedTARConnectionString1.ProviderName %>" SelectCommand="SELECT [opilaneID], [opilaneNimi], [opilanePerenimi], [sunniaeg], [aadress] FROM [opilaneTabel]" UpdateCommand="UPDATE [opilaneTabel] SET [opilaneNimi] = @opilaneNimi, [opilanePerenimi] = @opilanePerenimi, [sunniaeg] = @sunniaeg, [aadress] = @aadress WHERE [opilaneID] = @opilaneID">
        <DeleteParameters>
            <asp:Parameter Name="opilaneID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="opilaneNimi" Type="String" />
            <asp:Parameter Name="opilanePerenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="sunniaeg" />
            <asp:Parameter Name="aadress" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="opilaneNimi" Type="String" />
            <asp:Parameter Name="opilanePerenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="sunniaeg" />
            <asp:Parameter Name="aadress" Type="String" />
            <asp:Parameter Name="opilaneID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>&nbsp;</p>
    </asp:Content>
