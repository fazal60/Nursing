<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questionnaire 3</title>
<script type="text/javascript" src="jquery-1.21.2.min.js"></script>
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
		width: 800px; height: 25px;
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
  function showValue21(num){
           var result = document.getElementById('result21');  
           document.getElementById('slidebar1').value=num; 
           document.getElementById('result21').value=num; 
           result.innerHTML = num;
  }
  function showValue22(num){
      var result = document.getElementById('result22');  
      document.getElementById('slidebar2').value=num;
      document.getElementById('result22').value=num;  
      result.innerHTML = num;
  }
  function showValue23(num){
      var result = document.getElementById('result23');
      document.getElementById('slidebar3').value=num;
      document.getElementById('result23').value=num;    
      result.innerHTML = num;
  }
  function showValue24(num){
      var result = document.getElementById('result24'); 
      document.getElementById('slidebar4').value=num;   
      document.getElementById('result24').value=num;
      result.innerHTML = num;
  }
  function showValue31(num){
      var result = document.getElementById('result31'); 
      document.getElementById('slidebar5').value=num;  
      document.getElementById('result31').value=num; 
      result.innerHTML = num;
  }
  function showValue32(num){
 	  var result = document.getElementById('result32');  
 	 document.getElementById('slidebar6').value=num;
 	  document.getElementById('result32').value=num;  
 	  result.innerHTML = num;
  }
  function showValue33(num){
 	  var result = document.getElementById('result33');  
 	 document.getElementById('slidebar7').value=num;
 	  document.getElementById('result33').value=num;  
 	  result.innerHTML = num;
  }
  function submitaction()
  {
  	
  		
  		if(document.getElementById('total21').value==0||document.getElementById('total21').innerHTML==0 || document.getElementById('total31').value==0||document.getElementById('total31').innerHTML==0 )
  			alert("Please add all the answers before proceeding");
  		else
  			document.forms["form3"].submit();
  		
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
<a class="img" href="anotherTest2.jsp"><img src="Back.jpg" width="150" height="40"></a>
</p>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>

<br>

<form id="form3" action="Page3.jsp">
<center>
<div class="toggler"><font size="3" color="Black"><b> Click here for Instructions</b></font> 
    <div class="fixed-size-square"> 
    	<span>
    		<ul>
    			<li>Patient Id must be entered in order to proceed.</li>
    	  		<li>Patient Id should be a combination of interviewer id and patient name</li>
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
<input type="hidden" name="tot_id2" id="tot_id2" value="" runat="server" />
<input type="hidden" name="9A" id="9A" value="" runat="server" />
<input type="hidden" name="9B" id="9B" value="" runat="server" />
<input type="hidden" name="10A" id="10A" value="" runat="server" />
<input type="hidden" name="10B" id="10B" value="" runat="server" />

<input type="hidden" name="tot_id3" id="tot_id3" value="" runat="server" />
<input type="hidden" name="11" id="11" value="" runat="server" />
<input type="hidden" name="12" id="12" value="" runat="server" />
<input type="hidden" name="13" id="13" value="" runat="server" />
<input type="hidden" name="max3" id="max3" value="" runat="server" />
<input type="hidden" name="max4" id="max4" value="" runat="server" />

<table align="center" width=70% border=10 cellpadding=5>
  <tr>
  		<td colspan="4" align="left"><font size=4 color="Black"><b>Health Literacy and Communication</b></td>
  </tr>
  <tr>
    <td colspan="4"><font size=4 color="black">9.How well does the client <b>now understand</b> their health and well being(symptoms,signs or risk-factors) and what they need to do to manage their health?</font></td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">9A.</font></td>
  	<td colspan="3"><font size=4 color="black">How much understanding does client have of their health problems and management?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Full</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Good</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Reasonable</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Poor</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar1" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue21(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  				<center>
  				<div id="result21" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx5a" name="cbx5a" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  
  
  <tr>
    <td ><font size=4 color="black">9B.</td>
    <td colspan="3"><font color="black" size=4>How engaged is client in self management of their health issues?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Full</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Somewhat</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Limited</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severely limited</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar2" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue22(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result22" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx5b" name="cbx5b" value=0>Choose not to answer
  		</br>
    </td>
  </tr>
  <tr>
  	<td colspan="4"><font size=4 color="black">10.How well do you think your client can <b>engage</b> in healthcare discussions?(Barries include language,deafness,aphasia,alcohol or drug problems,learning difficulties, concentration) </font></td>
  </tr>
  
  
  <tr>
    <td><font size=4 color="black">10A.</font></td>
    <td colspan="3"><font size=4 color="black">How severe are the client's communication issues with providers?</font></b>
    	<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe issues</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar3" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue23(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result23" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx6a" name="cbx6a" value=0>Choose not to answer
  		</br>
    
    </td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">10B.</font>
  		
  	</td>
  	<td colspan="3"><font size=4 color="black">How severe are the barriers to communiation/engagement?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No Barriers</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Minor Barriers</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate Barriers</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe Barriers</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar4" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue24(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
					<center>
					<div id="result24" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  					</center>
  		<br><input type="checkbox" id="cbx6b" name="cbx6b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  	
  	
  	
      
  <tr>
  	<td colspan="4"></td>
  </tr>
  <tr>
    <td colspan=2 align="center"><input type="button" onclick="myFunction1()" value="Add"></input></td>
    <td colspan="2" align="center" >
      <font size=4 color="black"><b>Total</b></font>:<div id="total21" style="height:20px;width:70px;background:white;border:3px solid #999">0
      </div> 
    </td>
    
  </tr>
  </table>
<%--<table align="center" width="600" border=10 cellpadding=5>
<tr>
  <td>
		<hr color="green" width="18%" size=25 style="float:left;">
		<hr color="blue" width="22%" size=25 style="float:left;">
		<hr color="orange" width="22%" size=25 style="float:left;">
		<hr color="red" width="30%" size=25 style="float:left;">
		<br><input type="range" name="cvote1" id="cvote1" style="width: 93%; height: 20px" id="slidebar" min="0" max="16" value="0" ;">
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

		<input type="range" name="cvote1" id="cvote1" align="left" style="width: 94%; height: 20px" id="slidebar" min="0" max="18" value="0" ;">
</div>
</center>

 
<%-- Table for page 4 --%>
<br>
<table align="center" width=70% border=10 cellpadding=5>
  <tr>
  		<td colspan="4" align="left"><font size=4 color="Black"><b>Service Coordination</b></td>
  </tr>
  <tr>
    <td colspan="4"><font size=4 color="black">11.Do <b>other services</b> need to be involved to help this client?</font></td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">11A.</font></td>
  	<td colspan="3"><font size=4 color="black">How severe are any issues with the current services' abilities to address the client's needs?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">No issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Mild issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Moderate issues</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe issues</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar5" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue31(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  				<center>
  				<div id="result31" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx7a" name="cbx7a" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  <tr>
    <td colspan="4"><font size=4 color="black">12.Are services involved with this client well <b>coordinated</b>?</font></td>
    
  </tr>
  <tr>
  	<td><font size=4 color="black">12A.</font></td>
  	<td colspan="3"><font size=4 color="black">How severe are any barriers to effective coordination of current services?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">Well Coordinated</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Few Barriers</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Some Barriers</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Severe Barriers</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar6" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue32(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  				<center>
  				<div id="result32" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx7b" name="cbx7b" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  
  <tr>
  	<td><font size=4 color="black">12B.</font></td>
  	<td colspan="3"><font size=4 color="black">How many unmet needs does the client have that require additional services?</font>
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center"><font size=4 color="Blue">None Required</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">In Place</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Some needs</font></td>
				<td width="25%" align="center"><font size=4 color="Blue">Many needs</font></td>
			</tr>
		</table>
  		<br><input type="range" style="width: 96%; height: 20px" id="slidebar7" min=0.5 max=4.5 step=0.25 value=0 onChange="showValue33(this.value);">
  		<table width=96%>
  			<tr>
  				<td width="25%" align="center">1</td>
				<td width="25%" align="center">2</td>
				<td width="25%" align="center">3</td>
				<td width="25%" align="center">4</td>
			</tr>
		</table>
  				<center>
  				<div id="result33" style="height:40px;width:40px;background:#A9D0F5;border:0px solid #999">0
  					</div>
  				</center>
  		<br><input type="checkbox" id="cbx8a" name="cbx8a" value=0>Choose not to answer
  		</br>
  	
  	</td>
  </tr>
  <tr>
  	<td colspan="4"></td>
  </tr>
  <tr>
    <td colspan=2 align="center"><input type="button" onclick="myFunction2()" value="Add"></input></td>
    <td colspan="2" align="center" >
      <font size=4 color="black"><b>Total</b></font>:<div id="total31" style="height:20px;width:70px;background:white;border:3px solid #999">0
      </div> 
    </td>
    
  </tr>
  <tr>
 	 <td colspan="4" align="center"><input type="button" value="Submit Analysis" onclick="submitaction()" align="center"></td> 
  </tr>
</table>
<%--
<table align="center" width="600" border=10 cellpadding=5>
<tr>
  <td>
		<hr color="green" width="18%" size=25 style="float:left;">
		<hr color="blue" width="22%" size=25 style="float:left;">
		<hr color="orange" width="22%" size=25 style="float:left;">
		<hr color="red" width="30%" size=25 style="float:left;">
		<br><input type="range" name="cvote2" id="cvote2" style="width: 93%; height: 20px" id="slidebar" min="0" max="8" value="0" ;">
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

		<input type="range" name="cvote2" id="cvote2" align="left" style="width: 94%; height: 20px" id="slidebar" min="0" max="13.5" value="0" ;">
</div>
</center>

 
<%-- <a href="anotherTest4.jsp"><font color="black"><p style="text-align:center"><font color="Red" size=6>Submit</font></p></font></a>--%>
<%--<a href="anotherTest.html"><font color="black"><p style="text-align:center"><font color="Red" size=6>Next</font></p></font></a> --%>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
<script>
function myFunction1() {
	var countCheck1=0;
	var c1a = document.getElementById("cbx5a").checked;
	var c1b = document.getElementById("cbx5b").checked;
	var c2a = document.getElementById("cbx6a").checked;
	var c2b = document.getElementById("cbx6b").checked;
	document.getElementById('cvote1').max=18;
	//alert('coming in func 1');
	if(c1a==true)
    {
		//alert('You chose not to answer Question 9A');
    	document.getElementById("9A").value=0;
    	document.getElementById('slidebar1').value=0;
    	document.getElementById('result21').value=0;
    	document.getElementById('result21').innerHTML=0;
    	document.getElementById('cvote1').max=document.getElementById('cvote1').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote1').slider('refresh');
    	countCheck1=countCheck1+1;
    }
    else
    	document.getElementById("9A").value=(document.getElementById('slidebar1').value);   

    if(c1b==true)
    {
    	//alert('You chose not to answer Question 9B');
    	document.getElementById("9B").value=0;
    	document.getElementById('slidebar2').value=0;
    	document.getElementById('result22').value=0;
    	document.getElementById('result22').innerHTML=0;
    	document.getElementById('cvote1').max=document.getElementById('cvote1').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote1').slider('refresh');
    	countCheck1=countCheck1+1;
    }
    else
    	document.getElementById("9B").value=(document.getElementById('slidebar2').value);

    if(c2a==true)
    {
    	//alert('You chose not to answer Question 10A');
    	document.getElementById("10A").value=0;
    	document.getElementById('slidebar3').value=0;
    	document.getElementById('result23').value=0;
    	document.getElementById('result23').innerHTML=0;
    	document.getElementById('cvote1').max=document.getElementById('cvote1').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote1').slider('refresh');
    	countCheck1=countCheck1+1;
    }
    else
    	document.getElementById("10A").value=(document.getElementById('slidebar3').value);

    
	
    if(c2b==true)
    {
    	//alert('You chose not to answer Question 10B');
    	document.getElementById("10B").value=0;
    	document.getElementById('slidebar4').value=0;
    	document.getElementById('result24').value=0;
    	document.getElementById('result24').innerHTML=0;
    	document.getElementById('cvote1').max=document.getElementById('cvote1').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote1').slider('refresh');
    	countCheck1=countCheck1+1;
    }
    else
    	document.getElementById("10B").value=(document.getElementById('slidebar4').value);
	
	
    var numFinal= parseFloat(document.getElementById('slidebar1').value)+parseFloat(document.getElementById('slidebar2').value)+parseFloat(document.getElementById('slidebar3').value)+parseFloat(document.getElementById('slidebar4').value);
    numFinal=numFinal-countCheck1*0.5;
    document.getElementById('max3').value=document.getElementById('cvote1').max;
    document.getElementById('total21').innerHTML=parseFloat(numFinal);
    document.getElementById('total21').value=parseFloat(numFinal);
    document.getElementById("tot_id2").value=document.getElementById('total21').value;
    document.getElementById("cvote1").value = parseFloat(numFinal);
	document.getElementById("cvote1").innerHTML = parseFloat(numFinal);
	//document.getElementById("9A").value=(document.getElementById('slidebar1').value);
	//document.getElementById("9B").value=(document.getElementById('slidebar2').value);
	//document.getElementById("10A").value=(document.getElementById('slidebar3').value);
	//document.getElementById("10B").value=(document.getElementById('slidebar4').value);
    
}
function myFunction2() {
	var c3a = document.getElementById("cbx7a").checked;
	var c3b = document.getElementById("cbx7b").checked;
	var c3c = document.getElementById("cbx8a").checked;
	var countCheck2=0;
	//document.getElementById('cvote2').max=1;
	if(c3a==true)
    {
	    //alert('You chose not to answer Question 11');
    	document.getElementById("11").value=0;
    	document.getElementById('slidebar5').value=0;
    	document.getElementById('result31').value=0;
    	document.getElementById('result31').innerHTML=0;
    	document.getElementById('cvote2').max=document.getElementById('cvote2').max-4.5;
    	//alert('value set to 0');
    	//$('#cvote2').slider('refresh');
    	countCheck2=countCheck2+1;
    }
    else
    	document.getElementById("11").value=(document.getElementById('slidebar5').value);

    if(c3b==true)
    {
    	//alert('You chose not to answer Question 12');
    	document.getElementById("12").value=0;
    	document.getElementById('slidebar6').value=0;
    	document.getElementById('result32').value=0;
    	document.getElementById('result32').innerHTML=0;
    	document.getElementById('cvote2').max=document.getElementById('cvote2').max-4.5;
    	//$('#cvote2').slider('refresh');
    	//alert('value set to 0');
    	countCheck2=countCheck2+1;
    }
    else
    	document.getElementById("12").value=(document.getElementById('slidebar6').value);
    
    if(c3c==true)
    {
    	//alert('You chose not to answer Question 12');
    	document.getElementById("13").value=0;
    	document.getElementById('slidebar7').value=0;
    	document.getElementById('result33').value=0;
    	document.getElementById('result33').innerHTML=0;
    	document.getElementById('cvote2').max=document.getElementById('cvote2').max-4.5;
    	//$('#cvote2').slider('refresh');
    	//alert('value set to 0');
    	countCheck2=countCheck2+1;
    }
    else
    	document.getElementById("13").value=(document.getElementById('slidebar7').value);
	
    var numFinal= parseFloat(document.getElementById('slidebar5').value)+parseFloat(document.getElementById('slidebar6').value)+parseFloat(document.getElementById('slidebar7').value);;
    numFinal=numFinal-countCheck2*0.5;
    document.getElementById('total31').innerHTML=parseFloat(numFinal);
    document.getElementById('max4').value=document.getElementById('cvote2').max;
    //$("#total1").val(parseFloat(numFinal));
    document.getElementById('total31').value=parseFloat(numFinal);
    document.getElementById("tot_id3").value=document.getElementById('total31').value;
    document.getElementById("cvote2").value = parseFloat(numFinal);
	document.getElementById("cvote2").innerHTML = parseFloat(numFinal);
	//document.getElementById("11").value=(document.getElementById('slidebar5').value);
	//document.getElementById("12").value=(document.getElementById('slidebar6').value);
	
    
    //alert(document.getElementById('total1').value)
}
</script>
 
</form>
</body>
</html>