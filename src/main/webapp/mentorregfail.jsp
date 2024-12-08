<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Mentor Registration Fail</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
 <%@ include file="mainnavbar.jsp" %>
    <div class="content">
    <h1>Registration Failed due to wrong Information</h1><br>
        <c:out value="${msg}"></c:out>
		<br><br>
		<a href="mentorreg">Register Here</a>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>