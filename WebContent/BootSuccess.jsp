<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="shortcut icon" href="health.png" type="image/png">
	<title>Welcome to PCAM!</title>
	<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script>
	
	</script>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" type="text/css" href="toggle.css" />
	<script type="text/javascript">
	$(function() {
	    $('.toggler').click(function() {
	        $(this).find('div').slideToggle();
	    });
	});
	</script>
	<script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
	<style>
	.h6 {
	    position: fixed;
	    left:200px;
	    margin-left: auto;
	    margin-right: auto;
	    bottom: 0px;
	    }
	 p.trigger{
	    margin-bottom:7px;
	    margin-top:-5px;
	}
	
	.toggle_container{
	    margin-bottom:10px;
	}
	
	.toggle_container p{
	    margin:0px;
	}
	
	.toggle_container{
	    background:#f0f0f0;
	    clear: both;
	    font-size:100%;
	}
	.img { 
	        width: 150px; 
	        height: 40px; 
	        display: inline-block; 
	        background: Blue; 
	    }
	.mainImg { 
	        width: 400px; 
	        height: 100px; 
	        display: inline-block; 
	        background: Blue; 
	    }
	
	</style>
  
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
	{
    	response.sendRedirect("Test.jsp");
	} 
    else {
		int flag=0;
		Class.forName("com.mysql.jdbc.Driver");
		String host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
		String port = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	
		String url = "jdbc:mysql://"+host+":"+port+"/nurse";
		Connection con = DriverManager.getConnection(url,"adminwtBhfGV", "L9ghYVFwV6i3");
		Statement st = con.createStatement();
		ResultSet rs1=st.executeQuery("select * from nurse where username='"+session.getAttribute("userid")+"'");
		if(rs1.next())
		{
			if(rs1.getString("email").contains("buffalo.edu"))
				flag=1;
		}
	}
%>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="navMenu"> 
  <div class="container">
  	<div class="container-fluid">
  	  <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#"><b>PCAM</b></a>
      </div>
	  <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li><a href="BootSuccess.jsp"><span class="glyphicon glyphicon-arrow-left"></span>Back</a></li>
	        <li><a href="#">Contact</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-play-circle"></span> Welcome <%=session.getAttribute("userid")%></a></li>
	        <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	      </ul>
	    </div>
	    </div>
   </div>
</nav>


<br>
<br>
<div class="container">
  <div class="jumbotron">
   <center>
    <h3>Welcome to PCAM!</h3>
    <p>Please press on any of the below 3 buttons to proceed.</p>
   </center> 
  </div>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <a href="Qpage1.jsp" class="btn btn-lg btn-primary btn-block" role="button">Questionnaire</a>
      <br>
      <p align="left">
      Pressing this button takes you to the Questionnaire section.
      This section consists of 3 pages containing questions spread 
      over 4 domains.You will have 4 options for each question.
      After you have answered all questions in a domain, a panel on
      the right half of the page depicts overall condition of the 
      patient in that domain.
      </p>
    </div>
    <div class="col-sm-4">
      <a href="PrevRecord.jsp" class="btn btn-lg btn-primary btn-block" role="button">Previous Records</a>
      <br>
      <p align="left">
      Pressing this button takes you to the Previous records section.
      You can enter the interviewer id in order to see previous analysis 
      data for that interviewer. All the patients analyzed in the past
      by the interviewer will show up.
      </p>
    </div>
    <div class="col-sm-4">
      <a href="Detail.jsp" class="btn btn-lg btn-primary btn-block" role="button">Detailed Analysis</a>
      <br>
      <p align="left">
      Pressing this button takes you to the Detailed Analysis section.
      Here you can perform search in two ways. You can either enter the 
      Interviewer ID or the Patient ID. On entering either, you will be
      shown a Grid table containing further information.
      </p>
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>

<footer>
    <div class="navbar navbar-inverse navbar-fixed-bottom">
        <div class="container">
            <div class="navbar-collapse collapse" id="footer-body">
                <ul class="nav navbar-nav">
                	<li><a href="#">Copyright: UB School of Nursing</a></li>
                	<li><a href="#">Developed by Mohammad Shahid Fazal</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    
                </ul>
            </div>
          	<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#footer-body">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <ul class="footer-bar-btns visible-xs">
                    <li><a href="#" class="btn" title="History"><i class="fa fa-2x fa-clock-o blue-text"></i></a></li>
                    <li><a href="#" class="btn" title="Favourites"><i class="fa fa-2x fa-star yellow-text"></i></a></li>
                    <li><a href="#" class="btn" title="Subscriptions"><i class="fa fa-2x fa-rss-square orange-text"></i></a></li>
                </ul>
            </div>

        </div>
    </div>
</footer>


</body>
</html>
