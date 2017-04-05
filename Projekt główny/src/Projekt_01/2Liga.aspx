<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2Liga.aspx.cs" Inherits="Projekt_01._2Liga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Widok2Liga">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                    Visible="False" />
                <asp:TemplateField HeaderText="Nazwa klubu">
                    <ItemTemplate>
                        <%#XPath("Nazwa_klubu") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Miasto">
                    <ItemTemplate>
                        <%#XPath("Miasto") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="XmlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:TemplateField HeaderText="Nazwa klubu">
                    <ItemTemplate>
                        <%#XPath("Nazwa_klubu") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Miasto">
                    <ItemTemplate>
                        <%#XPath("Miasto") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Adres">
                    <ItemTemplate>
                        <%#XPath("Adres") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Strona internetowa">
                    <ItemTemplate>
                        <%#XPath("Strona_internetowa") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rok założenia">
                    <ItemTemplate>
                        <%#XPath("Rok_założenia") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stadion (nazwa, pojemność i adres)">
                    <ItemTemplate>
                        <%#XPath("Stadion") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>           
        </asp:DetailsView>
        <br />
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/ListyKlubow/ListaKlubow2Ligi.xml">
    </asp:XmlDataSource>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/ListyKlubow/ListaKlubow2Ligi.xml">
    </asp:XmlDataSource>
    </form>
</body>
</html>
