<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="examon.aspx.cs" Inherits="student.examon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Razpiši izpitni rok</h1>
    <div>
        <ul style="width: 100%; text-align: center; list-style: none; padding: 0px;">
            <li>
                <span id="applysubject">Predmet: </span>
                
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT id, name FROM subject WHERE (examon = 0)"></asp:SqlDataSource>
                
            </li>
            <li><asp:Button ID="Button1" runat="server" Text="Razpiši" OnClick="Button1_Click" /></li>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </ul>
    </div>
</asp:Content>
