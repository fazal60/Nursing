<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" Cache-Control:public;>
<html manifest="demo.appcache">
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="public">
<title>Questionnaire 2</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<link rel="stylesheet" type="text/css" href="style.css" />
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
	#colorbar
	{
		width: 65%; height: 50px;
    	border-style: hidden;
    	border-color: white;
    	
	}
	#tags
	{
		width: 800px; height: 25px;
    	border-style: hidden;
    	border-color: white;
	}
	#slide
	{
		width: 69%; height: 50px;
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

<script type="text/javascript">
  function showValue11(num){
	  	   if(isNaN(num))
	  	   {
	  		 document.getElementById('result11').value=0;   
	  	   }
	  	   else
	  	   {
           	 var result = document.getElementById('result11');   
           	 document.getElementById('slidebar1').value=num;
             document.getElementById('result11').value=num; 
             result.innerHTML = num;
	  	   }
  }
  function showValue12(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result12').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result12');
      	document.getElementById('slidebar2').value=num;   
        document.getElementById('result12').value=num; 
        result.innerHTML = num;
 	   }
  }
  function showValue13(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result13').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result13'); 
      	document.getElementById('slidebar3').value=num;  
        document.getElementById('result13').value=num; 
        result.innerHTML = num;
 	   }
  }
  function showValue14(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result14').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result14');  
      	document.getElementById('slidebar4').value=num; 
        document.getElementById('result14').value=num; 
        result.innerHTML = num;
 	   }
  }
  function showValue15(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result15').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result15');   
      	document.getElementById('slidebar5').value=num;
         document.getElementById('result15').value=num; 
         result.innerHTML = num;
 	   }
  }
  function showValue16(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result16').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result16');  
      	document.getElementById('slidebar6').value=num; 
         document.getElementById('result16').value=num; 
         result.innerHTML = num;
 	   }
  }
  function showValue17(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result17').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result17'); 
      	document.getElementById('slidebar7').value=num;  
        document.getElementById('result17').value=num; 
        result.innerHTML = num;
 	   }
  }
  function showValue18(num){
	  if(isNaN(num))
 	   {
 		 document.getElementById('result18').value=0;   
 	   }
 	   else
 	   {
      	 var result = document.getElementById('result18');  
      	document.getElementById('slidebar8').value=num; 
        document.getElementById('result18').value=num; 
        result.innerHTML = num;
 	   }
  }
  function submitaction()
  {
  	
  		
  		if(document.getElementById('total11').value==0||document.getElementById('total11').innerHTML==0 )
  			alert("Please add all the answers before proceeding");
  		else
  			document.forms["form2"].submit();
  		
  }
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("index.jsp");
    }
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
<a class="img" href="anotherTest1.jsp"><img src="Back.jpg" width="150" height="40"></a>
</p>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>

<br>
<form id="form2" action="Page2.jsp">
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
<p align="center"><font size="4" color="black">Patient Id:</font><input type="text" name="pateintid" value=<%=session.getAttribute("patId") %> disabled></input></p>
<input type="hidden" name="tot_id1" id="tot_id1" value="" runat="server" />
<input type="hidden" name="5A" id="5A" value="" runat="server" />
<input type="hidden" name="5B" id="5B" value="" runat="server" />
<input type="hidden" name="6A" id="6A" value="" runat="server" />
<input type="hidden" name="7A" id="7A" value="" runat="server" />
<input type="hidden" name="7B" id="7B" value="" runat="server" />
<input type="hidden" name="8A" id="8A" value="" runat="server" />
<input type="hidden" name="8B" id="8B" value="" runat="server" />
<input type="hidden" name="max2" id="max2" value="" runat="server" />

<%
	session.setAttribute("patId", session.getAttribute("patId"));
%>

