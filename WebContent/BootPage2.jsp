<%@page import="org.apache.tomcat.util.buf.TimeStamp"%>
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
<%

	//HttpSession session=request.getSession(true);
	String intvId=session.getAttribute("userid").toString();
	Timestamp ts=(Timestamp)session.getAttribute("timestamp");
	Timestamp ts1=(Timestamp)session.getAttribute("timestamp1");
	float tot=0;
	String five=request.getParameter("5");
	String six=request.getParameter("6");
	String seven=request.getParameter("7");
	String eight=request.getParameter("8");
	
	String max2=request.getParameter("max");
	session.setAttribute("timestamp",ts);
	
	session.setAttribute("one", session.getAttribute("one"));
	session.setAttribute("two", session.getAttribute("two"));
	session.setAttribute("three", session.getAttribute("three"));
	session.setAttribute("four", session.getAttribute("four"));
	session.setAttribute("five", five);
	session.setAttribute("six", six);
	session.setAttribute("seven", seven);
	session.setAttribute("eight", eight);
	session.setAttribute("maxTwo", max2);
	session.setAttribute("maxOne", session.getAttribute("maxOne"));
	//session.setAttribute("q1", "Thinking about your client's physical health needs,are there any symptoms or problems(risk indicators) you are unsure about that require further investigation?");
	//session.setAttribute("q2", "Are the client's physical health problems impacting on their mental well being?");
	//session.setAttribute("q3", "Are there any problems with your client's lifestyle behaviors (alcohol,drugs,diet,exercise) that are impacting on physical or mental well-being?");
	//session.setAttribute("q4", "Do you have any other concerns about your client's mental well-being?How would you rate their severity and impact on the client?");
	//session.setAttribute("q5", "How would you rate the home environment in terms of safety and stability(including domestic violence,insecure housing,neighbor harassment)?");
	//session.setAttribute("q6", "How do daily activities impact on the client's well-being?(include current or anticipated unemployment,work, caregiving, access to transportation or other)");
	//session.setAttribute("q7", "How would you rate their social network(family,work,friends)?");
	//session.setAttribute("q8", "How would you rate their financial resources(including ability to aquire all required medical care)?");
	
	String total="0";
	total=request.getParameter("tot_id1");
	String patId=session.getAttribute("patientId").toString();
	session.setAttribute("patientId",patId);
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	int i = st.executeUpdate("update BootPatient set d2result='"+max2+"'where intvId='"+intvId+"' and patId='"+patId+"' and curdate='"+session.getAttribute("timestamp")+"'");
	int j= st.executeUpdate("update BootHealth set c5='"+five+"',c6='"+six+"',c7='"+seven+"',c8='"+eight+"',max2='"+max2+"' where intvId='"+intvId+"' and patId='"+patId+"'");
	if (i > 0 && j>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("QPage3.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	}
	else
		out.println("Can't proceed:"+patId);
%>
</body>
</html>