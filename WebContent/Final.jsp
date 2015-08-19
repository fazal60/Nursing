<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title align="center">Analysis Completed</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
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

</style>
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<script>
	function myFunction()
	{
		<%
		String intvId=session.getAttribute("userid").toString();
		String patId=session.getAttribute("patId").toString();
		//session.setAttribute("patId", "");
		String d1,d2,d3,d4,max1,max2,max3,max4;
		float finalD=0,finalMax=0;
		Class.forName("com.mysql.jdbc.Driver");
		String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
		String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
		String url = "jdbc:mysql://"+host+":"+port+"/nurse";
		Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
		Statement st = con.createStatement();
		ResultSet rs;
	    rs = st.executeQuery("select * from patient where intvId='" + intvId + "' and patId='" + patId + "'");
	    rs.last();
	    d1=rs.getString("d1result");
	    d2=rs.getString("d2result");
	    d3=rs.getString("d3result");
	    d4=rs.getString("d4result");
	    finalD=Float.parseFloat(d1)+Float.parseFloat(d2)+Float.parseFloat(d3)+Float.parseFloat(d4);
	    
	    rs = st.executeQuery("select * from health where intvId='" + intvId + "' and patId='" + patId + "'");
	    rs.last();
	    max1=rs.getString("max1");
	    max2=rs.getString("max2");
	    max3=rs.getString("max3");
	    max4=rs.getString("max4");
	    finalMax=Float.parseFloat(max1)+Float.parseFloat(max2)+Float.parseFloat(max3)+Float.parseFloat(max4);
	    
	%>
		document.getElementById("cvote").max=<%=finalMax%>;
		document.getElementById("cvote").value=<%=finalD%>;
		document.getElementById("cvote").innerHTML = <%=finalD%>;
	}
</script>
</head>
<body onload="myFunction();noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<p align="right">
<img src="Logout.jpg" width="150" height="40" alt="Planets" usemap="#planetmap2">

		<map name="planetmap2">
  			<area shape="rect" coords="0,0,500,140" href="logout.jsp" alt="Sun">
  		</map>  
</p>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<center>
<h2><font size="6" color="Black">Congratulations!! Analysis Completed</font></h2>
</center>
<center>
<br><font size="4" color="Black">Cumulative Result of the Analysis is as under: </font>
</center>
<script>
	document.getElementById("tot").value=<%=finalD%>
</script>
<input type="hidden" name="tot" id="tot" value="" runat="server" />
<%--<table align="center" width="700" border=10 cellpadding=5>
<tr>
  <td>
		<hr color="green" width="18%" size=25  style="float:left;text:Routine Care;">
		<hr color="yellow" width="22%" size=25  style="float:left;text:Active Monitoring;">
		<hr color="orange" width="22%" size=25  style="float:left;text:Plan Action;">
		<hr color="red" width="30%" size=25  style="float:left;text:Act Now;">
		<br><input type="range" name="cvote" id="cvote" style="width: 93%; height: 20px" id="slidebar" min="0" max="88" value="0" ;">
  </td>
 </tr>
</table>
--%>
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
		
		<hr align="center" color="green" width="20%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Routine Care;">
		<hr color="yellow" width="23%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Active Monitoring;">
		<hr color="orange" width="23%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Plan Action;">
		<hr color="red" width="33%" size=25 text="Routine Care" value="Routine Care" style="float:left;text:Act Now;">
		
</div>
</center>

<center>
<div id="slide">

		<input type="range" name="cvote" id="cvote" align="left" style="width: 94%; height: 20px" id="slidebar" min="0" max="84" value="0" ;">
</div>
</center>

<br>

<center>
	<div class="toggler"><font size="3" color="Black"><b> Color Bar Details</b></font> 
    <div class="fixed-size-square"> 
    	<span>
    		<ul>
    			<li>Green:Routine Care</li>
    	  		<li>Yellow:Active Monitoring</li>
    	  		<li>Orange:Plan Action</li>
    	  		<li>Red:Act Now</li>
    	  		
    	  	</ul>
    	</span>
    </div>
</div>
</center>
<center>
<br><a href="success.jsp"><font size="5" color="black">Go Back to Home</font></a></br>
</center>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
</body>
</html>