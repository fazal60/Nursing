<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="jquery.dataTables.min.js"></script>
<%--
<script type="text/javascript" src="tabExport.js">
<script type="text/javascript" src="jquery.base64.js">--%>

<link rel="stylesheet" type="text/css" href="jquery.dataTables.css" />
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detailed Record</title>
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
</style>
<script>
function submitaction()
{
	
		var txt = document.getElementById("intvId").value;
		var pat = document.getElementById("patId").value;
		
		if((txt==null||txt=="") && (pat==null||pat==""))
			alert("One of Interviewer Id or Patient Id must be entered");
		
		else if(!(txt==null||txt=="") && !(pat==null||pat==""))
			alert("Interviewer Id and Patient Id CANNOT be entered together");
		
		
		else
		{
			//alert("coming in else");
			window.location.replace("Detail.jsp?name="+txt+"&pat="+pat);
		//	document.forms["form1"].submit();
			<%
				int flag=0;
				//String user=session.getAttribute("userid").toString();
				//session.setAttribute("intvId",);
				
				
			%>
		}
		
}
</script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	response.sendRedirect("index.jsp");

}
if(!(request.getParameter("name") == null) && !(request.getParameter("name") == ""))
{
	flag=1;
	
}
if(!(request.getParameter("pat") == null) && !(request.getParameter("pat") == ""))
{
	flag=2;
	
}
%>
<font size="4" color="Black">You are logged in as: <%=session.getAttribute("userid")%></font>
<p align="left">
<%--
<img src="Back.jpg" width="150" height="40" alt="Planets" usemap="#planetmap3">

		<map name="planetmap3">
  			<area shape="rect" coords="0,0,500,140" href="success.jsp" alt="Sun">
  		</map> 
 --%> 		
<a class="img" href="BootSuccess.jsp"><img src="Back.jpg" width="150" height="40"></a> 
</p>

<p align="right">
<%-- 
<img src="Logout.jpg" width="150" height="40" alt="Planets" usemap="#planetmap2">

		<map name="planetmap2">
  			<area shape="rect" coords="0,0,500,140" href="logout.jsp" alt="Sun">
  		</map>  