<table align="center" width=70% border=10 cellpadding=5>
  <tr>
  		<td colspan="4" align="left"><font size=4 color="Black"><b>Social Environment</b></td>
  </tr>
  <tr>
    <td colspan="4"><font size=4 color="black">5.How would you rate their <b>home environment</b> in terms of <b>safety and stability</b>(including domestic violence,insecure tenancy,neighbor harassment)?</font></td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">5A.</font></td>
  	<td colspan="3"><font size=4 color="black">How safe is the Home Environment?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Safe</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Inconsistent</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Questionnable</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Unsafe</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar1" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue11(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  				<center>
  				<div id="result11" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx5a" name="cbx5a" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  
  
  <tr>
    <td ><font size=4 color="black">5B.</td>
    <td colspan="3"><font color="black" size=4>How stable is the Home Environment?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Stable</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Inconsistent</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Questionnable</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Unstable</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar2" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue12(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result12" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx5b" name="cbx5b" value=0>Choose not to answer
  		</br>
    </td>
  </tr>
  <tr>
  	<td colspan="4"><font size=4 color="black">6.How do <b>dailty activities</b> impact on client's well-being?(include current or anticipated unemployment,work,caring or other)</font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">6A.</font></td>
    <td colspan="3"><font size=4 color="black">How does employment/activity impact well-being?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Neutral/Positive</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild Negative</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Stressfull</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe Negative</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar3" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue13(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result13" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx6a" name="cbx6a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  
  <tr>
  	<td colspan="4"><font size=4 color="black">7.How would you rate their <b>social network</b>(family,work,friends)?</font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">7A.</font></td>
    <td colspan="3"><font size=4 color="black">How much does the client participate in their Social Network?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Full Participation</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Adequate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Some</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">No Participation</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar5" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue15(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result15" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx7a" name="cbx7a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">7B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How well integrated/connected is the client in their social network?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Full Integration</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Some Isolation</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mostly Isolated</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Full Isolation</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar6" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue16(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result16" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx7b" name="cbx7b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
  </tr>

  <tr>
  	<td colspan="4"><font size=4 color="black">8.How would you rate their <b>financial resources</b>?(include ability to afford all required medical care)</font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">8A.</font></td>
    <td colspan="3"><font size=4 color="black">How adequate are financial resources to meet need?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Fully adequate</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mostly</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Somewhat</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Inadequate</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar7" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue17(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result17" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx8a" name="cbx8a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">8B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How secure and stable are these financial resources?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No Concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild Concerns</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate Concern</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Insecure</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar8" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue18(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result18" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx8b" name="cbx8b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
  </tr>
    
  <tr>
  	<td colspan="4"></td>
  </tr>
  <tr>
    <td colspan=2 align="center"><input type="button" onclick="myFunction()" value="Add"></input></td>
    <td colspan="2" align="center" >
      <font size=4 color="black"><b>Total</b></font>:<div id="total11" style="height:20px;width:70px;background:white;border:3px solid #999">0
      </div> 
    </td>
    
  </tr>
  <tr>
 	 <td colspan="4" align="center"><input type="button" value="Next Page" onclick="submitaction()" align="center"></td> 
  </tr>
</table>
<%--<table align="center" width="600" border=10 cellpadding=5>
<tr>
  <td>
		<hr color="green" width="18%" size=25 style="float:left;">
		<hr color="Blue" width="22%" size=25 style="float:left;">
		<hr color="orange" width="22%" size=25 style="float:left;">
		<hr color="red" width="30%" size=25 style="float:left;">
		<br><input type="range" name="cvote" id="cvote" style="width: 93%; height: 20px" id="slidebar" min="0" max="32" value="0" ;">
  </td>
 </tr>
</table>
 --%>
<center>
<table width=800>
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
	
		<hr align="center" color="green" width="20%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Routine Care;">
		<hr color="yellow" width="23%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Active Monitoring;">
		<hr color="orange" width="23%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Plan Action;">
		<hr color="red" width="32%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Act Now;">
		
</div>
</center>

<center>
<div id="slide">

		<input type="range" name="cvote" id="cvote" align="left" style="width: 94%; height: 20px" id="slidebar" min="0" max="31.5" value="0" ;">
</div>
</center>
<%--<a href="anotherTest2.html"><font color="black"><p style="text-align:center"><font color="Red" size=6>Next</font></p></font></a> --%>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
<script>
function myFunction() {

	var countCheck=0;
	var c1a = document.getElementById("cbx5a").checked;
	var c1b = document.getElementById("cbx5b").checked;
	var c2a = document.getElementById("cbx6a").checked;
	
	var c3a = document.getElementById("cbx7a").checked;
	var c3b = document.getElementById("cbx7b").checked;
	var c4a = document.getElementById("cbx8a").checked;
	var c4b = document.getElementById("cbx8b").checked;

	document.getElementById('cvote').max=31.5;
	
	if(c1a==true)
    {
    	document.getElementById("5A").value=0;
    	document.getElementById('slidebar1').value=0;
    	document.getElementById('result11').value=0;
    	document.getElementById('result11').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("5A").value=(document.getElementById('slidebar1').value);   

    if(c1b==true)
    {
    	document.getElementById("5B").value=0;
    	document.getElementById('slidebar2').value=0;
    	document.getElementById('result12').value=0;
    	document.getElementById('result12').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("5B").value=(document.getElementById('slidebar2').value);

    if(c2a==true)
    {
    	document.getElementById("6A").value=0;
    	document.getElementById('slidebar3').value=0;
    	document.getElementById('result13').value=0;
    	document.getElementById('result13').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("6A").value=(document.getElementById('slidebar3').value);

    
	
    if(c3a==true)
    {
    	document.getElementById("7A").value=0;
    	document.getElementById('slidebar5').value=0;
    	document.getElementById('result15').value=0;
    	document.getElementById('result15').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("7A").value=(document.getElementById('slidebar5').value);

    if(c3b==true)
    {
    	document.getElementById("7B").value=0;
    	document.getElementById('slidebar6').value=0;
    	document.getElementById('result16').value=0;
    	document.getElementById('result16').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("7B").value=(document.getElementById('slidebar6').value);

    if(c4a==true)
    {
    	document.getElementById("8A").value=0;
    	document.getElementById('slidebar7').value=0;
    	document.getElementById('result17').value=0;
    	document.getElementById('result17').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("8A").value=(document.getElementById('slidebar7').value);

    if(c4b==true)
    {
    	document.getElementById("8B").value=0;
    	document.getElementById('slidebar8').value=0;
    	document.getElementById('result18').value=0;
    	document.getElementById('result18').innerHTML=0;
    	document.getElementById('cvote').max=document.getElementById('cvote').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote').slider('refresh');
    	countCheck=countCheck+1;
    }
    else
    	document.getElementById("8B").value=(document.getElementById('slidebar8').value);
	
	
	var numFinal= parseFloat(document.getElementById('slidebar1').value)+parseFloat(document.getElementById('slidebar2').value)+parseFloat(document.getElementById('slidebar3').value)+parseFloat(document.getElementById('slidebar5').value)+parseFloat(document.getElementById('slidebar6').value)+parseFloat(document.getElementById('slidebar7').value)+parseFloat(document.getElementById('slidebar8').value);
	numFinal=numFinal-countCheck*0.5;
    //if(isNaN(numFinal))
    //{
    	//document.getElementById('total11').innerHTML=0;
        //$("#total1").val(parseFloat(numFinal));
        //document.getElementById('total11').value=0;
      //  alert("Select non-zero values for all questions");
        
    //}	
    //else
    {
    	document.getElementById('max2').value=document.getElementById('cvote').max;
    	document.getElementById('total11').innerHTML=parseFloat(numFinal);
    	//$("#total1").val(parseFloat(numFinal));
    	document.getElementById('total11').value=parseFloat(numFinal);
    	document.getElementById("cvote").value = parseFloat(numFinal);
    	document.getElementById("cvote").innerHTML = parseFloat(numFinal);
    	//document.getElementById("5A").value=(document.getElementById('slidebar1').value);
    	//document.getElementById("5B").value=(document.getElementById('slidebar2').value);
    	//document.getElementById("6A").value=(document.getElementById('slidebar3').value);
    	
    	//document.getElementById("7A").value=(document.getElementById('slidebar5').value);
    	//document.getElementById("7B").value=(document.getElementById('slidebar6').value);
    	//document.getElementById("8A").value=(document.getElementById('slidebar7').value);
    	//document.getElementById("8B").value=(document.getElementById('slidebar8').value);
    }
    document.getElementById("tot_id1").value=document.getElementById('total11').value;
    
    //alert(document.getElementById('total1').value)
}
</script>
 
</form>
</body>
</html>