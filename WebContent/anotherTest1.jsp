<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" Cache-Control:public;>
<html manifest="demo.appcache">
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="public">
<title align="center">Questionnaire 1</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="toggle.css" />
<script type="text/javascript">
$(function() {
    $('.toggler').click(function() {
        $(this).find('div').slideToggle();
    });
});
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

    var countCheck=0;
	var c1a = document.getElementById("cbx1a").checked;
	var c1b = document.getElementById("cbx1b").checked;
	var c2a = document.getElementById("cbx2a").checked;
	var c2b = document.getElementById("cbx2b").checked;
	var c3a = document.getElementById("cbx3a").checked;
	var c3b = document.getElementById("cbx3b").checked;
	var c4a = document.getElementById("cbx4a").checked;
	var c4b = document.getElementById("cbx4b").checked;
	
	document.getElementById('cvote').max=36;
	//alert('main slider value initially:'+(document.getElementById('cvote').max));
	
    if(c1a==true)
    {
    	document.getElementById("1A").value=0;
    	document.getElementById('slidebar1').value=0;
    	//alert('main slider value:'+document.getElementById("cvote").val());
    	document.getElementById('result1').value=0;
    	document.getElementById('result1').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//$('#cvote').slider('refresh');
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    }
    else
    {
    	//document.getElementById('slidebar1').value=0.5;
    	document.getElementById("1A").value=(document.getElementById('slidebar1').value);
    }   

    if(c1b==true)
    {
    	document.getElementById("1B").value=0;
    	document.getElementById('slidebar2').value=0;
    	document.getElementById('result2').value=0;
    	document.getElementById('result2').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("1B").value=(document.getElementById('slidebar2').value);

    if(c2a==true)
    {
    	document.getElementById("2A").value=0;
    	document.getElementById('slidebar3').value=0;
    	document.getElementById('result3').value=0;
    	document.getElementById('result3').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("2A").value=(document.getElementById('slidebar3').value);

    if(c2b==true)
    {
    	document.getElementById("2B").value=0;
    	document.getElementById('slidebar4').value=0;
    	document.getElementById('result4').value=0;
    	document.getElementById('result4').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("2B").value=(document.getElementById('slidebar4').value);

	
    if(c3a==true)
    {
    	document.getElementById("3A").value=0;
    	document.getElementById('slidebar5').value=0;
    	document.getElementById('result5').value=0;
    	document.getElementById('result5').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("3A").value=(document.getElementById('slidebar5').value);

    if(c3b==true)
    {
    	document.getElementById("3B").value=0;
    	document.getElementById('slidebar6').value=0;
    	document.getElementById('result6').value=0;
    	document.getElementById('result6').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("3B").value=(document.getElementById('slidebar6').value);

    if(c4a==true)
    {
    	document.getElementById("4A").value=0;
    	document.getElementById('slidebar7').value=0;
    	document.getElementById('result7').value=0;
    	document.getElementById('result7').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("4A").value=(document.getElementById('slidebar7').value);

    if(c4b==true)
    {
    	document.getElementById("4B").value=0;
    	document.getElementById('slidebar8').value=0;
    	document.getElementById('result8').value=0;
    	document.getElementById('result8').innerHTML=0;
    	countCheck=countCheck+1;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('main slider value:'+(document.getElementById('cvote').max));
    	//$('#cvote').slider('refresh');
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    }
    else
    	document.getElementById("4B").value=(document.getElementById('slidebar8').value);
    
    //alert('main slider value after all conditions:'+(document.getElementById('cvote').max));
    
    //alert(parseFloat(document.getElementById('slidebar1').value)+parseFloat(0.5));
    //if(c1a==true)
    	//var val=parseFloat(document.getElementById('slidebar1').value)-parseFloat(0.5);

    //alert(parseFloat(document.getElementById('slidebar1').value)-parseFloat(0.5));
    //document.getElementById('slidebar1').value=val;
    //alert(document.getElementById('slidebar1').value);
    var numFinal= parseFloat(document.getElementById('slidebar1').value)+parseFloat(document.getElementById('slidebar2').value)+parseFloat(document.getElementById('slidebar3').value)+parseFloat(document.getElementById('slidebar4').value)+parseFloat(document.getElementById('slidebar5').value)+parseFloat(document.getElementById('slidebar6').value)+parseFloat(document.getElementById('slidebar7').value)+parseFloat(document.getElementById('slidebar8').value);
    numFinal=numFinal-countCheck*0.5;
    document.getElementById('max1').value=document.getElementById('cvote').max;
    document.getElementById('total').innerHTML=parseFloat(numFinal);
    document.getElementById('total').value=parseFloat(numFinal);
    document.getElementById("tot_id").value=document.getElementById('total').value;
    document.getElementById("cvote").value = parseFloat(numFinal);
	document.getElementById("cvote").innerHTML = parseFloat(numFinal);
	
	
	if(document.getElementById('patientid').value==null || document.getElementById('patientid').equals('') ||  document.getElementById('patientid').equals(" ") )
	{
		alert('Patient Id must be entered');
	}
}
function submitaction()
{
	
		var txt = document.getElementById("patientid").value;
		if(txt==null||txt=="")
			alert("Patient Id cannot be left blank");
		else if(document.getElementById('total').value==0||document.getElementById('total').innerHTML==0 )
			alert("Please add all the answers before proceeding");
		else
			document.forms["form1"].submit();
		
}
</script>
<script type="text/javascript">
  res1 = document.getElementById('result1').value;
  
  function showValue1(num){
	  	   //alert(num);
           var result = document.getElementById('result1');
           document.getElementById('slidebar1').value=parseFloat(num);
           if(parseFloat(num)>=0)    
           		document.getElementById('result1').value=parseFloat(num);
           else	
        	    document.getElementById('result1').value=0;
           result.innerHTML = parseFloat(num);
  }
  function showValue2(num){
      var result = document.getElementById('result2'); 
      document.getElementById('slidebar2').value=num; 
      if(parseFloat(num)>0)    
     		document.getElementById('result2').value=num;
      else	
  	   	    document.getElementById('result2').value=0.5;  
      result.innerHTML = num;
  }
  function showValue3(num){
      var result = document.getElementById('result3');
      document.getElementById('slidebar3').value=num;
      if(parseFloat(num)>0)    
   			document.getElementById('result3').value=num;
      else	
	   	    document.getElementById('result3').value=0.5;      
      result.innerHTML = num;
  }
  function showValue4(num){
      var result = document.getElementById('result4');
      document.getElementById('slidebar4').value=num;  
      if(parseFloat(num)>0)    
   			document.getElementById('result4').value=num;
      else	
	   	    document.getElementById('result4').value=0.5;    
      result.innerHTML = num;
  }
  function showValue5(num){
      var result = document.getElementById('result5'); 
      document.getElementById('slidebar5').value=num;
      if(parseFloat(num)>0)    
   			document.getElementById('result5').value=num;
      else	
	   	    document.getElementById('result5').value=0.5;     
      result.innerHTML = num;
  }
  function showValue6(num){
 	  var result = document.getElementById('result6');
 	 document.getElementById('slidebar6').value=num;
 	  if(parseFloat(num)>0)    
  			document.getElementById('result6').value=num;
  	  else	
	   	    document.getElementById('result6').value=0.5;      
 	  result.innerHTML = num;
  }
  function showValue7(num){
      var result = document.getElementById('result7'); 
      document.getElementById('slidebar7').value=num;
      if(parseFloat(num)>0)    
   			document.getElementById('result7').value=num;
      else	
	   	    document.getElementById('result7').value=0.5;     
      result.innerHTML = num;
  }
  function showValue8(num){
      var result = document.getElementById('result8');  
      document.getElementById('slidebar8').value=num; 
      if(parseFloat(num)>0)    
   			document.getElementById('result8').value=num;
      else	
	   	    document.getElementById('result8').value=0.5;   
      result.innerHTML = num;
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
<p align="right">
<font size="4" color="Black">You are logged in as: <%=session.getAttribute("userid")%></font>
<br>
<%-- 
<img src="Logout.jpg" width="150" height="40" alt="Planets" usemap="#planetmap2">

		<map name="planetmap2">
  			<area shape="rect" coords="0,0,500,140" href="logout.jsp" alt="Sun">
  		</map>  
--%>
<a class="img" href="logout.jsp"><img src="Logout.jpg" width="150" height="40"></a>
</p>
<p align="left">
<%--
<img src="Back.jpg" width="150" height="40" alt="Planets" usemap="#planetmap3">

		<map name="planetmap3">
  			<area shape="rect" coords="0,0,500,140" href="success.jsp" alt="Sun">
  		</map> 
 --%> 		
<a class="img" href="BootSuccess.jsp"><img src="Back.jpg" width="150" height="40"></a>
</p>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<br>
<form id="form1" name="form1" action="Page1.jsp">
<center>
<div class="toggler"><font size="3" color="Black"><b> Click here for Instructions</b></font> 
    <div class="fixed-size-square"> 
    	<span>
    		<ul>
    			<li>Patient Id must be entered in order to proceed.</li>
    	  		<li>Patient Id should be a combination of interviewer id and patient name.</li>
    	  		<li>Default minimum answer value for each question below is 0.5.</li>
    	  		<li>You must explicitly click the checkbox if you don't wish to answer any question.</li>
    	  		<li>After answering all the questions, you must click on Add button to sum them all.</li>
    	  	</ul>
    	</span>
    </div>
</div>
<font size="2" color="black">*Patient Id should be a combination of interviewer id and patient name</font>
</center>
<p align="center"><font size="4" color="black">Patient Id:</font><input type="text" name="patientid" id="patientid" value=""></p>
<input type="hidden" name="tot_id" id="tot_id" value="" runat="server" />
<input type="hidden" name="1A" id="1A" value="" runat="server" />
<input type="hidden" name="1B" id="1B" value="" runat="server" />
<input type="hidden" name="2A" id="2A" value="" runat="server" />
<input type="hidden" name="2B" id="2B" value="" runat="server" />
<input type="hidden" name="3A" id="3A" value="" runat="server" />
<input type="hidden" name="3B" id="3B" value="" runat="server" />
<input type="hidden" name="4A" id="4A" value="" runat="server" />
<input type="hidden" name="4B" id="4B" value="" runat="server" />
<input type="hidden" name="max1" id="max1" value="" runat="server" />
<%
	session.setAttribute("patId", request.getParameter("patientid"));
%>

<table align="center" width=70% border=10 cellpadding=5>
  <tr>
  		<td colspan="4" align="left"><font size=4 color="Black"><b>Health and Well-being</b></td>
  </tr>
  <tr>
    <td colspan="4"><font size=4 color="black">1.Thinking about your client's physical health needs,are there any symptoms or problems(risk indicators) you are unsure about that require further investigation?</font></td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">1A.</font></td>
  	<td colspan="3"><font size=4 color="black">How severe are these physical health problems/symptoms?</font>
  		
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No Problem</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar1" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue1(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  		<%--<br><font size=4 color="Blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font> --%>
  				<center>
  				<div class="circleBase type1" id="result1" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx1a" name="cbx1a" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  
  
  <tr>
    <td ><font size=4 color="black">1B.</td>
    <td colspan="3"><font color="black" size=4>How do these physical health problems impact the client's daily life?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No impact</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Minimal</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar2" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue2(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>			<center>
					<%--<div class="circleBase type1" id="result2" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0 --%>
					<div class="circleBase type1" id="result2" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx1b" name="cbx1b" value=0>Choose not to answer
  		</br>
    </td>
  </tr>
  <tr>
  	<td colspan="4"><font size=4 color="black">2.Are the client's <b>physical health problems</b> impacting on their mental well-being?</font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">2A.</font></td>
    <td colspan="3"><font size=4 color="black">How do these physical health problems impact mental well-being?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No impact</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar3" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue3(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div class="circleBase type1" id="result3" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999" >0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx2a" name="cbx2a" value=0>Choose not to answer
  		</br>
    	
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">2B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How do these physcial health problems impact enjoyment of usual activities?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No impact</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Reduced Joy</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Unenjoyable</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Disengaged</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar4" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue4(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div class="circleBase type1" id="result4" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx2b" name="cbx2b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
  </tr>
  <tr>
  	<td colspan="4"><font size=4 color="black">3.Are there any problems with your client's <b>lifestyle behaviors</b>(alcohol,drugs,diet,exercise) that are impacting on <b>physical</b> or <b>mental well being</b></font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">3A.</font></td>
    <td colspan="3"><font size=4 color="black">How severe are these unhealthy behaviors or lifestyles?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe concerns</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar5" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue5(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div class="circleBase type1" id="result5" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx3a" name="cbx3a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">3B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How do these unhealthy behaviors or lifestyles impact physical or mental well-being?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No impact</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Potential negative</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Negative</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe impact</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar6" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue6(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
							<center>
					<div class="circleBase type1" id="result6" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx3b" name="cbx3b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
  </tr>

  <tr>
  	<td colspan="4"><font size=4 color="black">4.Do you have any <b>other concerns</b> about your client's <b>mental well being</b>? How would you rate their severity and impact on the client? </font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">4A.</font></td>
    <td colspan="3"><font size=4 color="black">How severe are these other concerns about mental well-being?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe concerns</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar7" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue7(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div class="circleBase type1" id="result7" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx4a" name="cbx4a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">4B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How do these other concerns impact daily functions?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No impact</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe</font></td>
			</tr>
		</table>
  		<input type="range" style="width: 96%; height: 20px" id="slidebar8" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue8(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div class="circleBase type1" id="result8" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx4b" name="cbx4b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
  </tr>
    
  <%-- <tr>
  	<td colspan="4"></td>
  </tr>
  --%>
  
  <tr>
  	<td colspan=2 align="center"><input type="button" onclick="myFunction()" value="Add"></input></td>
  	
    <td colspan="2" align="center" >
      <font size=4 color="black"><b>Total</b></font>:<div id="total" style="height:20px;width:70px;background:white;border:3px solid #999">0
      </div> 
    </td>
    
  </tr>
  
  <tr>
 	 <td colspan="4" align="center"><input type="button" value="Next Page" onclick="submitaction()" align="center"></td> 
  </tr>
  
</table>
<%--<table align="center" width="700" border=10 cellpadding=5>
<tr>
  <td>
  	 <center>
		<hr align="center" color="green" width="18%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Routine Care;">
		<hr align="center" color="Blue" width="22%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Active Monitoring;">
		<hr align="center" color="orange" width="22%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Plan Action;">
		<hr align="center" color="red" width="30%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Act Now;">
	 
		<br><input type="range" name="cvote" id="cvote" style="width: 93%; height: 20px" id="slidebar" min="0" max="32" value="0" ;">
	
  </td>
 </tr>
</table>
 --%>
<br>
<center>

<table width=65%>
	<tr>
		<td width="20%" align="center">Routine Care</td>
		<td width="23%" align="center">Active Monitoring</td>
		<td width="23%" align="center">Plan Action</td>
		<td width="33%" align="center">Act Now</td>
	</tr>
</table>

</center>

<center>
<div id="colorbar">
	
		
		<hr align="center" color="green" width="20%" size=25  style="float:left;text:Routine Care;">
		<hr color="yellow" width="23%" size=25  style="float:left;text:Active Monitoring;">
		<hr color="orange" width="23%" size=25  style="float:left;text:Plan Action;">
		<hr color="red" width="33%" size=25  style="float:left;text:Act Now;">
		
</div>
</center>

<center>
<div id="slide">

		<input type="range" name="cvote" id="cvote" align="left" style="width: 94%; height: 20px" id="slidebar" min="0" max="36" value="0" ;">
</div>
</center>

</form>
</br>
<%-- <a id="next" href="Page1.jsp"><font color="black"><p style="text-align:center"><font color="Red" size=6>Next</font></p></font></a>--%>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</h6></font></p>
            

</center>

</body>
</html>