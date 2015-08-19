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
	float tot=0;
	String total="0";
	total=request.getParameter("tot_id3");
	String patId=request.getParameter("pateintid");
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	ResultSet rs;
    rs = st.executeQuery("select * from patient where intvId='" + intvId + "' and patId='" + patId + "'");
    rs.last();
    ts=rs.getTimestamp("curdate");
	int i = st.executeUpdate("update patient set d4result='"+total+"'where intvId='"+intvId+"' and patId='"+patId+"' and curdate='"+ts+"'");
	if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Final.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
}
%>
</body>
</html>