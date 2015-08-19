<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>PCAM</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<% 
 if(session.getAttribute("userid")!=null)
{

   response.sendRedirect("Qpage1.jsp");
}
%>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navMenu"> 
  <div class="container">
  	<div class="container-fluid">
  	  <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#"><b>PCAM</b></a>
      </div>
	  <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="Test.jsp">Home</a></li>
	        <li><a href="aboutPcam.html">About PCAM</a></li>
	        <li><a href="#">Contact</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="reg1.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        	<li><a href="Test.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      </ul>
	    </div>
	    </div>
   </div>
</nav>

<br>
<br>

<div class="container">
  
  <div class="jumbotron">
    <center><h1>Patient Centered Assessment Method[PCAM] Online:</h1>
    <p>Bringing the social determinant of health into primary care</p> 
    </center>
  </div>
  
  <div class="row">
    <center>
    <div class="col-lg-6 col-lg-offset-3 text-center">
      <h3 align="center"><font size=4 color="black"><b>About PCAM</b></font></h3>
		<center>
		<div class="panel panel-default">
	    		<div class="panel-body"><p class="text-left">The PCAM (formerly the MECAM), is a tool to assess complexity in primary care. PCAM aims to bring the social determinants of health into primary care by assessing for patient complexity, considering the biopsychosocial influences on health. These include physical health, mental health, social support, social needs, health literacy and engagement with services. The PCAM allows clinicians to identify and address these issues systematically.
	    			<br>
					<img src="button.jpg" width="160" height="50" align="right" alt="Planets" usemap="#planetmap">
			
					<map name="planetmap">
			  			<area shape="rect" coords="0,0,160,126" href="aboutPcam.html" alt="Sun">
			  		</map> 
	    		</div>
	  	</div> 
  		</center>
    </div>
    </center>
  </div>
  
  <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue to PCAM</h1>
            <div class="account-wall">
                <img class="profile-img" src="health.png"
                    alt="">
                <form class="form-signin" name="login_frm" id="login_frm" action="" method="post">
                <input type="text" name="login_id" id="login_id" class="form-control" placeholder="Username" required autofocus>
                <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                <div id="msgbox"></div>
                <!-- <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button> -->
                <input type="submit" name="login" id="login" value="Login" class="btn btn-lg btn-primary btn-block" />
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="reg1.jsp" class="text-center new-account">Create an account </a>
        </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
<footer>
    <div class="navbar navbar-inverse navbar-fixed-bottom">
        <div class="container">
            <div class="navbar-collapse collapse" id="footer-body">
                <ul class="nav navbar-nav">
                	<li><a href="#">Copyright: UB School of Nursing</a></li>
                	<li><a href="#">Developed by Mohammad Shahid Fazal</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    
                </ul>
            </div>
          	<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#footer-body">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <ul class="footer-bar-btns visible-xs">
                    <li><a href="#" class="btn" title="History"><i class="fa fa-2x fa-clock-o blue-text"></i></a></li>
                    <li><a href="#" class="btn" title="Favourites"><i class="fa fa-2x fa-star yellow-text"></i></a></li>
                    <li><a href="#" class="btn" title="Subscriptions"><i class="fa fa-2x fa-rss-square orange-text"></i></a></li>
                </ul>
            </div>

        </div>
    </div>
</footer>


</body>
</html>
