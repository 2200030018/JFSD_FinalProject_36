<%@page import="com.klef.jfsd.springbootproject.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

Admin a=(Admin) session.getAttribute("admin");
if(a==null){
	response.sendRedirect("studentsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@include file="adminnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
       Welcome <%=a.getAname() %>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>