<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customer_update.aspx.cs" Inherits="practising.customer_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
<header>

	<style>
	</style>
</header>
<div style="border-top: 10px solid #0094ff; margin-top: -10px; text-align:center" class="alert alert-success" role="alert">
	<h4 class="alert-heading" style="font-family: Bahnschrift;"><strong>
            <asp:Label ID="pageLable" runat="server" Text="AIB ARCHIVE RECORD SHEET"></asp:Label></strong></h4>
    <br />

</div>
                <div style="text-align: center;" class="alert alert-success" role="alert">
                <p style="text-align: center; font-size: 15px">
                    <asp:Label ID="msg" Text="" runat="server" ForeColor="Red" EnableViewState="false" />
                </p>
            </div>
<div class="row" dir="rtl">

        <div class="col-sm-6">
			<div class="form-group-sm">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtfname" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
				<asp:Label ID="Label1" runat="server" Text="ولد" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>
                <asp:TextBox ID="txtfname" runat="server" type="text" class="form-control" required="required"></asp:TextBox>
			</div>
		</div>
        <div class="col-sm-6">
			<div class="form-group-sm">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtname" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
                 <asp:Label ID="Label2" runat="server" Text="اسم" Font-Names="Bahnschrift"  dir="rtl" Font-Size="x-small"></asp:Label>
                <asp:TextBox ID="txtname" runat="server" type="text" class="form-control" required="required"></asp:TextBox>
			</div>
		</div>
        <div class="col-sm-6">
			<div class="form-group-sm">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtcmoney" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
				<asp:Label ID="Label3" runat="server" Text="اصل مقدر پول" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>
                <asp:TextBox ID="txtcmoney" runat="server" type="text" class="form-control" required="required"></asp:TextBox>
			</div>
		</div>
             <div class="col-sm-6">
			<div class="form-group-sm">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtlocation" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
			<asp:Label ID="Label4" runat="server" Text="موقیعت" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>
			<asp:TextBox ID="txtlocation" runat="server" class="form-control" required="required"></asp:TextBox>
		 </div>
         </div>
            <div class="col-sm-6"> 
                			                <asp:Label ID="Label5" runat="server" Text="Date" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>

			<div class="form-group-sm">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtlocation" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>

                          <div class="dropdown" style="display:inline">
  <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                                          <asp:ListItem>1300</asp:ListItem>
                                          <asp:ListItem>1301</asp:ListItem>
                                          <asp:ListItem>1302</asp:ListItem>
                                          <asp:ListItem>1303</asp:ListItem>
                                          <asp:ListItem>1304</asp:ListItem>
                                          <asp:ListItem>1305</asp:ListItem>
                                          <asp:ListItem>1306</asp:ListItem>
                                          <asp:ListItem>1307</asp:ListItem>
                                          <asp:ListItem>1308</asp:ListItem>
                                          <asp:ListItem>1309</asp:ListItem>
                                          <asp:ListItem>1310</asp:ListItem>
                                          <asp:ListItem>1311</asp:ListItem>
                                          <asp:ListItem>1312</asp:ListItem>
                                          <asp:ListItem>1313</asp:ListItem>
                                          <asp:ListItem>1314</asp:ListItem>
                                          <asp:ListItem>1315</asp:ListItem>
                                          <asp:ListItem>1316</asp:ListItem>
                                          <asp:ListItem>1317</asp:ListItem>
                                          <asp:ListItem>1318</asp:ListItem>
                                          <asp:ListItem>1319</asp:ListItem>
                                          <asp:ListItem>1320</asp:ListItem>
                                          <asp:ListItem>1321</asp:ListItem>
                                          <asp:ListItem>1322</asp:ListItem>
                                          <asp:ListItem>1323</asp:ListItem>
                                          <asp:ListItem>1324</asp:ListItem>
                                          <asp:ListItem>1325</asp:ListItem>
                                          <asp:ListItem>1326</asp:ListItem>
                                          <asp:ListItem>1327</asp:ListItem>
                                          <asp:ListItem>1328</asp:ListItem>
                                          <asp:ListItem>1329</asp:ListItem>
                                          <asp:ListItem>1330</asp:ListItem>
                                          <asp:ListItem>1331</asp:ListItem>
                                          <asp:ListItem>1332</asp:ListItem>
                                          <asp:ListItem>1333</asp:ListItem>
                                          <asp:ListItem>1334</asp:ListItem>
                                          <asp:ListItem>1335</asp:ListItem>
                                          <asp:ListItem>1336</asp:ListItem>
                                          <asp:ListItem>1337</asp:ListItem>
                                          <asp:ListItem>1338</asp:ListItem>
                                          <asp:ListItem>1339</asp:ListItem>
                                          <asp:ListItem>1340</asp:ListItem>
                                          <asp:ListItem>1341</asp:ListItem>
                                          <asp:ListItem>1342</asp:ListItem>
                                          <asp:ListItem>1343</asp:ListItem>
                                          <asp:ListItem>1344</asp:ListItem>
                                          <asp:ListItem>1345</asp:ListItem>
                                          <asp:ListItem>1346</asp:ListItem>
                                          <asp:ListItem>1347</asp:ListItem>
                                          <asp:ListItem>1348</asp:ListItem>
                                          <asp:ListItem>1349</asp:ListItem>
                                          <asp:ListItem>1350</asp:ListItem>
                                          <asp:ListItem>1351</asp:ListItem>
                                          <asp:ListItem>1352</asp:ListItem>
                                          <asp:ListItem>1353</asp:ListItem>
                                          <asp:ListItem>1354</asp:ListItem>
                                          <asp:ListItem>1355</asp:ListItem>
                                          <asp:ListItem>1356</asp:ListItem>
                                          <asp:ListItem>1357</asp:ListItem>
                                          <asp:ListItem>1358</asp:ListItem>
                                          <asp:ListItem>1359</asp:ListItem>
                                          <asp:ListItem>1360</asp:ListItem>
                                          <asp:ListItem>1361</asp:ListItem>
                                          <asp:ListItem>1362</asp:ListItem>
                                          <asp:ListItem>1363</asp:ListItem>
                                          <asp:ListItem>1364</asp:ListItem>
                                          <asp:ListItem>1365</asp:ListItem>
                                          <asp:ListItem>1366</asp:ListItem>
                                          <asp:ListItem>1367</asp:ListItem>
                                          <asp:ListItem>1368</asp:ListItem>
                                          <asp:ListItem>1369</asp:ListItem>
                                          <asp:ListItem>1370</asp:ListItem>
                                          <asp:ListItem>1371</asp:ListItem>
                                          <asp:ListItem>1372</asp:ListItem>
                                          <asp:ListItem>1373</asp:ListItem>
                                          <asp:ListItem>1374</asp:ListItem>
                                          <asp:ListItem>1375</asp:ListItem>
                                          <asp:ListItem>1376</asp:ListItem>
                                          <asp:ListItem>1377</asp:ListItem>
                                          <asp:ListItem>1378</asp:ListItem>
                                          <asp:ListItem>1379</asp:ListItem>
                                          <asp:ListItem>1380</asp:ListItem>
                                          <asp:ListItem>1381</asp:ListItem>
                                          <asp:ListItem>1382</asp:ListItem>
                                          <asp:ListItem>1383</asp:ListItem>
                                          <asp:ListItem>1384</asp:ListItem>
                                          <asp:ListItem>1385</asp:ListItem>
                                          <asp:ListItem>1386</asp:ListItem>
                                          <asp:ListItem>1387</asp:ListItem>
                                          <asp:ListItem>1388</asp:ListItem>
                                          <asp:ListItem>1389</asp:ListItem>
                                          <asp:ListItem>1390</asp:ListItem>
                                          <asp:ListItem>1391</asp:ListItem>
                                          <asp:ListItem>1392</asp:ListItem>
                                          <asp:ListItem>1393</asp:ListItem>
                                          <asp:ListItem>1394</asp:ListItem>
                                          <asp:ListItem>1395</asp:ListItem>
                                          <asp:ListItem>1396</asp:ListItem>
                                          <asp:ListItem>1397</asp:ListItem>
                                          <asp:ListItem>1398</asp:ListItem>
                                          <asp:ListItem>1399</asp:ListItem>
                                          <asp:ListItem>1400</asp:ListItem>
                                          <asp:ListItem>1401</asp:ListItem>
                                          <asp:ListItem>1402</asp:ListItem>
                                          <asp:ListItem>1403</asp:ListItem>
                                          <asp:ListItem>1404</asp:ListItem>
                                      </asp:DropDownList>
  </div>
   <div class="dropdown" style="display:inline">
