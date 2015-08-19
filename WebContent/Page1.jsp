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
<body>

<%

	//HttpSession session=request.getSession(true);
	out.println("Yes you are here");
	String intvId=session.getAttribute("userid").toString();
	String patId=request.getParameter("patientid");
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
	String oneA=request.getParameter("1A");
	String twoA=request.getParameter("2A");
	String threeA=request.getParameter("3A");
	String fourA=request.getParameter("4A");
	String oneB=request.getParameter("1B");
	String twoB=request.getParameter("2B");
	String threeB=request.getParameter("3B");
	String fourB=request.getParameter("4B");
	String max1=request.getParameter("max1");
	String total="0";
	float tot=0;
	int val=0;
	total=request.getParameter("tot_id");
	Timestamp curTime=new Timestamp(System.currentTimeMillis());
	Timestamp ts=null,ts1=null;
	//total=session.getAttribute("tot").toString();
	//out.println(total);
	session.setAttribute("patId", patId);
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	int i = st.executeUpdate("insert into patient(intvId, patId, d1result ,d2result, d3result, d4result) values ('" + intvId + "','" + patId + "','"+total+"','"+0+"','"+0+"','"+0+"')");
	int j= st.executeUpdate("insert into health(patId,1A,1B,2A,2B,3A,3B,4A,4B,max1,5A,5B,6A,7A,7B,8A,8B,max2,9A,9B,10A,10B,max3,11A,12A,13A,max4,intvId) values('" + patId + "','" + oneA + "','" + oneB + "','" + twoA + "','" + twoB + "','" + threeA + "','" + threeB + "','" + fourA + "','" + fourB + "','" +max1+"','"+ 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + intvId + "')");
	ResultSet rs,rs1;
    rs = st.executeQuery("select * from patient where intvId='" + intvId + "' and patId='" + patId + "'");
    rs.last();
    //rs1 = st.executeQuery("select * from health");

    //rs1.last();
    //ts1=rs1.getTimestamp("curdate");
    ts=rs.getTimestamp("curdate");
    session.setAttribute("timestamp",ts);
    //session.setAttribute("timestamp1",ts1);
	if (i > 0 && j>0) {
	        //session.setAttribute("userid", user);
	        response.sendRedirect("anotherTest2.jsp");
	       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	}

%>
</body>
</html>