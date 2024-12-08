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
<title>Mentor Profile</title>
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
    <%@include file="mentornavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="content">
            <div class="profile-container">
        <div class="profile-header">
            <img src="<%= request.getContextPath() %>/getMentorImage?mentorId=<%= m.getMid() %>" alt="Profile Image">
            <h2><%= m.getMname() %></h2>
        </div>
        
        <div class="profile-details">
            <p><span>Username:</span> <%= m.getMusername() %></p>
            <p><span>Gender:</span> <%= m.getMgender() %></p>
            <p><span>Date of Birth:</span> <%= m.getMdateofbirth() %></p>
            <p><span>Location:</span> <%= m.getMloacation() %></p>
            <p><span>Email:</span> <%= m.getMemail() %></p>
            <p><span>Contact:</span> <%= m.getMcontact() %></p>
            <p><span>About:</span> <%= m.getMabout() != null ? m.getMabout() : "Not Provided" %></p>
        </div>
        <a href="mentorupdate" class="button-like">Update</a>
    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>
