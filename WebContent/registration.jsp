<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="shortcut icon" href="health.png" type="image/png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <script type="text/javascript" src="jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
    <h2 align="center"><font size=6 color="white"><u>Patient Centered Assessment Method[PCAM] Online:<br>Bringing the social determinant of health into primary care</u></br> </font></h2>
        <form name="login_frm" id="login_frm" method="post" action="reg.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><font size=6 color="white">Enter Information Here</font></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><font size=4 color="white">First Name:</font></td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size=4 color="white">Last Name:</font></td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size=4 color="white">Email:</font></td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size=4 color="white">User Name:</font></td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><font size=4 color="white">Password:</font></td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td align="center"><input type="submit" value="Submit" align="center" /></td>
                        <td align="center"><input type="reset" value="Reset" align="center" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><font size=3 color="white">Already registered!! </font><a href="mainJsp.jsp"><font size=3 color="yellow">Login Here</font></a></td>
                    </tr>
                </tbody>
            </table>
            <p><font size=2 color="yellow">*Note:Only those having buffalo.edu or umn.edu Email-ids can register</font></p>
            </center>
        </form>
    <center>

            <p style="bottom: 0; width:100%; text-align:center"> <font size=2 color="white">@Copyright UB School of Nursing. Developed by Mohammad Shahid Fazal Sheikh.</font>
            </p>

	</center>
    </body>
</html>