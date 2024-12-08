<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page of Project 36</title>
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
    <link rel="stylesheet" type="text/css" href="cardstyle.css">
</head>
<body>
<div class="container">
    <%@ include file="mainnavbar.jsp" %>
    <div class="content">
        <div class="card-container">
            <div class="card" aria-label="Student Login">
                <div class="card-image" style="background-image: url('studentlogo1.jpg');"></div>
                <h3>Student</h3>
                <p>Explore student features and manage resources.</p>
                <a href ="studentlogin" class="button-like">Login</a>
                <a href = "studentreg" class="button-like">SignUp</a>
             </div>
            
            <div class="card" aria-label="Mentor Login">
                <div class="card-image" style="background-image: url('mentorlogo1.png');"></div>
                <h3>Mentor</h3>
                <p>Access mentoring tools and student analytics.</p>
                <a href ="mentorlogin" class="button-like">Login</a>
                <a href = "mentorreg" class="button-like">SignUp</a>
            </div>
            <div class="card" aria-label="Admin Login">
                <div class="card-image" style="background-image: url('adminlogo1.png');"></div>
                <h3>Admin</h3>
                <p>Manage users and oversee platform operations.</p>
                <a href ="adminlogin" class="button-like">Login</a>
                
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
