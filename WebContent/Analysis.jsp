<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" Cache-Control:public;>
<html manifest="demo.appcache">
<head>
    <title>Analysis</title>
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
		if(session.getAttribute('user').toString()==null || session.getAttribute('user')=="")
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
		else if(document.getElementById('max').value==0)
			alert("Please add all the answers before proceeding");
		else
		{
			//alert("Pat id being sent:"+txt);
			document.forms["frm1"].submit();
		}
	}
		
	function calcOnFunc()
	{
		var one='<%=session.getAttribute("one")%>';
		var two='<%=session.getAttribute("two")%>';
		var three='<%=session.getAttribute("three")%>';
		var four='<%=session.getAttribute("four")%>';
		var five='<%=session.getAttribute("five")%>';
		var six='<%=session.getAttribute("six")%>';
		var seven='<%=session.getAttribute("seven")%>';
		var eight='<%=session.getAttribute("eight")%>';
		var nine='<%=session.getAttribute("nine")%>';
		var ten='<%=session.getAttribute("ten")%>';
		var eleven='<%=session.getAttribute("eleven")%>';
		var twelve='<%=session.getAttribute("twelve")%>';
		var max1='<%=session.getAttribute("maxOne")%>';
		var max2='<%=session.getAttribute("maxTwo")%>';
		var max3='<%=session.getAttribute("maxThree")%>';
		var max4='<%=session.getAttribute("maxFour")%>';
		
		//var query=window.location.search.substring(1);
		//var pair = vars.split("=");
		//alert(pair[0]+","+pair[1]);
		
		
		
		var table = document.getElementById("dom1");
		var x =0;
	    var row = null;
	    var cell1 = null;
	    var cell2 = null;
		
		if(one=='4')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Severe physical health symptoms or problems that cause significant impact on	daily life";	
		}
		if(one=='3')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Mod to severe physical health symptoms or problems that impact on daily life";	
		}
		if(two=='4')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Severe physical health problems which impact mental well-being and prevent engagement with usual activities";	
		}
		if(two=='3')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Moderate to severe physical health problems which impact mental well-being and prevent enjoyment of usual activities";	
		}
		if(three=='4')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Lifestyle behaviors have severe impact on well-being";	
		}
		if(three=='3')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Lifestyle behaviors have mod to severe impact on	client's well-being, preventing enjoyment of usual activities";	
		}
		if(four=='4')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Severe problems with mental well-being impairing most daily functions";	
		}
		if(four=='3')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Mod to severe problems with mental well-being that interfere with function";	
		}
		if(one!='4' && two!='4' && three!='4' && four!='4' && one!='3' && two!='3' && three!='3' && four!='3')
		{
			table = document.getElementById("dom1");
			x = document.getElementById("dom1").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = "-";
		    cell2.innerHTML = "No area of concern";
		}
		
		if(five=='4')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Home environment unsafe and unstable";	
		}
		if(five=='3')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Home environment safety or stability questionable";	
		}
		if(six=='4')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Daily activities (work) have severe negative impact on mental well-being";	
		}
		if(six=='3')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Daily activities contribute to low mood or stress at	times";	
		}
		if(seven=='4')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Little participation with social networks, lonely and socially isolated";	
		}
		if(seven=='3')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Restricted participation with social networks with some degree of social isolation";	
		}
		if(eight=='4')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Financially insecure, very few resources, immediate challenges";	
		}
		if(eight=='3')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Financially insecure, some resource challenges";	
		}
		if(five!='4' && six!='4' && seven!='4' && eight!='4' && five!='3' && six!='3' && seven!='3' && eight!='3')
		{
			table = document.getElementById("dom2");
			x = document.getElementById("dom2").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = "-";
		    cell2.innerHTML = "No area of concern";
		}
		
		if(nine=='4')
		{
			table = document.getElementById("dom3");
			x = document.getElementById("dom3").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Poor health literacy with significant impact on ability to manage health";	
		}
		if(nine=='3')
		{
			table = document.getElementById("dom3");
			x = document.getElementById("dom3").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Limited health literacy which impacts ability to manage health";	
		}
		if(ten=='4')
		{
			table = document.getElementById("dom3");
			x = document.getElementById("dom3").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Serious difficulties in communication, with severe barriers";	
		}
		if(ten=='3')
		{
			table = document.getElementById("dom3");
			x = document.getElementById("dom3").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Some difficulties in communication with or without moderate barriers";	
		}
		if(nine!='4' && ten!='4' && nine!='3' && ten!='3')
		{
			table = document.getElementById("dom3");
			x = document.getElementById("dom3").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = "-";
		    cell2.innerHTML = "No area of concern";
		}
		
		if(eleven=='4')
		{
			table = document.getElementById("dom4");
			x = document.getElementById("dom4").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Required services not in place";	
		}
		if(eleven=='3')
		{
			table = document.getElementById("dom4");
			x = document.getElementById("dom4").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Other services in place but not sufficient";	
		}
		if(twelve=='4')
		{
			table = document.getElementById("dom4");
			x = document.getElementById("dom4").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 4+"";
		    cell2.innerHTML = "Required care/services missing and/or fragmented";	
		}
		if(twelve=='3')
		{
			table = document.getElementById("dom4");
			x = document.getElementById("dom4").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = 3+"";
		    cell2.innerHTML = "Required care/services in place with some coordination barriers";	
		}
		if(eleven!='4' && twelve!='4' && eleven!='3' && twelve!='3')
		{
			table = document.getElementById("dom4");
			x = document.getElementById("dom4").rows.length;
		    row = table.insertRow(x);
		    cell1 = row.insertCell(0);
		    cell2 = row.insertCell(1);
		    cell1.innerHTML = "-";
		    cell2.innerHTML = "No area of concern";
		}
		
		var val=parseFloat(max1)+parseFloat(max2)+parseFloat(max3)+parseFloat(max4);
		
		//alert(val+"===="+parseFloat(max1)+"+"+parseFloat(max2)+"+"+parseFloat(max3)+"+"+parseFloat(max4));
		var rArr = [parseFloat(max1), parseFloat(max2), parseFloat(max3), parseFloat(max4)];
		//alert("rArr[3]:"+rArr[3]);
		//alert"("val is:"+val);
		var tabHt=(400*parseFloat(val)/48);
		var tabTop=400-tabHt;
		
		//alert("tabHt:"+tabHt+",tabTop:"+tabTop);
		var elem   = document.getElementById("barTable");
		//var y = document.getElementById("barTable").rows.length;
		var i=0;
		//for(i=0;i<y;i++)
		  // document.getElementById("barTable").deleteRow(0);
		
		var cnt=0;
		
		//alert("y:"+y+", cnt:"+cnt+", i:"+i+", max1:"+parseFloat(document.getElementById("max"+(0+1)).value));
		for (i = 0; i < 4; i++) {
			//alert("rArr:"+rArr[i]);
		    if(rArr[i]!=0 || rArr[i]!=0.0)
		    {
		    	rowN = elem.insertRow(0);
		        var cellN = rowN.insertCell(0);
		        if(i==0)
		        {	
		        	cellN.style.backgroundColor="#197419";
		        }
		        if(i==1)
		        {
		        	cellN.style.backgroundColor="#005000";
		        }
		        if(i==2)
		        {
		        	cellN.style.backgroundColor="#003C00";
		        }
		        if(i==3)
		        {
		        	cellN.style.backgroundColor="#000A00";
		        }
		        if(i==0)
		        	//cellN.style.height=parseFloat(parseFloat(document.getElementById("maxOne").value)/val)*100+"%";
		        	cellN.style.height=(rArr[0]/val)*100+"%";
		        if(i==1)
		        	//cellN.style.height=parseFloat(parseFloat(document.getElementById("maxTwo").value)/val)*100+"%";
		        	cellN.style.height=(rArr[1]/val)*100+"%";
		        if(i==2)
		        	//cellN.style.height=parseFloat(parseFloat(document.getElementById("maxThree").value)/val)*100+"%";
		        	cellN.style.height=(rArr[2]/val)*100+"%";
		        if(i==3)
		        	//cellN.style.height=parseFloat(parseFloat(document.getElementById("maxFour").value)/val)*100+"%";
		        	cellN.style.height=(rArr[3]/val)*100+"%";
		        //alert((i+1)+","+parseFloat(parseFloat(document.getElementById(""+(i+1)).value)/val)*100)
		        cellN.innerHTML = "Domain"+(i+1);
		       
		        cnt++;
		    }
		}
		
		document.getElementById("barTable").style.marginBottom = 100+"px";
		document.getElementById("barTable").style.marginTop = tabTop+"px";
		document.getElementById("barTable").style.height = tabHt+"px";

		
	}
	</script>
	
  
