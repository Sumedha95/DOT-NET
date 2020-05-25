<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="research.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        table {
    /*border-collapse: collapse;*/
}

td {
    
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="slider" class="content">
	<ul class="slider-wrapper">
		<li class="current-slide">
			<img src="images/home.jpg" title="" alt="" />
			<div class="caption">
				<h3 class="slider-title">Student Research</h3>
               <p style="font-size:large; color:#b0c5de"><strong>Department of Computer Application(BU)</strong></p>
                
				<p>Dayananda Sagar College of Arts, Science & Commerce,</p>
                <p>Shavige Malleshwara Hills, Kumaraswamy Layout, Bengaluru, Karnataka 560078</p>
			</div>
		</li>
		<li>
			<img src="images/home2.jpg" title="" alt=""/>
			<div class="caption">
				<h3 class="slider-title">Student Research</h3>
               <p style="font-size:large; color:#b0c5de"><strong>Department of Computer Application(BU)</strong></p>
                
				<p>Dayananda Sagar College of Arts, Science & Commerce,</p>
                <p>Shavige Malleshwara Hills, Kumaraswamy Layout, Bengaluru, Karnataka 560078</p>
			</div>
		</li>
		<li>
			<img src="images/Untitled.jpg" title="" alt=""/>

			<div class="caption">
				<h3 class="slider-title">Student Research</h3>
               <p style="font-size:large; color:#b0c5de"><strong>Department of Computer Application(BU)</strong></p>
                
				<p>Dayananda Sagar College of Arts, Science & Commerce,</p>
                <p>Shavige Malleshwara Hills, Kumaraswamy Layout, Bengaluru, Karnataka 560078</p>
			</div>
		</li>
		<li>
			<img src="images/DSC_0284.JPG" title="" alt="">
			<div class="caption">
				<h3 class="slider-title">Student Research</h3>
               <p style="font-size:large; color:#b0c5de"><strong>Department of Computer Application(BU)</strong></p>
                
				<p>Dayananda Sagar College of Arts, Science & Commerce,</p>
                <p>Shavige Malleshwara Hills, Kumaraswamy Layout, Bengaluru, Karnataka 560078</p>
			</div>
		</li>
	</ul>
	<div class="slider-shadow"></div>
	<ul id="control-buttons" class="control-buttons"></ul>
</section>
   <!--report-->
    
        <center>
                <br />
                <br />
                <h2 style="font-size: 200%; color: #000066">Add Report</h2>         
                <br />
                <br />  
          
             <div class="row">
                  <div class="col-lg-12">
                 <table style="border-color: #800000;" class="table-responsive" >
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" class="auto-style2">
                     <asp:Label ID="Label1" runat="server" Text="Year:" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" colspan="2" class="auto-style2">
 <asp:TextBox ID="TextBoxYR" runat="server" TextMode="Number" MaxLength="4" Font-Names="Arial" ></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" class="auto-style2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTextBoxYR" ControlToValidate="TextBoxYR" runat="server" ErrorMessage="Enter Valid Year" ValidationExpression="^(19|20)\d{2}$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Enter Year " ControlToValidate="TextBoxYR" ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:Label ID="cours" runat="server" Text="Course:" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" colspan="2">
                        <asp:DropDownList Font-Names="Arial" ID="DropDownListCourser" runat="server" Font-Size="Large">
                          <asp:ListItem Value="UG">UG</asp:ListItem>
                          <asp:ListItem Value="PG">PG</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Enter Password " ControlToValidate="DropDownListCourser" ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                       <asp:Label ID="jpub_lb" runat="server" Text="Journal publication" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" colspan="2">
                       <asp:TextBox ID="jpub" Font-Names="Arial" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorReenterPassword" ControlToValidate="jpub" runat="server" ErrorMessage="Enter publication " ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                         <asp:Label ID="cpub_lb" runat="server" Text="Conference publication" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>
                        </td>
                    <td colspan="2">
                       <asp:TextBox ID="cpub" Font-Names="Arial" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ControlToValidate="cpub" runat="server" ErrorMessage="Enter  Conference " ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        
                        &nbsp;</td>
                    <td>
                                            &nbsp;</td>                
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <br />
                                            <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="r"  OnClick="Button1_Click" ForeColor="Black" Font-Size="Large" Font-Bold="True"></asp:Button>


                        </td>                
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                                                &nbsp;</td>
                </tr>
            </table>








                  </div>

                   </div>
                <br />
            <br />
            <div class="row">
                <div class="col-lg-5">
                     <h2 style="font-size: 200%; color: #000066"> UG Report</h2>         
                <br />
                     <asp:GridView ID="GridViewUG" runat="server" AutoGenerateColumns="false" Font-Names="Arial" ForeColor="#000068">
                         <Columns>
                            <asp:BoundField DataField="UG_Year" HeaderText="YEAR"  />
                            
                              <asp:BoundField DataField="UG_journal" HeaderText="JOURNAL"  />
                              <asp:BoundField DataField="UG_conferenc" HeaderText="CONFERENCE"  />
                              
                              <asp:BoundField DataField="UG_TOTAL" HeaderText="TOTAL"  />
                         </Columns>
                         <HeaderStyle BackColor="#FFFF99" />
                     </asp:GridView>
                     <br />
                </div>
                <div class="col-lg-2">
                    </div>
               <div class="col-lg-5">
                    <h2 style="font-size: 200%; color: #000066"> PG Report</h2>         
                <br />
                     <asp:GridView ID="GridViewPG" runat="server" AutoGenerateColumns="false" Font-Names="Arial" ForeColor="#000066">
                         <Columns>
                            <asp:BoundField DataField="PG_Year" HeaderText="YEAR"  />
                            
                              <asp:BoundField DataField="PG_journal" HeaderText="JOURNAL"  />
                              <asp:BoundField DataField="PG_conferenc" HeaderText="CONFERENCE"  />
                              
                              <asp:BoundField DataField="PG_TOTAL" HeaderText="TOTAL"  />
                         </Columns>
                         <HeaderStyle BackColor="#FFFF99" />
                     </asp:GridView>
                    <br />
                </div>
            </div>
        </center>
  
        
</asp:Content>
