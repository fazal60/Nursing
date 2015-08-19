<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="health.png" type="image/png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to PCAM!</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    	response.sendRedirect("Test.jsp");
    }
%>
<center>
<font size="7" color="Black">Congratulations!!Registration is Successful.</font>
<br><font size="4" color="Black">Please Login <a href='Test.jsp'>here</a>
</center>
</body>
</html>