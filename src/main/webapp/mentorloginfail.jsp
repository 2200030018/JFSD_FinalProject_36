<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Mentor Login Fail</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
 <%@ include file="mainnavbar.jsp" %>
    <div class="content">
        <c:out value="${msg}"></c:out>
		<br><br>
		<a href="mentorlogin">Login Here</a>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>