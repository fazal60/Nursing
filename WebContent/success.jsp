<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="health.png" type="image/png">
<title>Welcome to PCAM!</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>

</script>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/css" href="toggle.css" />
<script type="text/javascript">
$(function() {
    $('.toggler').click(function() {
        $(this).find('div').slideToggle();
    });
});
</script>
<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
<style>
.h6 {
    position: fixed;
    left:200px;
    margin-left: auto;
    margin-right: auto;
    bottom: 0px;
    }
 p.trigger{
    margin-bottom:7px;
    margin-top:-5px;
}

.toggle_container{
    margin-bottom:10px;
}

.toggle_container p{
    margin:0px;
}

.toggle_container{
    background:#f0f0f0;
    clear: both;
    font-size:100%;
}
.img { 
        width: 150px; 
        height: 40px; 
        display: inline-block; 
        background: Blue; 
    }
.mainImg { 
        width: 400px; 
        height: 100px; 
        display: inline-block; 
        background: Blue; 
    }

</style>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("Test.jsp");
} else {
	int flag=0;
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
	Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	ResultSet rs1=st.executeQuery("select * from nurse where username='"+session.getAttribute("userid")+"'");
	if(rs1.next())
	{
		if(rs1.getString("email").contains("buffalo.edu"))
			flag=1;
	}
%>

<font size="3" color="green">Welcome <%=session.getAttribute("userid")%></font>
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
<center>
<%-- <p class="trigger"><a href="#">Click here to expand and reveal more information</a></p>
<div class="toggle_container">
   <div class="block">
        <p>Content goes here.</p>
    </div>
</div>
--%>

<br>
<%-- <a href="anotherTest1.jsp"><font size="5" color="Yellow">Proceed to Questionnaire</font></a></br>--%>
<center>
<%--
<img src="PToQ.jpg" width="400" height="100" align="center" alt="Planets" usemap="#planetmap">

		<map name="planetmap">
  			<area shape="rect" coords="0,0,400,100" href="anotherTest1.jsp" alt="Sun">
  		</map>  
--%>
<a class="mainImg" href="anotherTest1.jsp"><img src="PToQ.jpg" width="400" height="100"></a>
</center>

<%-- <br>br<a href="PrevRecord.jsp"><font size="5" color="Yellow">Check your previous records</font></a></br>--%>
<br>
<br>
<br>
<center>
<%-- 
<img src="PR.jpg" width="400" height="100" align="center" alt="Planets" usemap="#planetmap1">

		<map name="planetmap1">
  			<area shape="rect" coords="0,0,400,100" href="PrevRecord.jsp" alt="Sun">
  		</map>  
--%>
<a class="mainImg" href="PrevRecord.jsp"><img src="PR.jpg" width="400" height="100"></a>
</center>
<br>
<br>
<br>
<%
	if(flag==1)
	{
		session.setAttribute("userid",session.getAttribute("userid"));
		%>
		<%-- 
		<center>
		<img src="detail.jpg" width="400" height="100" alt="Planets" usemap="#planetmap4">

			<map name="planetmap4">
  				<area shape="rect" coords="0,0,400,100" href="Detail.jsp" alt="Sun">
  			</map>  
  		--%>
  		<a class="mainImg" href="Detail.jsp"><img src="detail.jpg" width="400" height="100"></a>
  		</center>
  		
	<%
	}
}



%>
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="Black"><h6>@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font></h6></p>
            

</center>
<br>

</body>
</html>