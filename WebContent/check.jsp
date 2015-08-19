<%@ page import ="java.sql.*" %>
<%	
	String user=request.getParameter("un");
	String pass=request.getParameter("pw");
	int user_id=12;
	Class.forName("com.mysql.jdbc.Driver");
	String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String url = "jdbc:mysql://"+host+":"+port+"/nurse";
    Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
    ResultSet rs;
    String err="ERROR";
    Statement st = con.createStatement();
    rs = st.executeQuery("select * from nurse where username='"+user+"' and password='"+pass+"'");
    //rs.last();
	//if(user.equalsIgnoreCase("admin") && pass.equals("test") )
	if(rs.next())
   	{
   	   	out.print(user);
   	}
   	else
   	{
   		out.print(err);
   	}
%>