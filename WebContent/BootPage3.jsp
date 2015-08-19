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
<body onload="func();"><%

	//HttpSession session=request.getSession(true);
	String intvId=session.getAttribute("userid").toString();
	Timestamp ts=(Timestamp)session.getAttribute("timestamp");
	Timestamp ts1=(Timestamp)session.getAttribute("timestamp1");
	float tot=0;
	String nine=request.getParameter("9");
	String ten=request.getParameter("10");
	String max1=request.getParameter("max1");
	String max2=request.getParameter("max2");
	String eleven=request.getParameter("11");
	String twelve=request.getParameter("12");
	
	session.setAttribute("one", session.getAttribute("one"));
	session.setAttribute("two", session.getAttribute("two"));
	session.setAttribute("three", session.getAttribute("three"));
	session.setAttribute("four", session.getAttribute("four"));
	session.setAttribute("five", session.getAttribute("five"));
	session.setAttribute("six", session.getAttribute("six"));
	session.setAttribute("seven", session.getAttribute("seven"));
	session.setAttribute("eight", session.getAttribute("eight"));
	session.setAttribute("nine", nine);
	session.setAttribute("ten", ten);
	session.setAttribute("eleven", eleven);
	session.setAttribute("twelve", twelve);
	session.setAttribute("maxThree", max1);
	session.setAttribute("maxFour", max2);
	session.setAttribute("maxTwo", session.getAttribute("maxTwo"));
	session.setAttribute("maxOne", session.getAttribute("maxOne"));
	session.setAttribute("q1", "Thinking about your client's physical health needs,are there any symptoms or problems(risk indicators) you are unsure about that require further investigation?");
	session.setAttribute("q2", "Are the client's physical health problems impacting on their mental well being?");
	session.setAttribute("q3", "Are there any problems with your client's lifestyle behaviors (alcohol,drugs,diet,exercise) that are impacting on physical or mental well-being?");
	session.setAttribute("q4", "Do you have any other concerns about your client's mental well-being?How would you rate their severity and impact on the client?");
	session.setAttribute("q5", "How would you rate the home environment in terms of safety and stability(including domestic violence,insecure housing,neighbor harassment)?");
	session.setAttribute("q6", "How do daily activities impact on the client's well-being?(include current or anticipated unemployment,work, caregiving, access to transportation or other)");
	session.setAttribute("q7", "How would you rate their social network(family,work,friends)?");
	session.setAttribute("q8", "How would you rate their financial resources(including ability to aquire all required medical care)?");
    session.setAttribute("q9", "How well does the client now understand their health and well-being(symptoms,signs or risk-factors) and what they need to do to manage their health?");
    session.setAttribute("q10","How well do you think your client can engage in healthcare discussions?(Barriers include language, deafness, aphasia, alcohol or drug problems, learning difficulties, concentration)");
    session.setAttribute("q11","Do other services need to be involved to help this client");
    session.setAttribute("q12","Are current services involved with this client well-coordinated?(Include coordination with other services you are recommending)");
	
	String total4="0",total3="0";
	total3=request.getParameter("tot_id2");
	total4=request.getParameter("tot_id3");
	String patId=session.getAttribute("patientId").toString();
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	Statement st = con.createStatement();
	ResultSet rs;
    rs = st.executeQuery("select * from BootPatient where intvId='" + intvId + "' and patId='" + patId + "'");
    rs.last();
    ts=rs.getTimestamp("curdate");
	int i = st.executeUpdate("update BootPatient set d3result='"+max1+"',d4result='"+max2+"' where intvId='"+intvId+"' and patId='"+patId+"' and curdate='"+ts+"'");
	int j= st.executeUpdate("update BootHealth set c9='"+nine+"',c10='"+ten+"',c11='"+eleven+"',c12='"+twelve+"',max3='"+max1+"',max4='"+max2+"' where intvId='"+intvId+"' and patId='"+patId+"' ");
	if (i>0 && j>0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Analysis.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
}
%>
</body>
</html>