<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Student s = (Student) session.getAttribute("student");
if (s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Student Update Fail</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
 <%@ include file="studentnavbar.jsp" %>
    <div class="content">
        <c:out value="${msg}"></c:out>
		<br><br>
		<a href="studentupdate">Update Here</a>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>