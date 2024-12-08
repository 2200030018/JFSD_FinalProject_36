<%@page import="com.klef.jfsd.springbootproject.model.Mentor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

Mentor m=(Mentor) session.getAttribute("mentor");
if(m==null){
	response.sendRedirect("studentsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mentor Home</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@include file="mentornavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
       Welcome <%=m.getMname() %>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>