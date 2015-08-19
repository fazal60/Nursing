<%@ page import ="java.sql.*" %>
<%
	String user=request.getParameter("login_id");
	String pass=request.getParameter("password");
	int user_id=12;
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
    ResultSet rs;
    int i=0;
    String err="ERROR";
    Statement st = con.createStatement();
    i=st.executeUpdate("update nurse set password='"+pass+"'where username='"+user+"'");
    //rs.last();
	//if(user.equalsIgnoreCase("admin") && pass.equals("test") )
	if(i>0)
   	{
   	   	out.print(user);
   	}
   	else
   	{
   		out.print(err);
   	}
%>