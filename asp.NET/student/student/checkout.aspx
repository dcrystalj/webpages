<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="student.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Odjava od izpita </h1>
    <div id="conty">
         <ul>
            <li>
                <span id="applysubject">Predmet</span>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="name" DataValueField="id">
                </asp:DropDownList>
            </li>
             <li>
                 <asp:Button ID="Button1" runat="server" Text="Odjavi se" style="margin-left:125px" OnClick="Button1_Click" />
             </li>
         </ul>
        <asp:Label ID="Label1" runat="server" Text="Label" Width="50%"></asp:Label>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT subject.name as name, exam.subject AS id FROM exam LEFT OUTER JOIN subject ON subject.id = exam.subject WHERE (exam.`user` = @param) AND (subject.examon = 1)">
        <SelectParameters>
                 <asp:SessionParameter Name="param" SessionField="id" Type="String" />
           </SelectParameters>
        </asp:SqlDataSource>
  
    </div>
</asp:Content>
