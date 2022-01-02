<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="practising.register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
            body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .container {
            padding: 16px;
        }

        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>
    <br />
    <br />
    <br />
    <br />

		<div style="text-align: center;" class="alert alert-success" role="alert">
			<p style="text-align: center; font-size: 15px">
				<asp:Label ID="lblMessage" runat="server" EnableViewState="False" ForeColor ="#009933"></asp:Label>
                <asp:Label ID="lblerrormessage" runat="server" EnableViewState="False" ForeColor="#ff0000"></asp:Label>
			</p>
			<p class="alert-heading"><strong style="font-family:Bahnschrift,'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Register New User</strong>
			</p>
		</div>
        <div class="container">

            <table>
                <tr>
                    <td>
        <asp:TextBox ID="txtusername" runat="server" placeholder="Enter username" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ForeColor="Red" ErrorMessage="Username Field can't be blanked"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="">Please Select</asp:ListItem> 
                <asp:ListItem>Supper Admin</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Users</asp:ListItem>
            </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ForeColor="Red" ErrorMessage="Please select usertype!"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Register" ForeColor="#33cc33" />

                    </td>
                </tr>
            </table>


<%--        <asp:TextBox runat="server" ID="txtusertype" placeholder="Enter usertype"></asp:TextBox>--%>
<%--        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusertype" ForeColor="Red" ErrorMessage="Date Field can't be blanked"></asp:RequiredFieldValidator>--%>

        </div>


</asp:Content>