--%>
<a class="img" href="logout.jsp"><img src="Logout.jpg" width="150" height="40"></a>
</p>
<h2 align="center"><font size=6 color="black">Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</br> </font></h2>
<hr>
<form id="form1" name="form1" action="">
<center>
<%-- <font size="2" color="black">*Patient Id must be alphanumeric</font>--%>
</center>
<p align="center"><font size="4" color="black">Enter the Interviewer Id:</font><input type="text" name="intvId" id="intvId" value="">
<br><font size="6" color="black"><b>OR</b></font>
<p align="center"><font size="4" color="black">Enter the Patient Id:</font><input type="text" name="patId" id="patId" value="">
<br><br><input type="button" value="View Record" onclick="submitaction()" align="center">
</p>
</form>
<%
	//searching based on interviewer id	
	if(flag==1)
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
		String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

		String url = "jdbc:mysql://"+host+":"+port+"/nurse";
	    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
		Statement st = con.createStatement();
		ResultSet rs=st.executeQuery("select * from health where intvId='"+request.getParameter("name")+"'");
		if(!rs.next())
		{
			%>
			<center>
				<br><font size="1" color="Red"><h3> <b>Records do not exist</b></h3></font>
			</center>
			
			<%
		}
			
		else
		{
			%>
			<center>
				<br><font size="1" color="Green"><h3> <b>Records Exist</b></h3></font>
			</center>
			<%
			%>
			<center>
			<table id="example" class="display" cellspacing="0" width="60%">
			<thead>
            	<tr>
                	<th><font size="1" color="black">Patient ID</font></th>
                	<th><font size="1" color="black">1A</font></th>
                	<th><font size="1" color="black">1B</font></th>
                	<th><font size="1" color="black">2A</font></th>
                	<th><font size="1" color="black">2B</font></th>
                	<th><font size="1" color="black">3A</font></th>
                	<th><font size="1" color="black">3B</font></th>
                	<th><font size="1" color="black">4A</font></th>
                	<th><font size="1" color="black">4B</font></th>
                	<th><font size="1" color="black">5A</font></th>
                	<th><font size="1" color="black">5B</font></th>
                	<th><font size="1" color="black">6A</font></th>
                	<th><font size="1" color="black">7A</font></th>
                	<th><font size="1" color="black">7B</font></th>
                	<th><font size="1" color="black">8A</font></th>
                	<th><font size="1" color="black">8B</font></th>
                	<th><font size="1" color="black">9A</font></th>
                	<th><font size="1" color="black">9B</font></th>
                	<th><font size="1" color="black">10A</font></th>
                	<th><font size="1" color="black">10B</font></th>
                	<th><font size="1" color="black">11</font></th>
                	<th><font size="1" color="black">12</font></th>
                	<th><font size="1" color="black">13</font></th>
                	<th><font size="1" color="black">Time</font></th>
                </tr>
        	</thead>
        	
        	<tfoot>
            	<tr>
                	<th><font size="1" color="black">Patient ID</font></th>
                	<th><font size="1" color="black">1A</font></th>
                	<th><font size="1" color="black">1B</font></th>
                	<th><font size="1" color="black">2A</font></th>
                	<th><font size="1" color="black">2B</font></th>
                	<th><font size="1" color="black">3A</font></th>
                	<th><font size="1" color="black">3B</font></th>
                	<th><font size="1" color="black">4A</font></th>
                	<th><font size="1" color="black">4B</font></th>
                	<th><font size="1" color="black">5A</font></th>
                	<th><font size="1" color="black">5B</font></th>
                	<th><font size="1" color="black">6A</font></th>
                	<th><font size="1" color="black">7A</font></th>
                	<th><font size="1" color="black">7B</font></th>
                	<th><font size="1" color="black">8A</font></th>
                	<th><font size="1" color="black">8B</font></th>
                	<th><font size="1" color="black">9A</font></th>
                	<th><font size="1" color="black">9B</font></th>
                	<th><font size="1" color="black">10A</font></th>
                	<th><font size="1" color="black">10B</font></th>
                	<th><font size="1" color="black">11</font></th>
                	<th><font size="1" color="black">12</font></th>
                	<th><font size="1" color="black">13</font></th>
                	<th><font size="1" color="black">Time</font></th>
            	</tr>
        </tfoot>
        <tbody>
            <tr>
                <td align="center"><font size="1" color="black"><%=rs.getString("PatId")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("6A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("11A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("12A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("13A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getTimestamp("curdate")%></font></td>
                
            </tr>
 			
			<%
			while(rs.next())
			{
				%>
				<tr>
                <td align="center"><font size="1" color="black"><%=rs.getString("PatId")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("6A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("11A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("12A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("13A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getTimestamp("curdate")%></font></td>
                
            </tr>
            <%
			}
			%>
		</tbody>
	    </table>
	    </center>
			<%
		}
		flag=0;
		
	}

    //searching based on patient id
    if(flag==2)
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
		String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

		String url = "jdbc:mysql://"+host+":"+port+"/nurse";
	    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
		Statement st = con.createStatement();
		ResultSet rs=st.executeQuery("select * from health where PatId like '%"+request.getParameter("pat")+"'");
		if(!rs.next())
		{
			%>
			<center>
				<br><font size="1" color="Red"><h3> <b>Records do not exist</b></h3></font>
			</center>
			
			<%
		}
			
		else
		{
			%>
			<center>
				<br><font size="1" color="Green"><h3> <b>Records Exist</b></h3></font>
			</center>
			<%
			%>
			<center>
			<table id="example" class="display" cellspacing="0" width="60%">
			<thead>
            	<tr>
                	<th><font size="1" color="black">Patient ID</font></th>
                	<th><font size="1" color="black">1A</font></th>
                	<th><font size="1" color="black">1B</font></th>
                	<th><font size="1" color="black">2A</font></th>
                	<th><font size="1" color="black">2B</font></th>
                	<th><font size="1" color="black">3A</font></th>
                	<th><font size="1" color="black">3B</font></th>
                	<th><font size="1" color="black">4A</font></th>
                	<th><font size="1" color="black">4B</font></th>
                	<th><font size="1" color="black">5A</font></th>
                	<th><font size="1" color="black">5B</font></th>
                	<th><font size="1" color="black">6A</font></th>
                	<th><font size="1" color="black">7A</font></th>
                	<th><font size="1" color="black">7B</font></th>
                	<th><font size="1" color="black">8A</font></th>
                	<th><font size="1" color="black">8B</font></th>
                	<th><font size="1" color="black">9A</font></th>
                	<th><font size="1" color="black">9B</font></th>
                	<th><font size="1" color="black">10A</font></th>
                	<th><font size="1" color="black">10B</font></th>
                	<th><font size="1" color="black">11</font></th>
                	<th><font size="1" color="black">12</font></th>
                	<th><font size="1" color="black">13</font></th>
                	<th><font size="1" color="black">Time</font></th>
                </tr>
        	</thead>
        	
        	<tfoot>
            	<tr>
                	<th><font size="1" color="black">Patient ID</font></th>
                	<th><font size="1" color="black">1A</font></th>
                	<th><font size="1" color="black">1B</font></th>
                	<th><font size="1" color="black">2A</font></th>
                	<th><font size="1" color="black">2B</font></th>
                	<th><font size="1" color="black">3A</font></th>
                	<th><font size="1" color="black">3B</font></th>
                	<th><font size="1" color="black">4A</font></th>
                	<th><font size="1" color="black">4B</font></th>
                	<th><font size="1" color="black">5A</font></th>
                	<th><font size="1" color="black">5B</font></th>
                	<th><font size="1" color="black">6A</font></th>
                	<th><font size="1" color="black">7A</font></th>
                	<th><font size="1" color="black">7B</font></th>
                	<th><font size="1" color="black">8A</font></th>
                	<th><font size="1" color="black">8B</font></th>
                	<th><font size="1" color="black">9A</font></th>
                	<th><font size="1" color="black">9B</font></th>
                	<th><font size="1" color="black">10A</font></th>
                	<th><font size="1" color="black">10B</font></th>
                	<th><font size="1" color="black">11</font></th>
                	<th><font size="1" color="black">12</font></th>
                	<th><font size="1" color="black">13</font></th>
                	<th><font size="1" color="black">Time</font></th>
            	</tr>
        </tfoot>
        <tbody>
            <tr>
                <td align="center"><font size="1" color="black"><%=rs.getString("PatId")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("6A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("11A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("12A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("13A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getTimestamp("curdate")%></font></td>
                
            </tr>
 			
			<%
			while(rs.next())
			{
				%>
				<tr>
                <td align="center"><font size="1" color="black"><%=rs.getString("PatId")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("1B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("2B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("3B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("4B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("5B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("6A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("7B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("8B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("9B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("10B")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("11A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("12A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getString("13A")%></font></td>
                <td align="center"><font size="1" color="black"><%=rs.getTimestamp("curdate")%></font></td>
                
            </tr>
            <%
			}
			%>
		</tbody>
	    </table>
	    </center>
	    
	    <br>
			<center>
				 <input type="button" value="Download" id="btnExport">
			</center>
			<%
		}
		flag=0;
		
	}



	
%>


<br>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
</body>
</html>