</head>
<body onload="noBack();calcOnFunc();" onpageshow="if (event.persisted) noBack();" onunload="">
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
  
 <div class="row flex">
  <div class="col-md-9">
  	    
  		<div class="panel panel-primary">
  		 <div class="panel-heading">
  		 	<div class="row">
  		 		<div class="col-md-12">
          			<h1 class="panel-title text-left">Total Score for:<%=session.getAttribute("patientId") %></h1>
          		</div>
            </div>
         </div>
  		 <div class="panel-body">
		  <div class="row">
		    <div class="table-responsive">
		    <table class="table table-bordered" border=2 id="dom1">
			   <tbody>
			    	<tr>
				        <td width=1% align="center"><b>Score</b></td>
				        <td bgcolor="#1B82E6" colspan="4" align="left"><font color="White">Domain 1: Health and Well-Being</font></td>
			    	</tr>
			    </tbody>
			 </table>
			 <table class="table table-bordered" border=2 id="dom2">
			   <tbody>
			        <tr>
				        <td align="center" width=1%><b>Score</b></td>
				        <td bgcolor="#1B82E6" align="left" colspan="4"><font color="White">Domain 2: Social Environment</font></td>
			    	</tr>
			    </tbody>
			 </table>
			 <table class="table table-bordered" border=2 id="dom3">
			   <tbody>
			   		<tr>
				        <td align="center" width=1%><b>Score</b></td>
				        <td bgcolor="#1B82E6" align="left" colspan="4"><font color="White">Domain 3: Health Literacy and Communication</font></td>
			    	</tr>
			    </tbody>
			 </table>
			 <table class="table table-bordered" border=2 id="dom4">
			   <tbody>  	
			        <tr>
			        	<td align="center" width=1%><b>Score</b></td>
			        	<td bgcolor="#1B82E6"  align="left" colspan="4"><font color="White">Domain 4: Service Coordination</font></td>
			    	</tr>
			   </tbody>
			 </table>
			 <form role="form" action="FinalAnalysis.jsp">
			 <table class="table table-bordered" border=2>
			   <tbody>  	
			   		<tr>
			   			<td bgcolor="#1B82E6" align="center" ><b><font color="White">What action is required?</font></b></td>
			   			<td bgcolor="#1B82E6" align="center"><b><font color="White">Who needs to be involved?</font></b></td>
			   			<td bgcolor="#1B82E6" align="center"><b><font color="White">Barriers to action?</font></b></td>
			   		</tr>
			   		<tr>
			   			<td height="30">
			   				<textarea class="form-control" placeholder="Enter text...." id="comment1" name="comment1" value="-"></textarea>
			   			</td>
			   			<td height="30">
			   				<textarea class="form-control" placeholder="Enter text...." id="comment2" name="comment2" value="-"></textarea>
			   			</td>
			   			<td height="30">
			   				<textarea class="form-control" placeholder="Enter text...." id="comment3" name="comment3" value="-"></textarea>
			   			</td>
			   		</tr>
			   </tbody>
			 </table>
			  
			 <table class="table table-bordered" border=2>
			   <tbody>  	
			   		<tr>
			   			<td bgcolor="#1B82E6" align="center"><b><font color="White">What action will be taken?</font></b></td>
			   		</tr>
			   		<tr>
			   			<td height="30">
			   				<textarea class="form-control" placeholder="Enter text...." id="comment4" name="comment4" value="-"></textarea>
			   			</td>
			   		</tr>
			   </tbody>
			 </table> 
			 
			 <div class="col-md-12">
			 	<button type="submit" class="btn btn-lg btn-primary btn-block">Submit Final Analysis</button>
			 </div>
			 
			 </form>
			 </div>
		   </div>
		   
		   
		   		    
		    		    
		   </div>
		  </div>
		  
   	  </div>
   	  <div class="col-md-3">
	      <div class="panel panel-primary" >
	      	<div class="panel-heading">
          		<h1 class="panel-title text-center">Overall Situation</h1>
        	</div>
	        <div class="panel-body" style="height: 500px;position:relative;">
	        	<center>
	        	 <div class="span12" style="height: 400px;position:relative;filter: alpha(opacity=80);opacity: 0.8;">
					       <div class="row">
					       <div class="span3" style="margin-left: 0.5cm;margin-top: 1cm;border-top: 1px solid #ccc;border-bottom: 1px solid #ccc;height: 100px;">
					           <p align="left"><font color="black">(48)Act Now</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0.5cm;border-bottom: 1px solid #ccc;height: 100px;">
					           <p align="left"><font color="black">(36)Plan Action</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0.5cm;border-bottom: 1px solid #ccc;height: 100px;">
					           <p align="left"><font color="black">(24)Active Monitoring</font></p>
					       </div>
					       <div class="span3" style="margin-left: 0.5cm;border-bottom: 1px solid #ccc;height: 100px;">
					           <p align="left"><font color="black">(12)Routine Care</font></p>
					           <div class="innercontainer" style="height: 400px;margin-left:60%;width:20%;background-color: white;border:0.5px solid #ccc;position:absolute;bottom:-1cm;">
									<table class="table table-bordered" id="barTable" border=0 style="margin-bottom:0px;margin-top:0px;margin-left:0px;height:0px;">
									
									</table>
						   	   </div>
					       </div>
					       <div class="span3" style="margin-left: 0.5cm;">
					           <p align="left"><font color="black">(0)No Concern</font></p>
					       </div>
					        
					       </div>
    				</div>
    			</center>
	        </div>
	      </div>
      </div>
   </div>
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
 