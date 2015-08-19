<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="cs1.css" />
</head>
<body>
<%
    //String userid = request.getParameter("uname");   
    //String pwd = request.getParameter("pass");
    //Class.forName("com.mysql.jdbc.Driver");
    //String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
    //String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");

    //String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    //Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
    //Statement st = con.createStatement();
    //ResultSet rs;
    //rs = st.executeQuery("select * from nurse where username='" + userid + "' and password='" + pwd + "'");
    //if (rs.next()) {
      //  session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        //response.sendRedirect("success.jsp");
    //} else {
      //  out.println("Invalid password <a href='mainJsp.jsp'>try again</a>");
    //}
    
    //---------------------------------------
    String user=request.getParameter("user");
	session.setMaxInactiveInterval(24 * 60 * 60);
	session.setAttribute("userid",user);
	response.sendRedirect("Qpage1.jsp");
%>

<center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="white">@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font>
            </p>

</center>
</body>
</html>