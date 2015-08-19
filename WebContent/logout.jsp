<%@page import = "java.util.Date" session="true"%>
<%

  session.setAttribute("user", null);
  session.invalidate();
  response.setHeader("Cache-Control", "no-cache");
  response.setHeader("Pragma", "no-cache");
  response.setDateHeader("Expires", 0); 
  response.sendRedirect("Test.jsp");
%>