<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                          <asp:ListItem Value="1">حمل</asp:ListItem>
                                          <asp:ListItem Value="2">ثور</asp:ListItem>
                                          <asp:ListItem Value="3">جوزا</asp:ListItem>
                                          <asp:ListItem Value="4">سرطان</asp:ListItem>
                                          <asp:ListItem Value="5">اسد</asp:ListItem>
                                          <asp:ListItem Value="6">سنبله</asp:ListItem>
                                          <asp:ListItem Value="7">میزان</asp:ListItem>
                                          <asp:ListItem Value="8">عقرب</asp:ListItem>
                                          <asp:ListItem Value="9">قوس</asp:ListItem>
                                          <asp:ListItem Value="10">جدی</asp:ListItem>
                                          <asp:ListItem Value="11">دلو</asp:ListItem>
                                          <asp:ListItem Value="12">حوت</asp:ListItem>
                                      </asp:DropDownList>
  </div>
                   <div class="dropdown" style="display:inline">
 <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                          <asp:ListItem>1</asp:ListItem>
                                          <asp:ListItem>2</asp:ListItem>
                                          <asp:ListItem>3</asp:ListItem>
                                          <asp:ListItem>4</asp:ListItem>
                                          <asp:ListItem>5</asp:ListItem>
                                          <asp:ListItem>6</asp:ListItem>
                                          <asp:ListItem>7</asp:ListItem>
                                          <asp:ListItem>8</asp:ListItem>
                                          <asp:ListItem>9</asp:ListItem>
                                          <asp:ListItem>10</asp:ListItem>
                                          <asp:ListItem>11</asp:ListItem>
                                          <asp:ListItem>12</asp:ListItem>
                                          <asp:ListItem>13</asp:ListItem>
                                          <asp:ListItem>14</asp:ListItem>
                                          <asp:ListItem>15</asp:ListItem>
                                          <asp:ListItem>16</asp:ListItem>
                                          <asp:ListItem>17</asp:ListItem>
                                          <asp:ListItem>18</asp:ListItem>
                                          <asp:ListItem>19</asp:ListItem>
                                          <asp:ListItem>20</asp:ListItem>
                                          <asp:ListItem>21</asp:ListItem>
                                          <asp:ListItem>22</asp:ListItem>
                                          <asp:ListItem>23</asp:ListItem>
                                          <asp:ListItem>24</asp:ListItem>
                                          <asp:ListItem>25</asp:ListItem>
                                          <asp:ListItem>26</asp:ListItem>
                                          <asp:ListItem>27</asp:ListItem>
                                          <asp:ListItem>28</asp:ListItem>
                                          <asp:ListItem>29</asp:ListItem>
                                          <asp:ListItem>30</asp:ListItem>
                                          <asp:ListItem>31</asp:ListItem>
                                      </asp:DropDownList>
  </div>
			</div>
		</div>
             <div class="col-sm-6">
			<div class="form-group-sm">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtmoneypd" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
			<asp:Label ID="Label6" runat="server" Text="مقدر پرداخت اول" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>
			<asp:TextBox ID="txtmoneypd" runat="server" class="form-control" required="required"></asp:TextBox>
		 </div>
         </div>
            <div class="col-sm-6">
			<div class="form-group-sm">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtnotebk" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
                 <asp:Label ID="Label7" runat="server" Text="کتابچه" Font-Names="Bahnschrift"  dir="rtl" Font-Size="x-small"></asp:Label>
                <asp:TextBox ID="txtnotebk" runat="server" type="text" class="form-control" required="required"></asp:TextBox>
			</div>
		</div>
        <div class="col-sm-6">
			<div class="form-group-sm">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Font-Size="X-Small" ErrorMessage="X" ControlToValidate="txtremin" ForeColor="Red" InitialValue="STATUS"></asp:RequiredFieldValidator>
				<asp:Label ID="Label8" runat="server" Text="باقی مانده" Font-Names="Bahnschrift" Font-Size="x-small"></asp:Label>
                <asp:TextBox ID="txtremin" runat="server" type="text" class="form-control" required="required"></asp:TextBox>
			</div>
		</div>
	</div>
   
<%-- end of first row --%>

	<br />
    					<asp:Button ID="BtnSubmit" runat="server" Text="update" Class="btn btn-success" Width="100%" Font-Names="Bahnschrift" OnClick="BtnSubmit_Click" />

</asp:Content>


