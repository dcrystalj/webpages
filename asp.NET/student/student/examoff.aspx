<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="examoff.aspx.cs" Inherits="student.examoff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Zaključi prijave</h1>
    <ul style="width: 100%; text-align: center; list-style: none; padding: 0px;">
        <li>
            <span id="applysubject">Predmet: </span>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT id, name FROM subject WHERE examon=1 ORDER BY id, name"></asp:SqlDataSource>
        </li>
        <li>
            <asp:Button ID="Button1" runat="server" Text="Zaključi" OnClick="Button1_Click" />
        </li>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </ul>

</asp:Content>
