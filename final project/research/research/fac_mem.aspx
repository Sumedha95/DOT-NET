<%@ Page Title="" Language="C#" EnableEventValidation="true"  MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="fac_mem.aspx.cs" Inherits="research.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
			<img src="images/DSC_0284.JPG" title="" alt="" />
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
    <br /><br />
    <center>
     <div>
         <br />
         <br />
         <h2>Add Number Of Student Respective Faculty</h2>

     </div>
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
 <asp:TextBox ID="TextBoxYR" runat="server" TextMode="Number" MaxLength="4" Font-Names="Arial" ></asp:TextBox><%--"^[0-9]{4}$"--%>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" class="auto-style2">
                        <asp:RegularExpressionValidator  Font-Names="Arial" ID="RegularExpressionValidatorTextBoxYR" ControlToValidate="TextBoxYR" runat="server" ErrorMessage="Enter Valid Year" ValidationGroup="r" ValidationExpression="^(19|20)\d{2}$" ForeColor="#FF0066"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator  Font-Names="Arial" ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Enter Year " ControlToValidate="TextBoxYR" ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:Label ID="cours" runat="server" Text="Select Faculty:" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" colspan="2">
                        <asp:DropDownList Font-Names="Arial" ID="DropDownListFAC" runat="server" Font-Size="Large">
                          <asp:ListItem Value="Dr. Debabrata Samanta">Dr. Debabrata Samanta</asp:ListItem>
                          <asp:ListItem Value="Dr. Kumudavalli.M.V.">Dr. Kumudavalli.M.V.</asp:ListItem>
                           <asp:ListItem Value="Mr. Vijayakumar C M">Mr. Vijayakumar C M</asp:ListItem>
                          <asp:ListItem Value="T.Kohilakanagalakshmi">T.Kohilakanagalakshmi</asp:ListItem>   
                        </asp:DropDownList>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Enter Password " ControlToValidate="DropDownListCourser" ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                
                <tr>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                       <asp:Label ID="jpub_lb" runat="server" Text="Number Of Student" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label>&nbsp;
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;" colspan="2">
                       <asp:TextBox ID="txtNumberOfStudent" Font-Names="Arial" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:RequiredFieldValidator  Font-Names="Arial" ID="RequiredFieldValidatorReenterPassword" ControlToValidate="txtNumberOfStudent" runat="server" ErrorMessage="Enter Student Number " ForeColor="#FF3300" ValidationGroup="r"></asp:RequiredFieldValidator>
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
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:Button ID="ButtonSubmit" runat="server" Text="ADD" ValidationGroup="r"  OnClick="Button1_Click" ForeColor="Black" Font-Size="Large" Font-Bold="True"></asp:Button>


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
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                    <h2 style="font-size: 200%; color: #000066">Update Record</h2>         
                <br />
                    
                    <asp:GridView ID="grdReportFA" runat="server" 
 AutoGenerateColumns="False" DataKeyNames="FA_ID" 
 OnRowCancelingEdit="grdReportFA_RowCancelingEdit" 
 
 OnRowEditing="grdReportFA_RowEditing" 
 OnRowUpdating="grdReportFA_RowUpdating" 

 OnRowDeleting="grdReportFA_RowDeleting"  Font-Names="Arial" ForeColor="#000066" OnRowCreated="OnRowCreated">
        <Columns>
                                     
            <asp:TemplateField HeaderText="Year" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
   <asp:Label ID="lblID1FA" runat="server" Text='<%# Bind("FA_ID") %>'></asp:Label>
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblID2FA" runat="server" Text='<%# Bind("FA_ID") %>'></asp:Label></ItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
   <asp:Label ID="lblName1FA" runat="server" Text='<%# Bind("FA_NAME") %>'></asp:Label>
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblName2FA" runat="server" Text='<%# Bind("FA_NAME") %>'></asp:Label></ItemTemplate>

            </asp:TemplateField>
        <asp:TemplateField HeaderText="YEAR" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:Label ID="lblYear1FA" runat="server" Text='<%# Bind("FA_Year") %>'></asp:Label>
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblYear2FA" runat="server" Text='<%# Bind("FA_Year") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="NO OF STUDENT" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtST_NOFA" runat="server" Text='<%# Bind("FA_COUNT") %>'></asp:TextBox> 
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblST_NOFA" runat="server" Text='<%# Bind("FA_COUNT") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            

            
            <asp:TemplateField>
    <EditItemTemplate>
        <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update"  Text="Update"  />
        <asp:Button ID="ButtonCancel" runat="server" CommandName="Cancel"  Text="Cancel" />
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Button ID="ButtonEdit" runat="server" CommandName="Edit"  Text="Edit"  />
        <asp:Button BackColor="Red" ID="ButtonDelete" runat="server" CommandName="Delete"  Text="Delete"  />
    </ItemTemplate>
    
 </asp:TemplateField>
        </Columns>
        </asp:GridView>

                                                                           </div>
            <div class="col-lg-3"></div>
        </div>

     </center>

</asp:Content>
