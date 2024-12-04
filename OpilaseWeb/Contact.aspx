<%@ Page Title="Lisa õpilane" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OpilaseWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Lisa uus õpilane</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="opilaneID" DataSourceID="SqlDataSource1opilane" DefaultMode="Insert" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:BoundField DataField="opilaneID" HeaderText="opilaneID" InsertVisible="False" ReadOnly="True" SortExpression="opilaneID" />
            <asp:BoundField DataField="opilaneNimi" HeaderText="opilaneNimi" SortExpression="opilaneNimi" />
            <asp:BoundField DataField="opilanePerenimi" HeaderText="opilanePerenimi" SortExpression="opilanePerenimi" />
            <asp:TemplateField HeaderText="sunniaeg" SortExpression="sunniaeg">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sunniaeg") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("sunniaeg") %>' Width="229px"></asp:Calendar>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("sunniaeg") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="aadress" HeaderText="aadress" SortExpression="aadress" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
</asp:DetailsView>
    
    <asp:SqlDataSource ID="SqlDataSource1opilane" runat="server" ConnectionString="<%$ ConnectionStrings:opilasedTARConnectionString1 %>" DeleteCommand="DELETE FROM [opilaneTabel] WHERE [opilaneID] = @opilaneID" InsertCommand="INSERT INTO [opilaneTabel] ([opilaneNimi], [opilanePerenimi], [sunniaeg], [aadress]) VALUES (@opilaneNimi, @opilanePerenimi, @sunniaeg, @aadress)" SelectCommand="SELECT * FROM [opilaneTabel]" UpdateCommand="UPDATE [opilaneTabel] SET [opilaneNimi] = @opilaneNimi, [opilanePerenimi] = @opilanePerenimi, [sunniaeg] = @sunniaeg, [aadress] = @aadress WHERE [opilaneID] = @opilaneID">
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
    
    </address>
</asp:Content>
