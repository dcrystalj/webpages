<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="student.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="inputmarkstitle"> Registriraj uporabnika</h1>
<div id="conty">
    <ul><li><label>
            <span>ime:</span>
            <asp:TextBox runat="server" id="name"   ></asp:TextBox>
        </label></li><li><label>
            <span>priimek:</span>
            <asp:TextBox runat="server" id="surname"   ></asp:TextBox>
        </label></li><li><label>
            <span>mail:</span>
           <asp:TextBox runat="server" id="mail"  ></asp:TextBox>
        </label></li><li><label>
            <span>vpisna št.:</span>
            <asp:TextBox runat="server" id="studentid"   ></asp:TextBox>
        </label></li><li><label>
            <span>geslo:</span>
            <asp:TextBox runat="server" id="passwd"   ></asp:TextBox>
        </label></li><li>
            <asp:Button ID="Button1" runat="server" Text="Vpiši" Width="100px" OnClick="Button1_Click" style="margin-left:100px;" />
        </li>
    </ul>
    <div style="text-align:center;">
    <asp:Label ID="Label1" runat="server" Text="" style="margin-left:100px;"></asp:Label>
        </div>
    <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="name" errormessage="Polje ime je obvezno" />
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="surname" errormessage="Polje priimek je obvezno" />
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="mail" errormessage="Polje mail je obvezno" />
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="studentid" errormessage="Polje id je obvezno" />
    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="passwd" errormessage="Polje geslo je obvezno" />
</div>
</asp:Content>
