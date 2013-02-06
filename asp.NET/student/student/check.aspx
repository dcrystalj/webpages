<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="check.aspx.cs" Inherits="student.check" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Prijava na izpit </h1>
    <div id="conty">
         <ul>
            <li>
                <span id="applysubject">Predmet</span>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="True" DataTextField="name" DataValueField="id">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </li>
             
             <li>                 
                 <asp:Button ID="Button1" runat="server" Text="Prijavi se" style="margin-left:125px" OnClick="Button1_Click"/>
             </li>
         </ul>
        <asp:Label ID="Label1" runat="server" Text="Label" Width="50%"></asp:Label>
     
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT name, id FROM subject WHERE (id NOT IN (SELECT subject FROM exam WHERE (USER = @param))) AND (id NOT IN (SELECT subject FROM mark WHERE (USER = @param))) AND (examon = 1)">
            <SelectParameters>
                 <asp:SessionParameter Name="param" SessionField="id" Type="String" />
           </SelectParameters>
        </asp:SqlDataSource>
  
    </div>
</asp:Content>
