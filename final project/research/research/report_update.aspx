<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.Master" AutoEventWireup="true" CodeBehind="report_update.aspx.cs" Inherits="research.WebForm5" %>
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
                
              
            <div class="row">
                <div class="col-lg-5">
                    <h2 style="font-size: 200%; color: #000066">Update UG Report</h2>         
                <br />
                    
                    <asp:GridView ID="grdReportUG" runat="server" 
 AutoGenerateColumns="False" DataKeyNames="UG_Year" 
 OnRowCancelingEdit="grdReport_RowCancelingEdit" 
 
 OnRowEditing="grdReport_RowEditing" 
 OnRowUpdating="grdReport_RowUpdating" 

 OnRowDeleting="grdReport_RowDeleting"  Font-Names="Arial" ForeColor="#000066">
        <Columns>
                                     
            <asp:TemplateField HeaderText="Year" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
   <asp:Label ID="lblYear1" runat="server" Text='<%# Bind("UG_Year") %>'></asp:Label>
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblYear2" runat="server" Text='<%# Bind("UG_Year") %>'></asp:Label></ItemTemplate></asp:TemplateField>

        <asp:TemplateField HeaderText="journal" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtjournal" runat="server" Text='<%# Bind("UG_journal") %>'></asp:TextBox> 
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lbljournal" runat="server" Text='<%# Bind("UG_journal") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="conferenc" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtconferenc" runat="server" Text='<%# Bind("UG_conferenc") %>'></asp:TextBox> 
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblconferenc" runat="server" Text='<%# Bind("UG_conferenc") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            

            <asp:TemplateField HeaderText="Total" HeaderStyle-HorizontalAlign="Left"> 
   <%--<EditItemTemplate> 
    <asp:TextBox ID="txtTotal" runat="server" Text='<%# Bind("UG_Total") %>'></asp:TextBox> 
   </EditItemTemplate> --%>
   
   <ItemTemplate> 
    <asp:Label ID="lblconTotal" runat="server" Text='<%# Bind("UG_Total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
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
        </asp:GridView></div>
                <div class="col-lg-2">            </div> 
                     <div class="col-lg-5">
                    <h2 style="font-size: 200%; color: #000066">Update PG Report</h2>         
                <br />
                    
                    <asp:GridView ID="grdReportPG" runat="server" 
 AutoGenerateColumns="False" DataKeyNames="PG_Year" 
 OnRowCancelingEdit="grdReportPG_RowCancelingEdit" 
 
 OnRowEditing="grdReportPG_RowEditing" 
 OnRowUpdating="grdReportPG_RowUpdating" 

 OnRowDeleting="grdReportPG_RowDeleting"  Font-Names="Arial" ForeColor="#000066">
        <Columns>
                                     
            <asp:TemplateField HeaderText="Year" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
   <asp:Label ID="lblYear1PG" runat="server" Text='<%# Bind("PG_Year") %>'></asp:Label>
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblYear2PG" runat="server" Text='<%# Bind("PG_Year") %>'></asp:Label></ItemTemplate>

            </asp:TemplateField>

        <asp:TemplateField HeaderText="journal" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtjournalPG" runat="server" Text='<%# Bind("PG_journal") %>'></asp:TextBox> 
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lbljournalPG" runat="server" Text='<%# Bind("PG_journal") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="conferenc" HeaderStyle-HorizontalAlign="Left"> 
   <EditItemTemplate> 
    <asp:TextBox ID="txtconferencPG" runat="server" Text='<%# Bind("PG_conferenc") %>'></asp:TextBox> 
   </EditItemTemplate> 
   
   <ItemTemplate> 
    <asp:Label ID="lblconferencPG" runat="server" Text='<%# Bind("PG_conferenc") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            

            <asp:TemplateField HeaderText="Total" HeaderStyle-HorizontalAlign="Left"> 
   <%--<EditItemTemplate> 
    <asp:TextBox ID="txtTotal" runat="server" Text='<%# Bind("UG_Total") %>'></asp:TextBox> 
   </EditItemTemplate> --%>
   
   <ItemTemplate> 
    <asp:Label ID="lblconTotalPG" runat="server" Text='<%# Bind("PG_Total") %>'></asp:Label></ItemTemplate>

            </asp:TemplateField>
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
            
                </div>
            <br />
                <br /><br />
                <br />    
        </center>


    
</asp:Content>
