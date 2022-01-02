<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="practising.signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <br />
    <br />
    <div id="form1" runat="server">  
    Userid:  
    <asp:TextBox ID ="textbox1" runat ="server" ></asp:TextBox><br />  
    Password:  
    <asp:TextBox ID ="textbox2" runat ="server" TextMode ="Password"  ></asp:TextBox><br />  
    <asp:CheckBox ID ="rememberme" runat="server"  Text ="remember Password" /><br />  
    <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Value="">Please Select</asp:ListItem> 
    <asp:ListItem>Supper Admin</asp:ListItem>
    <asp:ListItem>Admin</asp:ListItem>
    <asp:ListItem>Users</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID ="Login" runat ="server" Text ="Login" onclick="Login_Click" />  
    </div>  

</asp:Content>
