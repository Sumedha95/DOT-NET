<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="StudentResearch.aspx.cs" Inherits="research.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
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
         <h2>Add Research</h2>

     </div>
    <br />
    <br />
    <center>
        <table border="0" style="border-color: #800000; border-width: thin; font-family: Arial, Helvetica, sans-serif;">
            <tr style="padding-top: 10px;
  padding-bottom: 10px;">
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
                        <asp:Label ID="Label2" runat="server" Text="Select Course"></asp:Label>
                    </td>
                    <td colspan="2" style="padding-top: 10px;
  padding-bottom: 10px;">
<asp:DropDownList ID="DropDownListCatg" runat="server">
    <asp:ListItem>UG</asp:ListItem>
    <asp:ListItem>PG</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="padding-top: 10px;
  padding-bottom: 10px;">
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter  Name " ControlToValidate="TextBoxIMAGE_NAME" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
            <tr >
                    <td style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:Label ID="Label4" runat="server" Text="Student Usn:"></asp:Label>
                    </td>
                    <td colspan="2" style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:TextBox ID="TextBoxusn" runat="server"></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter  usn " ControlToValidate="TextBoxusn" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:Label ID="LabelIMAGE_NAME" runat="server" Text="Student Name:"></asp:Label>
                    </td>
                    <td colspan="2" style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:TextBox ID="TextBoxNAME" runat="server"></asp:TextBox>
                    </td>
                    <td style="padding-top: 10px;padding-bottom: 10px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorIMAGE_NAME" runat="server" ErrorMessage="Enter  Name " ControlToValidate="TextBoxNAME" ForeColor="#FF3300" ValidationGroup="x"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                
                <tr>
                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                        
                        <asp:Label ID="Label5" runat="server" Text="Title"></asp:Label>
                        
                        :</td>
                    <td colspan="2" class="style="padding-top: 10px;padding-bottom: 10px;">
                                            <asp:TextBox ID="TextBoxTitle" runat="server" TextMode="multiline"></asp:TextBox>

                        </td>                
                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBoxTitle" runat="server" ValidationGroup="x" ErrorMessage="Enter Title" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                        </td>
                </tr>

            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Upload File"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:FileUpload ID="FileUpload2" runat="server"></asp:FileUpload>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Upload a File" ForeColor="#FF5050" ValidationGroup="x" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
                </td>

            </tr>

            

                <tr>

                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                        
                        <asp:Label ID="Label6" runat="server" Text="Publication"></asp:Label>
                        
                        :</td>
                    <td colspan="2" class="style="padding-top: 10px;padding-bottom: 10px;">
                                            <asp:TextBox ID="TextBoxPublication" runat="server" TextMode="multiline"></asp:TextBox>

                        </td>                
                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBoxPublication" ValidationGroup="x" runat="server" ErrorMessage="Enter Publication" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                        </td>
                </tr>
                <tr>
                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                        
                        <asp:Label ID="LabelDesc" runat="server" Text="Guide"></asp:Label>
                        
                        :</td>
                    <td colspan="2" class="style="padding-top: 10px;padding-bottom: 10px;">
                                            <asp:TextBox ID="TextBoxGuide" runat="server" TextMode="multiline"></asp:TextBox>

                        </td>                
                    <td class="style="padding-top: 10px;padding-bottom: 10px;">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatordesc" ControlToValidate="TextBoxGuide" ValidationGroup="x" runat="server" ErrorMessage="Enter Guide" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                        </td>
                </tr>
                
                
                
                
            <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Upload Pic"></asp:Label>
                        :</td>
                    <td colspan="2">
                        <asp:FileUpload ID="fuFileUploader" runat="server"></asp:FileUpload>
                    </td>
                    <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fuFileUploader" runat="server" ValidationGroup="x" ErrorMessage="Select File " ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>

            







                <tr>
                    <td>
                        
                        &nbsp;</td>
                    <td>
                                            &nbsp;</td>                
                    <td>
                        <br />
               <asp:Button ID="ButtonSubmit" ValidationGroup="x" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />

                        </td>                
                    <td>
                                                &nbsp;</td>
                </tr>

     
            </table>

           </center>
        </center>


</asp:Content>
