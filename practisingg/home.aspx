<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="practising.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <header>
        <%-- ............................................. --%>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" media="all" href="https://www.time.ir/fa/SWResource/v1/0/Default/1dbbc7602f6d2a264790a9483244cdd8c29972636f9c215b2217b49619ab00f24bda385af181aee8e4d73d82daa6c1c7d60eee51ae2e2c6db1f6b35e833c3aa2.css" />
       
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
td {
    font-size: 16px;
}




/*.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.auto-style1 {
	width: 100%;
	margin: 0 auto;
}

.auto-style2 {
	width: 20%;
}

.sublink:hover {
	background: rgba(0, 169, 79, 0.52);
	padding-left: 40px;
}

.logo:hover {
	background: rgba(0, 169, 79, 0.45);
	/*border-bottom: 0.1em solid #00a94f;
}
            */

.ResTable {
	height: 100px;
	width: 120px;
	opacity: .9;
    /*color: #fff;*/

}

/*.ResTable:hover {
	opacity: 1;
	border-bottom: 5px outset #fff;
	background: rgba(0, 169, 79, 0.56);
    background: #00a94f;
    color: #FFF;
}*/
           

.iconLogo {
	float: left;
	margin-bottom: 20px;
	padding-right: 10px;
}

.tdText {
	padding-left: 10px;
	/*font-family: Bahnschrift;*/
/*font-family: Arial, Helvetica, sans-serif;*/
font-family: "Times New Roman", Georgia, serif;
	font-size: x-small;
	margin-top: -20px;
    color: #1d3c7f;
}

.tdText:hover {
	padding-left: 15px;
	color: #1d3c7f;

}

.linkText {
	border-left: 5px solid #00a94f;
	padding-left: 5px;

}

.linkText:hover {
	text-decoration: none;
	/*border-right: 7px solid #303233;*/
    	border-right: 5px solid #00a94f;

	padding-right: 5px;
	border-left: none;
	/*color: #f1f1f1;*/
}

/*.table tr {
  border-style: solid;
  border-color: #ffffff;
  border-bottom-color:  #00a94f;
  border-top-color: #00a94f;

}*/

/*table, th, td, tr {
  border: 10px solid #ffffff;
    border-bottom-color:  #00a94f;
  border-top-color: #00a94f;
}*/

        </style>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
        </header>
<%--      -------------------------- table --------------------------%>

<%--          --------------------------table ----------------------------%>
        
<br />
    <br />
    <br />
    <br />
    <br />


<div class="table-responsive" style="margin-bottom: 10px; align-content: center " >
	<table class="table" style="border:none">
		<tbody>
			<tr>
				<td class="ResTable">
					<div class="tdText">
						<asp:LinkButton PostBackUrl="~/views.aspx" CssClass="linkText" ID="LinkButton1" runat="server"> RECORDS</asp:LinkButton>
					</div>
					<br />
					<div class="tdText">
						<asp:LinkButton PostBackUrl="~/add_new_custome.aspx" CssClass="linkText" ID="LinkButton10" runat="server">ADD NEW</asp:LinkButton>
					</div>
					<br />
					<div class="tdText" style="margin-left:0px">
						<asp:LinkButton ID="LinkButton5" PostBackUrl="~/practise_pending.aspx" CssClass="linkText" runat="server">PENDING APPROVAL</asp:LinkButton>
					</div>
				</td>
				<td class="ResTable">
<%--					<div class="iconLogo">
						<asp:Image ID="Image2" runat="server" ImageUrl="~/image/VAULT.png" Height="30" Width="30" />
					</div>--%>
					<br />
					<div class="tdText">
						<asp:LinkButton PostBackUrl="~/wak.aspx" CssClass="linkText" ID="LinkButton2" runat="server">VAULT RECORDS</asp:LinkButton>
					</div>
					<br />
					<div class="tdText">
						<asp:LinkButton PostBackUrl="~/new_wak.aspx" CssClass="linkText" ID="LinkButton7" runat="server">NEW VAULT</asp:LinkButton>
					</div>
					<br />
					<div class="tdText">
						<asp:LinkButton ID="LinkButton6" PostBackUrl="~/wak_pending.aspx" CssClass="linkText"  runat="server">VAULT APPROVAL</asp:LinkButton>
					</div>
				</td>
				<td class="ResTable">
<%--					<div class="iconLogo">
						<asp:Image ID="Image3" runat="server" ImageUrl="~/image/deeds.png" Height="30" Width="30" />
					</div>--%>
					<br />
					<div class="tdText">
						<asp:LinkButton ID="LinkButton3" PostBackUrl="~/RTDL.aspx" CssClass="linkText"  runat="server">TITLE DEEDS</asp:LinkButton>
					</div>
					<br />
					<div class="tdText">
						<asp:LinkButton ID="LinkButton9" PostBackUrl="~/new_rtd.aspx" CssClass="linkText" runat="server">NEW DEEDS</asp:LinkButton>
					</div>
					<br />
					<div class="tdText">
						<asp:LinkButton  ID="LinkButton8" PostBackUrl="~/RTD_pending.aspx" CssClass="linkText" runat="server">DEEDS APPROVAL</asp:LinkButton>
					</div>
				</td>
			</tr>



		</tbody>
	</table>
</div>
<%--            -----------------------------table -----------------------------%>

    <br />
    <br />
        
<div class="table-responsive" style="padding-bottom:100px;float:right; ">
	<table>
		<tr>
			<td colspan="3" style="text-align:right;">
				<a href="Confirm.aspx" runat="server" id="userMsg" visible="false">
					<span class="fa fa-gear <%--fa-spin--%>" style="color: Blue; font-size: 15px">
					</span>
				</a>
				<asp:ImageButton ID="Newuser" runat="server" Height="15" ImageUrl="~/image/addnew.png"  ToolTip="Add new user" OnClick="Newuser_Click"/>
				<asp:ImageButton ID="signout" runat="server" Height="15px" ImageUrl="~/image/shutdown.jpg" ToolTip="Save your job(s) and exit" Width="15px" OnClick="signout_Click" />
			</td>
		</tr>
	</table>
</div>
</asp:Content>
