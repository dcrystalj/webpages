<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="marks.aspx.cs" Inherits="student.marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Ocene </h1>
    <div id="conty">
     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tt3710ConnectionString %>" ProviderName="<%$ ConnectionStrings:tt3710ConnectionString.ProviderName %>" SelectCommand="SELECT subject.id, subject.name AS Predmet, mark.mark AS Ocena, mark.year AS Leto FROM mark INNER JOIN subject ON mark.subject = subject.id WHERE (mark.`user` = @param1)">
            <SelectParameters>
                 <asp:SessionParameter Name="param1" SessionField="id" Type="String" />
           </SelectParameters>
        </asp:SqlDataSource>    
        <br />
        <br /> 
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1" eventname="SelectedIndexChanged" />
                
            </Triggers>
            <ContentTemplate>
             <asp:Label ID="Label1" runat="server" Text="Label" Width="95%"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
    <script type = "text/javascript"  src = "static/prikazocen.js" ></script>
</asp:Content>
