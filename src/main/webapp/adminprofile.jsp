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
<title>Admin Profile</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
<style>

    .profile-container {
        max-width: 600px;
        margin: 40px auto;
        padding: 20px;
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .profile-header {
        text-align: center;
    }
    .profile-header img {
        width: 120px;
        height: 120px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 10px;
    }
    .profile-header h2 {
        margin: 10px 0;
        font-size: 1.5em;
        color: #333;
    }
    .profile-details {
        padding: 10px 20px;
    }
    .profile-details p {
        margin: 10px 0;
        line-height: 1.6;
        color: #555;
    }
    .profile-details span {
        font-weight: bold;
        color: #333;
    }
</style>
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@include file="adminnavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="content">
            <div class="profile-container">
        <div class="profile-header">
            <img src="<%= request.getContextPath() %>/getMentorImage?mentorId=<%= a.getAid() %>" alt="Profile Image">
            <h2><%= a.getAname() %></h2>
        </div>
        
        <div class="profile-details">
            <p><span>Username:</span> <%= a.getAusername() %></p>
            <p><span>Email:</span> <%= a.getAemail() %></p>
            <p><span>Contact:</span> <%= a.getAcontact() %></p>
            <p><span>Password:</span> <%=a.getApassword() %></p>
        </div>
        <a href="adminupdate" class="button-like">Update</a>
    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>
