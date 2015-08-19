<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function func() {
	document.getElementById("q1").value=<%=request.getParameter("q1")%>;
	document.getElementById("q2").value=<%=request.getParameter("q2")%>;
	document.getElementById("q3").value=<%=request.getParameter("q3")%>;
	document.getElementById("q4").value=<%=request.getParameter("q4")%>;
}

</script>
</head>
<body onload="func();">
<input type="hidden" name="q1" id="q1" value="" runat="server" />
<input type="hidden" name="q2" id="q2" value="" runat="server" />
<input type="hidden" name="q3" id="q3" value="" runat="server" />
<input type="hidden" name="q4" id="q4" value="" runat="server" />
<%

	//HttpSession session=request.getSession(true);
	out.println("Yes you are here");
	String intvId=session.getAttribute("userid").toString();
	String patId=request.getParameter("patId");
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
	String one=request.getParameter("1");
	String two=request.getParameter("2");
	String three=request.getParameter("3");
	String four=request.getParameter("4");
	String max1=request.getParameter("max");
	
	session.setAttribute("one", one);
	session.setAttribute("two", two);
	session.setAttribute("three", three);
	session.setAttribute("four", four);
	session.setAttribute("m1", max1);
	//session.setAttribute("qu1", request.getParameter("q1"));
	session.setAttribute("qu1", request.getParameter("q1"));
	session.setAttribute("qu2", request.getParameter("q2"));
	session.setAttribute("qu3", request.getParameter("q3"));
	session.setAttribute("qu4", request.getParameter("q4"));
	
	String total="0";
	float tot=0;
	int val=0;
	total=request.getParameter("max");
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
	int i = st.executeUpdate("insert into BootPatient(intvId, patId, d1result ,d2result, d3result, d4result) values ('" + intvId + "','" + patId + "','"+total+"','"+0+"','"+0+"','"+0+"')");
	int j = st.executeUpdate("insert into BootHealth(PatId,intvId,c1,c2,c3,c4,max1,c5,c6,c7,c8,max2,c9,c10,max3,c11,c12,max4) values ('"+patId+"','"+intvId+"','"+request.getParameter("1")+"','"+request.getParameter("2")+"','"+request.getParameter("3")+"','"+request.getParameter("4")+"','"+max1+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"')");
	//int j= st.executeUpdate("insert into BootHealth(patId,intvId,1,2,3,4,max1,5,6,7,8,max2,9,10,max3,11,12,max4) values('" + patId + "','" + intvId + "','" + request.getParameter("1") + "','" + request.getParameter("2") + "','" + request.getParameter("3") + "','" + request.getParameter("4") + "','" + max1 + "','" + 0 + "','" +  0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "','" + 0 + "')");
	ResultSet rs,rs1;
    rs = st.executeQuery("select * from BootPatient where intvId='" + intvId + "' and patId='" + patId + "'");
    rs.last();
    //rs1 = st.executeQuery("select * from health");

    //rs1.last();
    //ts1=rs1.getTimestamp("curdate");
    ts=rs.getTimestamp("curdate");
    session.setAttribute("timestamp",ts);
    //session.setAttribute("timestamp1",ts1);
	if (i > 0 && j>0) {
	        //session.setAttribute("userid", user);
	        response.sendRedirect("QPage2.jsp");
	       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	}

%>
</body>
</html>