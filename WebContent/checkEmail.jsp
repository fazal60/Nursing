<%@ page import ="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String flag=request.getParameter("flag");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
	Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
	ResultSet rs;
	Statement st = con.createStatement();
	String email=request.getParameter("em").toString();
	rs = st.executeQuery("select * from nurse where email='"+email+"'");
	if((flag.equalsIgnoreCase("2")) && rs.next())
	{
		out.print(rs.getString("username"));
	}
	else if(flag.equalsIgnoreCase("1") && rs.next())
	{
		out.print("PRESENT");
	}
	else if(!email.trim().contains("umn.edu") && !email.trim().contains("buffalo.edu"))
	{
		out.print("ERROR");
	}
	else if(!rs.next() && flag.equalsIgnoreCase("1"))
	{
		out.print("SUCCESS");
	}
	//if(email.)
	//if(email.trim().contains("umn.edu")||email.trim().contains("buffalo.edu"))
	
		//out.print("SUCCESS");
	else
		out.print("ERROR");
%>
