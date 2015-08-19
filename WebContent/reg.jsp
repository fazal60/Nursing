<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PCAM</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="cs1.css" />
</head>
<body>
<%
    String user = request.getParameter("user");   
    String pwd = request.getParameter("pwd");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
    String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	out.println(email);
    String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
    Statement st = con.createStatement();
    //ResultSet rs;
    //out.println("<html>");
    	//	out.println("<body>");
    		//out.println("<h4>"+user+"</h4>");
    		//out.println("<h4>"+pwd+"</h4>");
    		//out.println("<h4>"+fname+"</h4>");
    		//out.println("<h4>"+lname+"</h4>");
    		//out.println("<h4>"+email+"</h4>");
    		//out.println("</body>");
    		//out.println("</html>");
    if(email.trim().contains("umn.edu") || email.trim().contains("buffalo.edu"))
    {
    	
    	int i = st.executeUpdate("insert into nurse(first_name, last_name, email, username, password, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    	if (i > 0) {
        	session.setAttribute("userid", user);
        	response.sendRedirect("welcome.jsp");
    	   	// out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    	} else {
    		
    		
    		
        	response.sendRedirect("index.jsp");
    	}
    	//out.println("<font size=4 color=white>Not a valid email id</font>");
    	 
    	
    }
    else
    {
    	%>
		<font size=4 color=white>Not a valid email id</font>
		<br>
		<a href="registration.jsp"><font size=3 color=white>Go back to Registration Page</font></a>
		<br>
	<%
    }
	%>
	
<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="white">@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font>
            </p>

</center>
</body>
</html>