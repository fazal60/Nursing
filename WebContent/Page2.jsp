<%@page import="org.apache.tomcat.util.buf.TimeStamp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	//HttpSession session=request.getSession(true);
	String intvId=session.getAttribute("userid").toString();
	Timestamp ts=(Timestamp)session.getAttribute("timestamp");
	Timestamp ts1=(Timestamp)session.getAttribute("timestamp1");
	float tot=0;
	String fiveA=request.getParameter("5A");
	String sixA=request.getParameter("6A");
	String sevenA=request.getParameter("7A");
	String eightA=request.getParameter("8A");
	String fiveB=request.getParameter("5B");
	
	String sevenB=request.getParameter("7B");
	String eightB=request.getParameter("8B");
	String max2=request.getParameter("max2");
	session.setAttribute("timestamp",ts);
	String total="0";
	total=request.getParameter("tot_id1");
	String patId=session.getAttribute("patId").toString();
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	int i = st.executeUpdate("update patient set d2result='"+total+"'where intvId='"+intvId+"' and patId='"+patId+"' and curdate='"+session.getAttribute("timestamp")+"'");
	int j= st.executeUpdate("update health set 5A='"+fiveA+"',5B='"+fiveB+"',6A='"+sixA+"',7A='"+sevenA+"',8A='"+eightA+"',7B='"+sevenB+"',8B='"+eightB+"',max2='"+max2+"' where intvId='"+intvId+"' and patId='"+patId+"' ");
	if (i > 0 && j>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("anotherTest3.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	}
	else
		out.println("Can't proceed:"+patId);
%>
</body>
</html>