
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<style>
.h6 {
    position: fixed;
    left:200px;
    margin-left: auto;
    margin-right: auto;
    bottom: 0px;
}
</style>

 <script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(1000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'checkEmail.jsp',
		          	data: 'em='+ $('#email').val()+'&flag='+"1",
		          	type: 'get',
		   			success: function(msg){
		   				//alert($('#email').val());
		   				//alert(msg)
						if(msg.trim()=="SUCCESS") // Message Sent, check and redirect
								
						{				// and direct to the success page
							
							$("#msgbox").html('Email id is valid and available.').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                     //redirect to secure page
			                      document.location='reg.jsp?user='+$('#login_id').val()+'&pwd='+$('#password').val()+'&fname='+$('#fn_id').val()+'&lname='+$('#ln_id').val()+'&email='+$('#email').val();
			                  });
	
						}
						else if(msg.trim()=="PRESENT")
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
				                	{
					                  //add message and change the class of the box and start fading
					                  $(this).html('Email Id already registered.').removeClass().addClass('myerror').fadeTo(900,1);
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

	 $(document).ready(function(){  
         $(".uname").change(function(){  
             var uname = $('#login_id').val();  
             if(uname.length >= 3){  
                 $(".status").html("<img src='loading.gif'><font color=gray> Checking availability...</font>");  
                  $.ajax({  
                     type: "POST",  
                     url: "checkUser.jsp",  
                     data: "uname="+ uname,  
                     success: function(msg){  

                         //$(".status").ajaxComplete(function(event, request, settings)
                         if(msg.trim()!="ERROR")
                         {  
                                
                             $(".status").html(msg+' is available');  
                         }
                         else
                         {
                        	 $(".status").html("Username already taken"); 
                         }
                         //});  
                     }  
                 });   
             }  
             else{  
                    
                 $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
             }  
               
         });  
     });  


 </script>  

<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<% 
 if(session.getAttribute("userid")!=null)
{

   response.sendRedirect("success.jsp");
}
%>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<<form name="login_frm" id="login_frm" action="" method="post">
    <div id="login_box">
      <div id="login_header">
            Enter Information Here
      </div>
      <div id="form_val">
      	<div class="label">First Name :</div>
        <div class="control"><input type="text" name="fn_id" id="fn_id"/>*</div>
        <div style="clear:both;height:0px;"></div>
        
        <div class="label">Last Name :</div>
        <div class="control"><input type="text" name="ln_id" id="ln_id"/></div>
        <div style="clear:both;height:0px;"></div>
        
        <div class="label">Email :</div>
        <div class="control"><input type="text" name="email" id="email"/>*</div>
        <div style="clear:both;height:0px;"></div>
        <div id="msgbox"></div>
        
        <div class="label">User Id :</div>
        <div class="control"><input class="uname" type="text" name="login_id" id="login_id"/>*<span class="status"></span></div>
        <div style="clear:both;height:0px;"></div>
        
        <div class="label">Password:</div>
        <div class="control"><input type="password" name="password" id="password"/>*</div>
        <div style="clear:both;height:0px;"></div>
      
      	
      	
      	<div id="register">Already Registered? <a href="Test.jsp">Login here</a></div>
      	
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="register" id="register" value="Register" class="send_button" />
        </label>
      </div>
    </div>
</form>
<br>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
</body>
</html>