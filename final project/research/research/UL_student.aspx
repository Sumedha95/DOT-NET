<%@ Page Title="" Language="C#" MasterPageFile="~/USER_LOGIN.Master" AutoEventWireup="true" CodeBehind="UL_student.aspx.cs" Inherits="research.WebForm9" %>
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
    
     <section class="our-services" id="student">
        <center>
  <!--  PG  -->
 <div>
<h1 style="color:indigo;"> PG Students </h1>
<asp:GridView ID="GridViewPG_RESEARCH"  AutoGenerateColumns="false" runat="server" Font-Names="Arial" Width="100%">
    <Columns>
        <asp:TemplateField ControlStyle-Width="100px"  HeaderText="Preview Image">
        <ItemTemplate >
             <div>
                <center>
            <asp:label text='<%# Eval("STDR_NAME")%>' runat="server" ></asp:label></center></div>
            <div>
                <center>
                   <img src='<%# Eval("STDR_IMGPATH")%>' width="80" height="80" />
                    </center>

            </div>
            <div>
                <center>
            <asp:label text='<%# Eval("STDR_USN")%>' runat="server" ></asp:label></center></div>
        </ItemTemplate>

<ControlStyle Width="100px"></ControlStyle>
    </asp:TemplateField>
  <asp:TemplateField  HeaderText="DESCRIPTION">
        <ItemTemplate>
           <div>
                <left>
            Tittle:<asp:label text='<%# Eval("STDR_TITLE")%>' runat="server" style="color:blueviolet" ></asp:label></left></div>
            <div>
                <div>
                <left>
            Pub:<asp:label text='<%# Eval("STDR_PUB")%>' runat="server" style="color:cornflowerblue" ></asp:label></left></div>
            <div>
                <center>
           Guide <asp:label text='<%# Eval("STDR_GUIDE")%>' runat="server" style="color:chocolate"  ></asp:label></center></div>
        </ItemTemplate>
    </asp:TemplateField>
     
   
   
   
    
    
</Columns>
    <HeaderStyle BackColor="#666633" />
</asp:GridView>
             

</div>










<!-- END OF PG  -->
<!--UG-->


<div>

<h1 style="color:indigo;"> UG Students </h1>
    <asp:GridView ID="GridViewUG_RESEARCH"  AutoGenerateColumns="false" runat="server" Font-Names="Arial" Width="100%">
    <Columns>
        <asp:TemplateField ControlStyle-Width="100px" HeaderText="Preview Image">
        <ItemTemplate>
             <div>
                <center>
            <asp:label text='<%# Eval("STDR_NAME")%>' runat="server" ></asp:label></center></div>
            <div>
                <center>
                <img src='<%# Eval("STDR_IMGPATH")%>' width="80" height="80" />
            </center>

            </div>
            <div>
                <center>
            <asp:label text='<%# Eval("STDR_USN")%>' runat="server" ></asp:label></center></div>
        </ItemTemplate>

<ControlStyle Width="100px"></ControlStyle>
    </asp:TemplateField>
  <asp:TemplateField HeaderText="DESCRIPTION">
        <ItemTemplate>
           <div>
                <left>
            Tittle:<asp:label text='<%# Eval("STDR_TITLE")%>' runat="server" style="color:blueviolet" ></asp:label></left></div>
            <div>
                <div>
                <left>
            Pub:<asp:label text='<%# Eval("STDR_PUB")%>' runat="server" style="color:cornflowerblue" ></asp:label></left></div>
            <div>
                <center>
           Guide <asp:label text='<%# Eval("STDR_GUIDE")%>' runat="server" style="color:chocolate"  ></asp:label></center></div>
        </ItemTemplate>
    </asp:TemplateField>
     
   
   
   
    
    
</Columns>
        <HeaderStyle BackColor="#666633" />
</asp:GridView>
</div>
 <!-- End of UG -->
</center>
</section>

    <!--report-->
    <section class="our-portfolio slideanim" id="report">
        <center>
<h1 style="color:darkblue"> The Reports of (PG) Students Research </h1><br><br /><br />
            <asp:GridView ID="GridViewPG" runat="server" Width="60%" AutoGenerateColumns="false" Font-Names="Arial">
                         <Columns>
                            <asp:BoundField ControlStyle-Width="20%" DataField="PG_Year" HeaderText="YEAR"  />
                            
                              <asp:BoundField ControlStyle-Width="25%" DataField="PG_journal" HeaderText="JOURNAL PUBLICATION"  />
                              <asp:BoundField ControlStyle-Width="25%" DataField="PG_conferenc" HeaderText="CONFERENCE PUBLICATION"  />
                              
                              <asp:BoundField ControlStyle-Width="25%" DataField="PG_TOTAL" HeaderText="TOTAL"  />
                         </Columns>
                         <HeaderStyle BackColor="#99FF99" />
                     </asp:GridView>
            <br /><br /><br />




<center>
<h1 style="color:darkblue"> The Reports of (UG) Students Research </h1><br><br /><br />
<asp:GridView ID="GridViewUG" runat="server" Width="60%" AutoGenerateColumns="false" Font-Names="Arial">
                         <Columns>
                            <asp:BoundField ControlStyle-Width="20%" DataField="UG_Year" HeaderText="YEAR"  />
                            
                              <asp:BoundField ControlStyle-Width="25%" DataField="UG_journal" HeaderText="JOURNAL PUBLICATION"  />
                              <asp:BoundField ControlStyle-Width="25%" DataField="UG_conferenc" HeaderText="CONFERENCE PUBLICATION"  />
                              
                              <asp:BoundField ControlStyle-Width="25%" DataField="UG_TOTAL" HeaderText="TOTAL"  />
                         </Columns>
                         <HeaderStyle BackColor="#99FF99" />
                     </asp:GridView>

        </section>
    <!--report-->
    <!--feculty member-->
    <section class="our-team" id="member">
        <center>
            <h3 class="text-center slideanim">Faculty Members</h3>
	

        <asp:GridView ID="GridViewFaculty" runat="server" Width="60%" AutoGenerateColumns="false" Font-Names="Arial">
                         <Columns>
                              <asp:BoundField ControlStyle-Width="20%" DataField="FA_YEAR" HeaderText="YEAR"  >
<ControlStyle Width="20%"></ControlStyle>
                              </asp:BoundField>
                              <asp:BoundField ControlStyle-Width="25%" DataField="FA_NAME" HeaderText=" FACULTY NAME"  >
                           
                            
<ControlStyle Width="25%"></ControlStyle>
                              </asp:BoundField>
                           
                            
                              <asp:BoundField ControlStyle-Width="15%" DataField="FA_COUNT" HeaderText="NUMBER OF STUDENT"  >
                             
<ControlStyle Width="25%"></ControlStyle>
                              </asp:BoundField>
                             
                         </Columns>
                         <HeaderStyle BackColor="#CC9900" Font-Bold="True" />
                     </asp:GridView>
</center>
    </section>
    <!--feculty member-->
</asp:Content>
