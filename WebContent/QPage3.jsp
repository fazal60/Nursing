<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" Cache-Control:public;>
<html manifest="demo.appcache">
<head>
    <title>Questions Page 3</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="health.png" type="image/png">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Cache-control" content="public">
	<title align="center">Questionnaire 1</title>
	<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
	<script src="http://www.jquery4u.com/function-demos/js/jquery-1.6.4.min.js"></script>
    <script src="http://www.jquery4u.com/scripts/function-demos-script.js"></script>
	<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
	<link href="style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="toggle.css" />
	<style type="text/css">
		ul li span 
		{
		    text-align: left; 
		}
	</style>
	<script type="text/javascript">
	$(function() {
	    $('.toggler').click(function() {
	        $(this).find('div').slideToggle();
	    });
	});
	</script>
	
	<script>
    $("#navMenu").resize(function () {
        $('#godown').height($("#navMenu").height() + 10);
    });

    if ($("#navMenu").height() > $('#godown').height()) $('#godown').height($("#navMenu").height() + 10);

	</script>
	
	<style>
		.h6 {
	    position: fixed;
	    left:200px;
	    margin-left: auto;
	    margin-right: auto;
	    bottom: 0px;
		}	
		#colorstrip1
		{
			background-color: red;
	    	width: 100%; height: 10px;
	    	border-style: solid;
	    	border-color: white;
		}
		#colorstrip2
		{
			background-color: orange;
	    	width: 100%; height: 10px;
	    	border-style: solid;
	    	border-color: white;
		}
		#colorstrip3
		{
			background-color: yellow;
	    	width: 100%; height: 10px;
	    	border-style: solid;
	    	border-color: white;
		}
		#colorstrip4
		{
			background-color: green;
	    	width: 100%; height: 10px;
	    	border-style: solid;
	    	border-color: white;
		}
		#colorbar
		{
			width: 65%; height: 50px;
	    	border-style: hidden;
	    	border-color: white;
	    	
		}
		#slide
		{
			width: 69%; height: 50px;
	    	border-style: hidden;
	    	border-color: white;
	    	
		}
		#tags
		{
			width: 1600px; height: 25px;
	    	border-style: hidden;
	    	border-color: white;
		}
		.img { 
	        width: 150px; 
	        height: 40px; 
	        display: inline-block; 
	        background: Blue; 
	    }
	</style>
	
	<script>
	function onLoad()
	{
		if(session.getAttribute('userid').toString()==null || session.getAttribute('userid')=="")
		{
			window.location.href = 'http://nurse-domainnurse.rhcloud.com/nursing';
		}
	}
	function myFunction() {
	
		//alert("Pat Id is:"+document.getElementById("patId").value);
		//alert("max is:"+document.getElementById("max").value);
		var txt = document.getElementById("patId").value;
		if(txt==null||txt=="")
			//$("#myModalPat").modal();
			alert("Please enter Patient id");
		else if(document.getElementById('max1').value==0 || document.getElementById('max2').value==0)
			alert("Please add all the answers in both domains before proceeding");
		else
		{
			//alert("Pat id being sent:"+txt);
			document.forms["frm1"].submit();
		}
	}
	
	function submitaction1()
	{
		        var c3a = document.getElementById("c3a").checked;
	    		var c3b = document.getElementById("c3b").checked;
	    		var c3c = document.getElementById("c3c").checked;
	    		var c3d = document.getElementById("c3d").checked;
	    		var c2a = document.getElementById("c2a").checked;
	    		var c4a = document.getElementById("c4a").checked;
	    		var c4b = document.getElementById("c4b").checked;
	    		var c4c = document.getElementById("c4c").checked;
	    		var c4d = document.getElementById("c4d").checked;
	    		if(c3a==true)
    				document.getElementById("11").value=1;
    			else if(c3b==true)
    				document.getElementById("11").value=2;
    			else if(c3c==true)
    				document.getElementById("11").value=3;
    			else if(c3d==true)
    				document.getElementById("11").value=4;
    			else 
    				document.getElementById("11").value=0;
    			if(c4a==true)
    				document.getElementById("12").value=1;
    			else if(c4b==true)
    				document.getElementById("12").value=2;
    			else if(c4c==true)
    				document.getElementById("12").value=3;
    			else if(c4d==true)
    				document.getElementById("12").value=4;
    			else 
    				document.getElementById("12").value=0;

	
    			document.getElementById("max2").value=parseFloat(document.getElementById("11").value)+parseFloat(document.getElementById("12").value);
    			//alert("Max value is:"+document.getElementById("max").value);
    			var val=document.getElementById("max2").value;
    			var rArr = [parseFloat(document.getElementById("11").value), parseFloat(document.getElementById("12").value)];
    			
    			//alert("val is:"+val);
    			var tabHt=(240*parseFloat(val)/8);
    			var tabTop=240-tabHt;
    			
    			
    			var elem   = document.getElementById("barTable1");
    			var x = document.getElementById("barTable1").rows.length;
    			   var i=0;
    			   for(i=0;i<x;i++)
    			     document.getElementById("barTable1").deleteRow(0);
    			
    			var cnt=0;
    			for (i = 0; i < rArr.length; i++) {
    			    if(rArr[i]!=0)
    			    {
    			    	var row = elem.insertRow(0);
    			        var cell1 = row.insertCell(0);
    			        if(i==0)
    			        {	
    			        	cell1.style.backgroundColor="#197419";
    			        }
    			        if(i==1)
    			        {
    			        	cell1.style.backgroundColor="#005000";
    			        }
    			        if(i==2)
    			        {
    			        	cell1.style.backgroundColor="#003C00";
    			        }
    			        if(i==3)
    			        {
    			        	cell1.style.backgroundColor="#000A00";
    			        }
    			        cell1.style.height=parseFloat(parseFloat(document.getElementById(""+(i+11)).value)/val)*100+"%";
    			        //alert((i+1)+","+parseFloat(parseFloat(document.getElementById(""+(i+1)).value)/val)*100)
    			        cell1.innerHTML = "Q"+(i+11);
    			       
    			        cnt++;
    			    }
    			}
    			
//    	        
    			//document.getElementById("barTable1").style.marginBottom = 100+"px";
    			document.getElementById("barTable1").style.marginTop = tabTop+"px";
    			document.getElementById("barTable1").style.height = tabHt+"px";
    			document.getElementById("barTable1").style.paddingBottom = "10%";
    			var height = getComputedStyle(elem).getPropertyValue("margin-top");
    			var left = getComputedStyle(elem).getPropertyValue("margin-left");
    		
    	
	}
	
	function submitaction()
	{
			var c1a = document.getElementById("c1a").checked;
			var c1b = document.getElementById("c1b").checked;
			var c1c = document.getElementById("c1c").checked;
			var c1d = document.getElementById("c1d").checked;
			var c2a = document.getElementById("c2a").checked;
			var c2b = document.getElementById("c2b").checked;
			var c2c = document.getElementById("c2c").checked;
			var c2d = document.getElementById("c2d").checked;
			//var c3a = document.getElementById("c3a").checked;
			//var c3b = document.getElementById("c3b").checked;
			//var c3c = document.getElementById("c3c").checked;
			//var c3d = document.getElementById("c3d").checked;
			//var c2a = document.getElementById("c2a").checked;
			//var c4a = document.getElementById("c4a").checked;
			//var c4b = document.getElementById("c4b").checked;
			//var c4c = document.getElementById("c4c").checked;
			//var c4d = document.getElementById("c4d").checked;
		
			if(c1a==true)
				document.getElementById("9").value=1;
			else if(c1b==true)
				document.getElementById("9").value=2;
			else if(c1c==true)
				document.getElementById("9").value=3;
			else if(c1d==true)
				document.getElementById("9").value=4;
			else 
				document.getElementById("9").value=0;
			
			if(c2a==true)
				document.getElementById("10").value=1;
			else if(c2b==true)
				document.getElementById("10").value=2;
			else if(c2c==true)
				document.getElementById("10").value=3;
			else if(c2d==true)
				document.getElementById("10").value=4;
			else 
				document.getElementById("10").value=0;
			
			//if(c3a==true)
				//document.getElementById("7").value=1;
			//else if(c3b==true)
				//document.getElementById("7").value=2;
			//else if(c3c==true)
				//document.getElementById("7").value=3;
			//else if(c3d==true)
				//document.getElementById("7").value=4;
			//else 
				//document.getElementById("7").value=0;
			
			//if(c4a==true)
				//document.getElementById("8").value=1;
			//else if(c4b==true)
				//document.getElementById("8").value=2;
			//else if(c4c==true)
				//document.getElementById("8").value=3;
			//else if(c4d==true)
				//document.getElementById("8").value=4;
			//else 
				//document.getElementById("8").value=0;
			
			
			document.getElementById("max1").value=parseFloat(document.getElementById("9").value)+parseFloat(document.getElementById("10").value);
			//alert("Max value is:"+document.getElementById("max").value);
			var val=document.getElementById("max1").value;
			var rArr = [parseFloat(document.getElementById("9").value), parseFloat(document.getElementById("10").value)];
			
			//alert("val is:"+val);
			var tabHt=(240*parseFloat(val)/8);
			var tabTop=240-tabHt;
			
			
			var elem   = document.getElementById("barTable");
			var x = document.getElementById("barTable").rows.length;
			   var i=0;
			   for(i=0;i<x;i++)
			     document.getElementById("barTable").deleteRow(0);
			
			var cnt=0;
			for (i = 0; i < rArr.length; i++) {
			    if(rArr[i]!=0)
			    {
			    	var row = elem.insertRow(0);
			        var cell1 = row.insertCell(0);
			        if(i==0)
			        {	
			        	cell1.style.backgroundColor="#197419";
			        }
			        if(i==1)
			        {
			        	cell1.style.backgroundColor="#005000";
			        }
			        if(i==2)
			        {
			        	cell1.style.backgroundColor="#003C00";
			        }
			        if(i==3)
			        {
			        	cell1.style.backgroundColor="#000A00";
			        }
			        cell1.style.height=parseFloat(parseFloat(document.getElementById(""+(i+9)).value)/val)*100+"%";
			        //alert((i+1)+","+parseFloat(parseFloat(document.getElementById(""+(i+1)).value)/val)*100)
			        cell1.innerHTML = "Q"+(i+9);
			       
			        cnt++;
			    }
			}
			
//	        
			//document.getElementById("barTable1").style.marginBottom = 100+"px";
			document.getElementById("barTable").style.marginTop = tabTop+"px";
			document.getElementById("barTable").style.height = tabHt+"px";
			document.getElementById("barTable").style.paddingBottom = "10%";
			var height = getComputedStyle(elem).getPropertyValue("margin-top");
			var left = getComputedStyle(elem).getPropertyValue("margin-left");
		
			document.getElementById("q1").value=<%=request.getParameter("q1")%>;
			document.getElementById("q2").value=<%=request.getParameter("q2")%>;
			document.getElementById("q3").value=<%=request.getParameter("q3")%>;
			document.getElementById("q4").value=<%=request.getParameter("q4")%>;
			//alert("check height:"+height+", and left is:"+left);
			
			//alert("tabHt is:"+tabHt+" and tabTop is:"+tabTop+" and val is:"+val);
			
	}
	</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("Test.jsp");
    }
	response.setHeader("Cache-Control", "no-cache, max-age=0, must-revalidate, no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1); 
	//response.
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
	        <!-- <li><a href="QPage1.jsp"><span class="glyphicon glyphicon-arrow-left"></span>Back</a></li> -->
	        
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-play-circle"></span> Welcome <%=session.getAttribute("userid")%></a></li>
	        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	      </ul>
	    </div>
	    </div>
   </div>
</nav>

<br>
<br>
<br>

<%
session.setAttribute("one", session.getAttribute("one"));
session.setAttribute("two", session.getAttribute("two"));
session.setAttribute("three", session.getAttribute("three"));
session.setAttribute("four", session.getAttribute("four"));
session.setAttribute("five", session.getAttribute("five"));
session.setAttribute("six", session.getAttribute("six"));
session.setAttribute("seven", session.getAttribute("seven"));
session.setAttribute("eight", session.getAttribute("eight"));
session.setAttribute("maxTwo", session.getAttribute("maxTwo"));
session.setAttribute("maxOne", session.getAttribute("maxOne"));
%>

<div class="container">

  <!-- Modal -->
  <div class="modal fade" id="myModalPat" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Oops!</h4>
        </div>
        <div class="modal-body">
          <p>Patient Id can not be left blank.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
 <%
	Timestamp ts=(Timestamp)session.getAttribute("timestamp");
	session.setAttribute("timestamp", ts);
	session.setAttribute("q1", "Thinking about your client's physical health needs,are there any symptoms or problems(risk indicators) you are unsure about that require further investigation?");
	session.setAttribute("q2", "Are the client's physical health problems impacting on their mental well being?");
	session.setAttribute("q3", "Are there any problems with your client's lifestyle behaviors (alcohol,drugs,diet,exercise) that are impacting on physical or mental well-being?");
	session.setAttribute("q4", "Do you have any other concerns about your client's mental well-being?How would you rate their severity and impact on the client?");
	session.setAttribute("q5", "How would you rate the home environment in terms of safety and stability(including domestic violence,insecure housing,neighbor harassment)?");
	session.setAttribute("q6", "How do daily activities impact on the client's well-being?(include current or anticipated unemployment,work, caregiving, access to transportation or other)");
	session.setAttribute("q7", "How would you rate their social network(family,work,friends)?");
	session.setAttribute("q8", "How would you rate their financial resources(including ability to aquire all required medical care)?");
    session.setAttribute("q9", "How well does the client now understand their health and well-being(symptoms,signs or risk-factors) and what they need to do to manage their health?");
    session.setAttribute("q10","How well do you think your client can engage in healthcare discussions?(Barriers include language, deafness, aphasia, alcohol or drug problems, learning difficulties, concentration)");
    session.setAttribute("q11","Do other services need to be involved to help this client");
    session.setAttribute("q12","Are current services involved with this client well-coordinated?(Include coordination with other services you are recommending)");
 %>
 
 <form role="form" id="frm1" action="BootPage3.jsp"> 
   <div class="row flex">
  
  	<div class="col-md-10">
  	    <input type="hidden" name="tot_id" id="tot_id" value="" runat="server" />
		<input type="hidden" name="9" id="9" value="" runat="server" />
		<input type="hidden" name="10" id="10" value="" runat="server" />
		<input type="hidden" name="max1" id="max1" value="" runat="server" />
		<input type="hidden" name="q1" id="q1" value="" runat="server" />
		<input type="hidden" name="q2" id="q2" value="" runat="server" />
		<input type="hidden" name="q3" id="q3" value="" runat="server" />
		<input type="hidden" name="q4" id="q4" value="" runat="server" />
		
  		<div class="panel panel-primary">
  		 <div class="panel-heading">
  		 	<div class="row">
  		 		<div class="col-md-6">
          			<h1 class="panel-title text-left">Domain 3:Health Literacy and Communication</h1>
          		</div>
          		<div class="col-md-3">
          			<h1 class="panel-title text-right">PatientId:</h1>
          		</div>
          		<div class="col-md-3" style="padding-top:0px;padding-bottom:0px;">
			    	<h1 class="panel-title text-left">&nbsp;<input type="text" size="10" class="form-control" name="patId" id="patId" value=<%=session.getAttribute("patientId") %> disabled></h1>
			    </div>
            </div>
         </div>
  		 <div class="panel-body">
		  <div class="row">
		    <div class="table-responsive">
		    <table class="table table-bordered" border=2>
			   <tbody>
			    	<tr>
				        <td><b><font color="black">Question</font></b></td>
				        <td colspan="4" class="col-md-8"><font color="black">How well does the client <b>now understand</b> their health and well-being(symptoms,signs or risk-factors) and what they need to do to manage their health?</font></td>
			    	</tr>
			        <tr>
			            <td style="padding-top:0px;width:3%;padding-bottom:0px;"><h3><b>1</b></h3></td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Reasonable to good understanding and already engages in managing health or is willing to undertake better management</font></div>
			                <div class="el08"><input type="radio" id="c1a" name="opt1" value="1"><b>1</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Reasonable to good understanding <u>but</u> do not feel able to engage with advice at this time</font></div>
			                <div class="el08" ><input type="radio" id="c1b" name="opt1" value="2"><b>2</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Little understanding which impacts on their ability to undertake better management</font></div>
			            	<div class="el08" ><input type="radio" id="c1c" name="opt1" value="3"><b>3</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Poor understanding with significant impact on ability to manage health</font></div>
			            	<div class="el08" ><input type="radio" id="c1d" name="opt1" value="4"><b>4</b></div>
						</td>
			        </tr>
			        <tr>
				        <td><b><font color="black">Question</font></b></td>
				        <td colspan="4"><font color="black">How well do you think your client can <b>engage</b> in healthcare discussions?(Barriers include language, deafness, aphasia, alcohol or drug problems, learning difficulties, concentration)</font></td>
			    	</tr>
			        <tr>
			            <td style="padding-top:0px;width:3%;padding-bottom:0px;"><h3><b>2</b></h3></td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Clear and open communication, no identified barriers</font></div>
			                <div class="el08"><input type="radio" id="c2a" name="opt2" value="1"><b>1</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Adequate communication, with or without minor barriers</font></div>
			                <div class="el08" ><input type="radio" id="c2b" name="opt2" value="2"><b>2</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Some difficulties in communication with or without moderate barriers</font></div>
			            	<div class="el08" ><input type="radio" id="c2c" name="opt2" value="3"><b>3</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Serious difficulties in communication ,with severe barriers</font></div>
			            	<div class="el08" ><input type="radio" id="c2d" name="opt2" value="4"><b>4</b></div>
						</td>
			        </tr>
			        
			    </tbody>
			  </table>
			 </div>
		   </div>
		   </div>
		  </div>
		  
   	  </div>
   	  <div class="col-md-2">
	      <div class="panel panel-primary" >
	      	<div class="panel-heading">
          		<h1 class="panel-title text-center">Overall Situation</h1>
        	</div>
	        <div class="panel-body" style="height: 300px;position:relative;">
	        	<center>
	        	 <div class="span12" style="height: 240px;position:relative;filter: alpha(opacity=80);opacity: 0.8;">
					       <div class="row">
					       <div class="span3" style="margin-left: 0cm;margin-top: 0.5cm;border-top: 1px solid #ccc;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(8)Act Now</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(6)Plan Action</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(4)Active Monitoring</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(2)Routine Care</font></p>
					           <div class="innercontainer" style="height: 240px;margin-left:85%;width:20%;background-color: white;border:0px;position:absolute;bottom:-0.5cm;">
									<table class="table table-bordered" id="barTable" border=0 style="margin-bottom:0px;margin-top:0px;margin-left:0px;height:0px;">
										
									</table>
						   	   </div>
					       </div>
					       <div class="span3" style="margin-left: 0cm;">
					           <p align="left"><font color="black">(0)No Concern</font></p>
					       </div>
					        
					       </div>
    				</div>
    			</center>
	        </div>
	      </div>
      </div>
   </div>
   
   <div class="row flex">
  
  	<div class="col-md-10">
  	    <input type="hidden" name="tot_id" id="tot_id" value="" runat="server" />
		<input type="hidden" name="11" id="11" value="" runat="server" />
		<input type="hidden" name="12" id="12" value="" runat="server" />
		<input type="hidden" name="max2" id="max2" value="" runat="server" />
  	 
  		<div class="panel panel-primary">
  		 <div class="panel-heading">
  		 	<div class="row">
  		 		<div class="col-md-6">
          			<h1 class="panel-title text-left">Domain 4:Service Coordination</h1>
          		</div>
            </div>
         </div>
  		 <div class="panel-body">
		  <div class="row">
		    <div class="table-responsive">
		    <table class="table table-bordered" border=2>
			   <tbody>
			    	<tr>
				        <td><b><font color="black">Question</font></b></td>
				        <td colspan="4" class="col-md-8"><font color="black">Do <b>other services</b> need to be involved to help this client?</font></td>
			    	</tr>
			        <tr>
			            <td style="padding-top:0px;width:3%;padding-bottom:0px;"><h3><b>1</b></h3></td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Other care/services not required at this time</font></div>
			                <div class="el08"><input type="radio" id="c3a" name="opt3" value="1"><b>1</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Other care/services in place and adequate</font></div>
			                <div class="el08" ><input type="radio" id="c3b" name="opt3" value="2"><b>2</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Other care/services in place but not sufficient</font></div>
			            	<div class="el08" ><input type="radio" id="c3c" name="opt3" value="3"><b>3</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Other care/services not in place and required</font></div>
			            	<div class="el08" ><input type="radio" id="c3d" name="opt3" value="4"><b>4</b></div>
						</td>
			        </tr>
			        <tr>
				        <td><b><font color="black">Question</font></b></td>
				        <td colspan="4"><font color="black">Are current services involved with this client <b>well-coordinated?</b>(Include coordination with other services you are recommending)</font></td>
			    	</tr>
			        <tr>
			            <td style="padding-top:0px;width:3%;padding-bottom:0px;"><h3><b>2</b></h3></td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">All required care/services in place and well coordinated</font></div>
			                <div class="el08"><input type="radio" id="c4a" name="opt4" value="1"><b>1</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			                <div><font color="black">Required care/services in place and adequately coordinated</font></div>
			                <div class="el08" ><input type="radio" id="c4b" name="opt4" value="2"><b>2</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Required care/services in place with some coordination barriers</font></div>
			            	<div class="el08" ><input type="radio" id="c4c" name="opt4" value="3"><b>3</b></div>
			            </td>
			            <td style="padding-top:0px;padding-bottom:0px;">
			            	<div><font color="black">Required care/services missing and/or fragmented</font></div>
			            	<div class="el08" ><input type="radio" id="c4d" name="opt4" value="4"><b>4</b></div>
						</td>
			        </tr>
			        
			    </tbody>
			  </table>
			 </div>
		   </div>
		   
		   
		   		    
		    <div class="row">
		    	<div class="col-md-12">
		    		<center>
		    	    <button type="button" onclick="submitaction();submitaction1()" class="btn btn-default">Add Answers</button>
		    		</center>
		    	</div>
		    </div>
		    
		    <div class="row">
		    	<div class="col-md-12">
		    	    <button type="button" onclick="myFunction()" class="btn btn-lg btn-primary btn-block">View Problem List and Summary</button>
		    	</div>
		    </div>
		    
		   </div>
		  </div>
		  
   	  </div>
   	  <div class="col-md-2">
	      <div class="panel panel-primary" >
	      	<div class="panel-heading">
          		<h1 class="panel-title text-center">Overall Situation</h1>
        	</div>
	        <div class="panel-body" style="height: 300px;position:relative;">
	        	<center>
	        	 <div class="span12" style="height: 240px;position:relative;filter: alpha(opacity=80);opacity: 0.8;">
					       <div class="row">
					       <div class="span3" style="margin-left: 0cm;margin-top: 0.5cm;border-top: 1px solid #ccc;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(8)Act Now</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(6)Plan Action</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(4)Active Monitoring</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0cm;border-bottom: 1px solid #ccc;height: 60px;">
					           <p align="left"><font color="black">(2)Routine Care</font></p>
					           <div class="innercontainer" style="height: 240px;margin-left:85%;width:20%;background-color: white;border:0px;position:absolute;bottom:-0.5cm;">
									<table class="table table-bordered" id="barTable1" border=0 style="margin-bottom:0px;margin-top:0px;margin-left:0px;height:0px;">
										
									</table>
						   	   </div>
					       </div>
					       <div class="span3" style="margin-left: 0cm;">
					           <p align="left"><font color="black">(0)No Concern</font></p>
					       </div>
					        
					       </div>
    				</div>
    			</center>
	        </div>
	      </div>
      </div>
   </div>
   
  </form>
 </div>
 
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
