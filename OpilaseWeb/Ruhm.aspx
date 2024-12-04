<%@ Page Title="Meie Õpilased" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OpilaseWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p><%: Title %>.</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="RuhmID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="747px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="RuhmID" HeaderText="RuhmID" InsertVisible="False" ReadOnly="True" SortExpression="RuhmID" />
                <asp:BoundField DataField="RuhmNimi" HeaderText="Rühma Nimi" SortExpression="RuhmNimi" />
                <asp:BoundField DataField="Oppeaasta" HeaderText="Õppeaasta" SortExpression="Oppeaasta" />
                <asp:BoundField DataField="Ruhmajuhataja" HeaderText="Rühmajuhataja" SortExpression="Ruhmajuhataja" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RuhmadConnectionString1 %>" DeleteCommand="DELETE FROM [Ruhm] WHERE [RuhmID] = @RuhmID" InsertCommand="INSERT INTO [Ruhm] ([RuhmNimi], [Oppeaasta], [Ruhmajuhataja]) VALUES (@RuhmNimi, @Oppeaasta, @Ruhmajuhataja)" SelectCommand="SELECT * FROM [Ruhm]" UpdateCommand="UPDATE [Ruhm] SET [RuhmNimi] = @RuhmNimi, [Oppeaasta] = @Oppeaasta, [Ruhmajuhataja] = @Ruhmajuhataja WHERE [RuhmID] = @RuhmID">
            <DeleteParameters>
                <asp:Parameter Name="RuhmID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RuhmNimi" Type="String" />
                <asp:Parameter Name="Oppeaasta" Type="Int32" />
                <asp:Parameter Name="Ruhmajuhataja" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RuhmNimi" Type="String" />
                <asp:Parameter Name="Oppeaasta" Type="Int32" />
                <asp:Parameter Name="Ruhmajuhataja" Type="String" />
                <asp:Parameter Name="RuhmID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>&nbsp;</p>
    </asp:Content>
