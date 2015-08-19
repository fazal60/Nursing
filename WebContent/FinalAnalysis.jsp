<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body">
<%

	//HttpSession session=request.getSession(true);
	out.println("Yes you are here");
	String intvId=session.getAttribute("userid").toString();
	String patId=session.getAttribute("patientId").toString();
	//patId=session.getAttribute("patientId").toString();
	if(patId==null || patId=="")
	{
		%>
		<script>
		alert('No Patient id found,kindly re-enter details');
		</script>
		<%
		//response.sendRedirect("anotherTest1.jsp");
	}
	//String patId=session.getAttribute("patId").toString();
	String one=request.getParameter("comment1");
	String two=request.getParameter("comment2");
	String three=request.getParameter("comment3");
	String four=request.getParameter("comment4");
	Timestamp curTime=new Timestamp(System.currentTimeMillis());
	Timestamp ts=null,ts1=null;
	//total=session.getAttribute("tot").toString();
	//out.println(total);
	session.setAttribute("patientId", patId);
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	int i = st.executeUpdate("insert into FinalAnalysis(intvId, patId, ActionRequired ,Involved, ActionBarriers, ActionTaken) values ('" + intvId + "','" + patId + "','"+one+"','"+two+"','"+three+"','"+four+"')");
	//int j= st.executeUpdate("insert into BootHealth(patId,intvId,1,2,3,4,max1,5,6,7,8,max2,9,10,max3,11,12,max4) values('" + patId + "','" + intvId + "','" + request.getParameter("1") + "','" + request.getParameter("2") + "','" + request.getParameter("3") + "','" + request.getParameter("4") + "','" + max1 + "','" + 0 + "','" +  0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "')");
	ResultSet rs,rs1;
    rs = st.executeQuery("select * from FinalAnalysis where intvId='" + intvId + "' and patId='" + patId + "'");
    rs.last();
    //rs1 = st.executeQuery("select * from health");

    //rs1.last();
    //ts1=rs1.getTimestamp("curdate");
    ts=rs.getTimestamp("curdate");
    session.setAttribute("timestamp",ts);
    //session.setAttribute("timestamp1",ts1);
	if (i > 0) {
	        //session.setAttribute("userid", user);
	        response.sendRedirect("Qpage1.jsp");
	       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	}

%>
</body>
</html>