<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="inputmarks.aspx.cs" Inherits="student.inputmarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type = "text/javascript"  src = "static/validateinputmarks.js" ></script>
    <h1 id="inputmarkstitle"> Vnos ocen </h1>
    <div id="conty">
        <ul>
            <li>
                <label>
                    <span id="useridname">Vpisna študenta:</span>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id"></asp:DropDownList>
                        
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT id, name, surname FROM user WHERE status=1 ORDER BY id, name"></asp:SqlDataSource>
                </label>
            </li><li>
                <span id="applysubject">Predmet:</span>
                <asp:DropDownList ID="subject" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT id, name FROM subject ORDER BY id, name"></asp:SqlDataSource>
            </li><li>
                <span id="grade">Ocena:</span>
                <asp:DropDownList ID="mark" runat="server">
                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                    <asp:ListItem Value="6" Text="6"></asp:ListItem>
                    <asp:ListItem Value="7" Text="7"></asp:ListItem>
                    <asp:ListItem Value="8" Text="8"></asp:ListItem>
                    <asp:ListItem Value="9" Text="9"></asp:ListItem>
                    <asp:ListItem Value="10" Text="10"></asp:ListItem>
                </asp:DropDownList>
            </li><li>
            <span id="year">Letnik:</span>
                <asp:DropDownList ID="yearlist" runat="server">
                    <asp:ListItem Value="1" Text="1"></asp:ListItem>
                    <asp:ListItem Value="2" Text="2"></asp:ListItem>
                    <asp:ListItem Value="3" Text="3"></asp:ListItem>
                </asp:DropDownList>
            </li><li></li><li>
                <asp:Button ID="submitgrade" runat="server" Text="Vpiši" OnClick="Button1_Click" Width="100px" style="margin-left:100px;" />
            </li>
            <li style='margin-left:130px'>
                <asp:Label ID="Label1" runat="server" Text="Label" style="margin-left:100px;"></asp:Label>
            </li>
        </ul>
    </div>
</asp:Content>
