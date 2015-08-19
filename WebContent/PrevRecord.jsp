<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Interviews</title>
<%-- <script type="text/javascript" src="jquery-1.21.2.min.js"></script> --%>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="jquery.dataTables.min.js"></script>
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<link rel="stylesheet" type="text/css" href="jquery.dataTables.css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<style>
.h6 {
    position: fixed;
    left:200px;
    margin-left: auto;
    margin-right: auto;
    bottom: 0px;
    }
    .img { 
        width: 150px; 
        height: 40px; 
        display: inline-block; 
        background: Blue; 
    }
    .mainImg { 
        width: 200px; 
        height: 40px; 
        display: inline-block; 
        background: Blue; 
    }
</style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("index.jsp");
    }
    
%>
<font size="4" color="Black">You are logged in as: <%=session.getAttribute("userid")%></font>
<p align="right">
<%-- 
<img src="Logout.jpg" width="150" height="40" alt="Planets" usemap="#planetmap2">

		<map name="planetmap2">
  			<area shape="rect" coords="0,0,500,140" href="logout.jsp" alt="Sun">
  		</map>  
--%>
<a class="img" href="logout.jsp"><img src="Logout.jpg" width="150" height="40"></a>
</p>
<br>
<h2 align="center"><font size=4 color="Black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<%-- <a href='logout.jsp' align="right"><font size="4" color="black">Log out</font></a>--%>

<br>
<%
	//int flag=0;
	
	String user=session.getAttribute("userid").toString();
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	//ResultSet rs1=st.executeQuery("select * from nurse where username='"+session.getAttribute("userid")+"'");
	//if(rs1.next())
	//{
	//	if(rs1.getString("email").contains("buffalo.edu"))
	//		flag=1;
	//}
	ResultSet rs=st.executeQuery("select * from patient where intvId='"+session.getAttribute("userid")+"'");
	if(rs.next()==false)
	{
		%>
		<center>
			<br><font size="3" color="Red"><h4> <b>You have not analyzed any Patient before</b></h4></font>
		</center>
		<%
	}
	else
	{
		%>
		<center>
		<br><font size="3" color="Green"><h4> <b>Records exist</b></h4></font>
		<table id="example" class="display" cellspacing="0" width="60%">
		<thead>
            <tr>
                <th><font size="3" color="black">Patient ID</font></th>
                <th><font size="3" color="black">D1</font></th>
                <th><font size="3" color="black">D2</font></th>
                <th><font size="3" color="black">D3</font></th>
                <th><font size="3" color="black">D4</font></th>
                <th><font size="3" color="black">Time</font></th>
                
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th><font size="3" color="black">Patient ID</font></th>
                <th><font size="3" color="black">D1</font></th>
                <th><font size="3" color="black">D2</font></th>
                <th><font size="3" color="black">D3</font></th>
                <th><font size="3" color="black">D4</font></th>
                <th><font size="3" color="black">Time</font></th>
            </tr>
        </tfoot>
 
		 <tbody>
            <tr>
                <td align="center"><font size="3" color="black"><%=rs.getString("patId")%></font></td>
                <td align="center"><font size="3" color="black"><%=rs.getString("d1result")%></font></td>
                <td align="center"><font size="3" color="black"><%=rs.getString("d2result")%></font></td>
                <td align="center"><font size="3" color="black"><%=rs.getString("d3result")%></font></td>
                <td align="center"><font size="3" color="black"><%=rs.getString("d4result")%></font></td>
                <td align="center"><font size="3" color="black"><%=rs.getTimestamp("curdate")%></font></td>
                
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
	    			<td align="center"><font size="3" color="black"><%=patId %></font></td>
	    			<td align="center"><font size="3" color="black"><%=d1Result %></font></td>
	    			<td align="center"><font size="3" color="black"><%=d2Result %></font></td>
	    			<td align="center"><font size="3" color="black"><%=d3Result %></font></td>
	    			<td align="center"><font size="3" color="black"><%=d3Result %></font></td>
	    			<td align="center"><font size="3" color="black"><%=time %></font></td>
	    		</tr>
	    	
	    	
	    	<%
	    }
	    %>
	    </tbody>
	    </table>
	    </center>
	    <% 
	    
	}

	
%>

<br>
<center>
<%--
<img src="PToQ.jpg" width="400" height="100" align="center" alt="Planets" usemap="#planetmap">

		<map name="planetmap">
  			<area shape="rect" coords="0,0,400,100" href="anotherTest1.jsp" alt="Sun">
  		</map>  
--%>
<a class="mainImg" href="anotherTest1.jsp"><img src="PToQ.jpg" width="200" height="40"></a>
</center>
</br>
<br>
<center>
<%--
<img src="Back.jpg" width="150" height="40" alt="Planets" usemap="#planetmap3">

		<map name="planetmap3">
  			<area shape="rect" coords="0,0,500,140" href="success.jsp" alt="Sun">
  		</map> 
 --%> 		
<a class="mainImg" href="BootSuccess.jsp"><img src="Back.jpg" width="200" height="40"></a> 
</center>
<br>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
</body>
</html>