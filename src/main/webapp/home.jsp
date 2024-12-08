<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
<link rel="stylesheet" type="text/css" href="slidbox.css">
<style>
    /* Flexbox layout for the features */
    .features {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        gap: 20px;
        margin-top: 20px;
    }

    .card {
        position: relative; /* For positioning the sliding background */
        background: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 20px;
        width: 30%;
        text-align: center;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        overflow: hidden; /* Hide overflow for background animation */
    }

    /* Card hover effect */
    .card:hover {
        transform: translateY(-10px);
    }

    /* Sliding background */
    .card::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-size: cover;
        background-position: center;
        z-index: -1; /* Place behind the card content */
        animation: slideImages 10s infinite; /* Animation for sliding images */
    }

    /* Card headings */
    .card h3 {
        font-size: 1.25em;
        margin-bottom: 15px;
        color: #333;
    }

    /* Card paragraphs */
    .card p {
        font-size: 1em;
        margin-bottom: 15px;
        color: #555;
    }

    /* Button styles */
    .card button {
        padding: 10px 15px;
        background-color: #4caf50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Button hover effect */
    .card button:hover {
        background-color: #45a049;
    }

    /* For smaller screens, stack the cards */
    @media (max-width: 768px) {
        .card {
            width: 100%;
        }
    }

    /* Keyframes for sliding images */
    @keyframes slideImages {
        10% {
            background-image: url('adminlogo1.png');
        }
        60% {
            background-image: url('studentlogo1.jpg');
        }
        100% {
            background-image: url('adminlogo1.png');
        }
    }
</style>

</head>
<body>
<div class="container">
    <!-- Include the Sidebar (studentnavbar.jsp) -->
    <%@include file="mainnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
       
       <!-- Features Section -->
       <div class="features">
       	
           <!-- Resource Access -->
           <div class="card">
               <h3>Food Resource</h3>
               <p>Browse articles, videos, and guides on healthy food, fitness, and nutrition. Save resources for future use.</p>
               <button onclick="window.location.href='resourceAccessPage.jsp'">Explore Resources</button>
           </div>
           
           <!-- Wellness Program Participation -->
           <div class="card">
               <h3>Wellness Programs</h3>
               <p>Register for fitness challenges, group therapy, and view program schedules and reminders.</p>
               <button onclick="window.location.href='wellnessProgramsPage.jsp'">View Programs</button>
           </div>
           
           <!-- Personalized Recommendations -->
           <div class="card">
               <h3>Personalized Recommendations</h3>
               <p>Receive tailored plans and suggestions for your physical and mental health journey.</p>
               <button onclick="window.location.href='personalizedRecommendationsPage.jsp'">Get Recommendations</button>
           </div>
           
           <!-- Self-Assessment Tools -->
           <div class="card">
               <h3>Self-Assessment Tools</h3>
               <p>Take quizzes to assess your stress, fitness, or dietary habits. Get automated feedback.</p>
               <button onclick="window.location.href='selfAssessmentPage.jsp'">Start Assessment</button>
           </div>
           
           <!-- Connect with Counselors -->
           <div class="card">
               <h3>Connect with Counselors</h3>
               <p>Book appointments and chat with mental health professionals or wellness coaches.</p>
               <button onclick="window.location.href='contactCounselorsPage.jsp'">Contact Counselors</button>
           </div>
           
       </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
