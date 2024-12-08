<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Student s = (Student) session.getAttribute("student");
if (s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wellness Programs</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
<style>
    /* Flexbox layout for the programs */
    .program-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
        margin-top: 20px;
    }

    .program-card {
        background: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 20px;
        width: 60%; /* Adjusting width */
        text-align: center;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    /* Card hover effect */
    .program-card:hover {
        transform: translateY(-10px);
    }

    /* Card headings */
    .program-card h3 {
        font-size: 1.5em;
        margin-bottom: 15px;
        color: #333;
    }

    /* Card paragraphs */
    .program-card p {
        font-size: 1em;
        margin-bottom: 15px;
        color: #555;
    }

    /* Button styles */
    .program-card button {
        padding: 10px 15px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Button hover effect */
    .program-card button:hover {
        background-color: #45a049;
    }

    /* For smaller screens, adjust layout */
    @media (max-width: 768px) {
        .program-card {
            width: 100%;
        }
    }
</style>
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (studentnavbar.jsp) -->
    <%@include file="studentnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
       <h2>Wellness Programs</h2>
       
       <div class="program-container">
           <!-- Program 1 -->
           <div class="program-card">
               <h3>Fitness Challenges</h3>
               <p>Join our fitness challenges to stay motivated and improve your health. Participate in monthly challenges and track your progress.</p>
               <button onclick="window.location.href='handworkouts.jsp'">Go To Programs</button>
           </div>
           
           <!-- Program 2 -->
           <div class="program-card">
               <h3>Group Therapy</h3>
               <p>Participate in group therapy sessions to improve your mental health and connect with others facing similar challenges.</p>
               <button onclick="window.location.href='groupTherapySessions.jsp'">View Group Sessions</button>
           </div>
           
           <!-- Program 3 -->
           <div class="program-card">
               <h3>Nutrition Workshops</h3>
               <p>Learn about nutrition, healthy eating habits, and how to make better food choices through our interactive workshops.</p>
               <button onclick="window.location.href='nutritionWorkshopDetails.jsp'">View Workshop Details</button>
           </div>
       </div>
       
       <!-- Back to Home Button -->
       <div class="program-card">
           <button onclick="window.location.href='studenthome.jsp'">Back to Home</button>
       </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
