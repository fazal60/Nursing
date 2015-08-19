<%@ page import ="java.sql.*" %>
<%
	String user=request.getParameter("uname");
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
	Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	ResultSet rs;
	String err="ERROR";
	Statement st = con.createStatement();
	rs = st.executeQuery("select * from nurse where username='"+user+"'");
	//rs.last();
	//if(user.equalsIgnoreCase("admin") && pass.equals("test") )
	if(rs.next())
	{
	   	out.print(err);
	}
	else
	{
		out.print(user);
	}

%>