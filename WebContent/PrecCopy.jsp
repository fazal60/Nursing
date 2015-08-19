<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Interviews</title>
<script type="text/javascript" src="jquery-1.21.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="cs1.css" />

</head>
<body>

<font size="4" color="Pink">You are logged in as: <%=session.getAttribute("userid")%></font>
<p align="right">
<img src="Logout.jpg" width="150" height="40" alt="Planets" usemap="#planetmap">

		<map name="planetmap">
  			<area shape="rect" coords="0,0,500,140" href="logout.jsp" alt="Sun">
  		</map>  
</p>
<br>
<h2 align="center"><font size=4 color="white">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<%-- <a href='logout.jsp' align="right"><font size="4" color="white">Log out</font></a>--%>

<br>
<%
	String user=session.getAttribute("userid").toString();
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select * from patient");
	if(rs.next()==false)
	{
		%>
		<center>
			<br><font size="3" color="white"><h4> <b>You have not analyzed any Patient before</b></h4></font>
		</center>
		<%
	}
	else
	{
		%>
		<center>
		<br><font size="3" color="White"><h4> <b>Records exist</b></h4></font>
		<table border=3 cellpadding="4">
		<tr>
			<td align="center"><font size="3" color="white"><b>Patient id:</b></font></td>
	    	<td align="center"><font size="3" color="white"><b>D1</b></font></td>
	    	<td align="center"><font size="3" color="white"><b>D2</b></font></td>
	    	<td align="center"><font size="3" color="white"><b>D3</b></font></td>
	    	<td align="center"><font size="3" color="white"><b>D4</b></font></td>
	    	<td align="center"><font size="3" color="white"><b>Time</b></font></td>
		</tr>
		<tr>
	    			<td align="center"><font size="3" color="white"><%=rs.getString("patId")%></font></td>
	    			<td align="center"><font size="3" color="white"><%=rs.getString("d1result") %></font></td>
	    			<td align="center"><font size="3" color="white"><%=rs.getString("d2result") %></font></td>
	    			<td align="center"><font size="3" color="white"><%=rs.getString("d3result") %></font></td>
	    			<td align="center"><font size="3" color="white"><%=rs.getString("d4result") %></font></td>
	    			<td align="center"><font size="3" color="white"><%=rs.getTimestamp("curdate") %></font></td>
	    </tr>
	    <%
	    while(rs.next())
	    {
	    	String patId=rs.getString("patId");
	    	String d1Result=rs.getString("d1result");
	    	String d2Result=rs.getString("d2result");
	    	String d3Result=rs.getString("d3result");
	    	String d4Result=rs.getString("d4result");
	    	Timestamp time=rs.getTimestamp("curdate");
	    	
	    	%>
	    	
	    		<tr>
	    			<td align="center"><font size="3" color="white"><%=patId %></font></td>
	    			<td align="center"><font size="3" color="white"><%=d1Result %></font></td>
	    			<td align="center"><font size="3" color="white"><%=d2Result %></font></td>
	    			<td align="center"><font size="3" color="white"><%=d3Result %></font></td>
	    			<td align="center"><font size="3" color="white"><%=d3Result %></font></td>
	    			<td align="center"><font size="3" color="white"><%=time %></font></td>
	    		</tr>
	    	
	    	
	    	<%
	    }
	    %>
	    </table>
	    </center>
	    <% 
	    
	}

	
%>

<br>
<center>
<img src="PToQ.jpg" width="200" height="40" align="center" alt="Planets" usemap="#planetmap">

		<map name="planetmap">
  			<area shape="rect" coords="0,0,500,140" href="anotherTest1.jsp" alt="Sun">
  		</map>  
</center>
</br>
<br>
<center>
<img src="back2main.jpg" width="200" height="40" align="center" alt="Planets" usemap="#planetmap1">

		<map name="planetmap1">
  			<area shape="rect" coords="0,0,500,140" href="mainJsp.jsp" alt="Sun">
  		</map>  
</center>
</body>
</html>