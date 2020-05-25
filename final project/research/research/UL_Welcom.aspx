<%@ Page Title="" Language="C#" MasterPageFile="~/USER_LOGIN.Master" AutoEventWireup="true" CodeBehind="UL_Welcom.aspx.cs" Inherits="research.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br /><br />
    <img class='img-responsive col-xs-12' src="images/ul_welcome.jpg" />
        

<center>
       <script type="text/javascript">
           var can, ctx, step = 10, steps = 50;
           delay = 20;

           function init() {
               can = document.getElementById("MyCanvas");
               ctx = can.getContext("2d");
               ctx.fillStyle = "red";
               ctx.font = "10pt Arial Black";
               ctx.textAlign = "center";
               ctx.textBaseline = "middle";
               TextSmallToBig();
           }
           function TextSmallToBig() {
               step++;
               ctx.clearRect(0, 0, can.width, can.height);
               ctx.save();
               ctx.translate(can.width / 2, can.height /4);
               ctx.font = step + "pt Arial Black";
               ctx.fillText("Build Up Your Inventing Capacity", 0, 0);
               ctx.restore();
               if (step < steps)
                   var t = setTimeout('TextSmallToBig()', 20);
           }
          
    </script>
 

<body onload="init();">
          <canvas id="MyCanvas" width="1200" height="200">
  This browser or document mode doesn't support canvas object</canvas>
</body>
        
</center>
</asp:Content>
