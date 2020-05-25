<%@ Page Title="" Language="C#" MasterPageFile="~/USER_LOGIN.Master" AutoEventWireup="true" CodeBehind="UL_research.aspx.cs" Inherits="research.WebForm8" %>
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

    <section class="about-us" id="Research">
	<div class="container">
		<div class="col-lg-12">
			<h2 class="text-center slideanim">Research</h2>
			<p class="text-center slideanim">Research is the development of new knowledge or understanding in order to advance science and it is limitless. Human civilization will developed in proportionate with the research. The outcome of a research is, not only for a particular country, but for the whole world.
    <br />Student research is a self-directed work, in which students work individually or as a part of a team to explore issues of interest to them. Student and faculty mentors work together to design and implement a research, scholarly, or creative project and then communicate the results to others.</p>
			<h3 class="text-center slideanim" style="text-align:left">Why should we participate?</h3>
            <p class="text-center slideanim">
            <!--<ul class="text-center slideanim" >-->
                Understanding & increasing the knowledge of our academic field.<br />
			 Defining our career & personal interests.<br />
			Gaining experience for research conferences, publishing, and working with a research team.<br />
			Developing critical thinking, leadership, time management, and communication skills.
                 </p>   
		</div>
	</div>

        

<style style="text/css">

<!-- scrolling text style-->

 .scroll-left {
        height: 50px;	
         overflow:hidden ;
         position: relative;
             }
 .scroll-left p {
       position: absolute;
       width: 60%;
       height: 10%;
       margin: 0;
      line-height: 50px;
     text-align: center;
  /* Starting position */
  -moz-transform:translateX(100%);
  -webkit-transform:translateX(100%);	
   transform:translateX(100%);
 /* Apply animation to this element */	
 -moz-animation: scroll-left 25s linear infinite;
 -webkit-animation: scroll-left 25s linear infinite;
a nimation: scroll-left 10s linear infinite;
               }
   /* Move it (define the animation) */
    @-moz-keyframes scroll-left {
   0%   { -moz-transform: translateX(100%); }
    100% { -moz-transform: translateX(-100%); }
              }

@-webkit-keyframes scroll-left {
0%   { -webkit-transform: translateX(100%); }
100% { -webkit-transform: translateX(-100%); }
}
@keyframes scroll-left {
0%   { 
-moz-transform: translateX(100%); /* Browser bug fix */
-webkit-transform: translateX(100%); /* Browser bug fix */
transform: translateX(100%); 
}
100% { 
-moz-transform: translateX(-100%); /* Browser bug fix */
-webkit-transform: translateX(-100%); /* Browser bug fix */
transform: translateX(-100%); 
}
}
<!--scrolling text style end-->


</style>


<div class="scroll-left">
<b><p style="color:#FF3374;font-size:100%;">International Conference on Breakthrough in Engeneering Science and tecnology-2017<strong> <ins>(25th March)</ins></strong> </p><br>
<p style="color:#0B1297;font-size:100%;">5th International Conference on Computing, Engineering and Information Technology (ICCEIT 2017)<strong> <ins></ins></strong> </p>
</div>
<script>
    // When the user clicks on div, open the popup
    function myFunction() {
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
    }
</script>




</section>



</asp:Content>
