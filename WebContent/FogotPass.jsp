<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reset Password</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
<style>
.img { 
        width: 150px; 
        height: 40px; 
        display: inline-block; 
        background: Blue; 
    }
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Email ').fadeIn(1000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'checkEmail.jsp',
		          	data: 'em='+ $('#email').val()+'&flag='+"2",
		          	type: 'get',
		   			success: function(msg){
		   				//alert($('#email').val());
		   				//alert(msg)
						if(msg.trim()!="ERROR") // Message Sent, check and redirect
								
						{				// and direct to the success page
							
							$("#msgbox").html('Email id is valid.').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                  //   redirect to secure page
			                     document.location='ResetPass.jsp?user='+msg;
			                  });
	
						}
						else
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		                	{
			                  //add message and change the class of the box and start fading
			                  $(this).html('Not a valid Email id.').removeClass().addClass('myerror').fadeTo(900,1);
			                });
	
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});
</script>
</head>
<body>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<form name="login_frm" id="login_frm" action="" method="post">
    <div id="login_box">
      <div id="login_header">
            Reset Password
      </div>
      <div id="form_val">
        <div class="label">Email id:</div>
        <div class="control"><input type="text" name="email" id="email"/></div>
        <div style="clear:both;height:0px;"></div>
      
      	<div id="msgbox"></div>
      	
      	<%-- <div id="register">If not registered <a href="reg1.jsp">Register here</a></div> --%>
      	
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="Submit" class="send_button" />
        </label>
      </div>
    </div>
    
</form>
<br>
<center>
<%--
<img src="Back.jpg" width="150" height="40" alt="Planets" usemap="#planetmap3">

		<map name="planetmap3">
  			<area shape="rect" coords="0,0,500,140" href="success.jsp" alt="Sun">
  		</map> 
 --%> 		
<a class="img" href="index.jsp"><img src="back2main.jpg" width="150" height="40"></a>  
</center>

</body>
</html>