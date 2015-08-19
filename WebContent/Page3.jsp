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
	String nineA=request.getParameter("9A");
	String tenA=request.getParameter("10A");
	String nineB=request.getParameter("9B");
	String tenB=request.getParameter("10B");
	String max3=request.getParameter("max3");
	String max4=request.getParameter("max4");
	String eleven=request.getParameter("11");
	
	String twelve=request.getParameter("12");
	String thirteen=request.getParameter("13");
	
	String total4="0",total3="0";
	total3=request.getParameter("tot_id2");
	total4=request.getParameter("tot_id3");
	String patId=session.getAttribute("patId").toString();
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
	int i = st.executeUpdate("update patient set d3result='"+total3+"',d4result='"+total4+"' where intvId='"+intvId+"' and patId='"+patId+"' and curdate='"+ts+"'");
	int j= st.executeUpdate("update health set 9A='"+nineA+"',9B='"+nineB+"',10A='"+tenA+"',10B='"+tenB+"',11A='"+eleven+"',12A='"+twelve+"',13A='"+thirteen+"',max3='"+max3+"',max4='"+max4+"' where intvId='"+intvId+"' and patId='"+patId+"' ");
	if (i>0 && j>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Final.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
}
%>
</body>
</html>