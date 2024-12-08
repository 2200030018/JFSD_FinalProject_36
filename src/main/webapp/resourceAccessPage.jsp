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
<title>Resource Access</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
<style>
    /* Flexbox layout for the resources */
    .resource-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
        margin-top: 20px;
    }

    .resource-card {
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
    .resource-card:hover {
        transform: translateY(-10px);
    }

    /* Card headings */
    .resource-card h3 {
        font-size: 1.5em;
        margin-bottom: 15px;
        color: #333;
    }

    /* Card paragraphs */
    .resource-card p {
        font-size: 1em;
        margin-bottom: 15px;
        color: #555;
    }

    /* Button styles */
    .resource-card button {
        padding: 10px 15px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Button hover effect */
    .resource-card button:hover {
        background-color: #45a049;
    }

    /* For smaller screens, adjust layout */
    @media (max-width: 768px) {
        .resource-card {
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
       <h2>Resource Access</h2>
       
       <div class="resource-container">
           <!-- Resource Categories -->
           <div class="resource-card">
               <h3>Mental Health Articles</h3>
               <p>Explore a wide range of articles on mental health topics such as stress, anxiety, and emotional well-being.</p>
               <button onclick="window.location.href='mentalHealthArticles.jsp'">Explore Mental Health Articles</button>
           </div>
           
           <div class="resource-card">
               <h3>Fitness Guides</h3>
               <p>Browse fitness guides and workout routines tailored to your fitness level and goals.</p>
               <button onclick="window.location.href='fitnessGuides.jsp'">View Fitness Guides</button>
           </div>
           
           <div class="resource-card">
               <h3>Nutrition Advice</h3>
               <p>Learn about nutrition, healthy eating, and diet plans to improve your lifestyle.</p>
               <button onclick="window.location.href='nutritionAdvice.jsp'">Read Nutrition Advice</button>
           </div>
       </div>
       
       <!-- Back to Home Button -->
       <div class="resource-card">
           <button onclick="window.location.href='studenthome.jsp'">Back to Home</button>
       </div>
       
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
