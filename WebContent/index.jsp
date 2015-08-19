
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.h6 {
    position: fixed;
    left:200px;
    margin-left: auto;
    margin-right: auto;
    bottom: 0px;
}
</style>
<link rel="shortcut icon" href="health.png" type="image/png">
<!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>

 <script type="text/javascript">
    
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'check.jsp',
		          	data: 'un='+ $('#login_id').val() +'&pw=' + $('#password').val(),
		          	type: 'get',
		   			success: function(msg){
		   				//alert(msg)
						if(msg.trim()!="ERROR") // Message Sent, check and redirect
								
						{				// and direct to the success page
							
							$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                     //redirect to secure page
			                     document.location='login.jsp?user='+msg;
			                  });
	
						}
						else
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		                	{
			                  //add message and change the class of the box and start fading
			                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
			                });
	
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});



 </script>  

<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<% 
 if(session.getAttribute("userid")!=null)
{

   response.sendRedirect("success.jsp");
}
%>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<h3 align="center"><font size=4 color="black">About PCAM</font></h3>
<center>
  	<div id="pcam">
  		<font size=4 color="black"><p>The PCAM (formerly the MECAM), is a tool to assess complexity in primary care. PCAM aims to bring the social determinants of health into primary care by assessing for patient complexity, considering the biopsychosocial influences on health. These include physical health, mental health, social support, social needs, health literacy and engagement with services. The PCAM allows clinicians to identify and address these issues systematically.</p></font>
		<%-- <br><p align="right"><a href="aboutPcam.html"><font size=4 color="yellow">Read More</font></a></p>--%>
		<br>
		<img src="button.jpg" width="160" height="50" align="right" alt="Planets" usemap="#planetmap">

		<map name="planetmap">
  			<area shape="rect" coords="0,0,160,126" href="aboutPcam.html" alt="Sun">
  		</map>   	
  	</div>
  	
</center>
<form name="login_frm" id="login_frm" action="" method="post">
    <div id="login_box">
      <div id="login_header">
            Login
      </div>
      <div id="form_val">
        <div class="label">User Id :</div>
        <div class="control"><input type="text" name="login_id" id="login_id"/><span style="font-size: 10px;">hint : admin</span></div>
        
        <div class="label">Password:</div>
        <div class="control"><input type="password" name="password" id="password"/><span style="font-size: 10px;">hint : test</span></div>
        <div style="clear:both;height:0px;"></div>
      
      	<div id="msgbox"></div>
      	
      	<div id="register">If not registered <a href="reg1.jsp">Register here</a></div> <div id="register">Forgot Password?<a href="FogotPass.jsp">Reset here</a></div>
      	
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="Login" class="send_button" />
        </label>
      </div>
    </div>
</form>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
</body>
</html>