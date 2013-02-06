<%@ Page Title="" Language="C#" MasterPageFile="~/mLogin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="student.login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <h1 id="logintitle"> Prijava</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <ul id="logintags">
            <li id="enteruser">Vpisna stevilka</li> <li><asp:TextBox runat="server" id="loginusername"  /></li>
            <li id="enterpass">Geslo</li> <li><asp:TextBox runat="server" id="loginpassword" TextMode="Password" /></li>
            <li>zapomni si <input type="checkbox" name="remember" value="yes" checked></li>
            <li><asp:Button runat="server" id="submit" text="Prijava" OnClick="submit_Click" /></li>
            <li style="font-size:10px;color:red;"><asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="loginusername" errormessage="Uporabniško ime je obvezno" /></li>
            <li  style="font-size:10px;color:red;"><asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="loginpassword" errormessage="Geslo je obvezno" /></li>
        </ul>
</asp:Content>
