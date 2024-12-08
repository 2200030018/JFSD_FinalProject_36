<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stress Assessment</title>
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
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
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            width: 30%; /* This will ensure the cards take 1/3 of the space */
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        /* Card hover effect */
        .card:hover {
            transform: translateY(-10px);
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

        /* Centered form styles for stress assessment */
        .assessment-container {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 60%;
            margin: 20px auto;
        }

        .assessment-container h2 {
            color: #4caf50;
            margin-bottom: 20px;
        }

        .assessment-container p {
            color: #555;
            margin-bottom: 25px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #333;
        }

        .form-group input {
            margin-right: 10px;
        }

        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <% 
        Student s = (Student) session.getAttribute("student");
        if (s == null) {
            response.sendRedirect("studentsessionfail");
            return;
        }
    %>
    <div class="container">
        <!-- Include the Sidebar (studentnavbar.jsp) -->
        <%@include file="studentnavbar.jsp" %>
        
        <!-- Main Content Area -->
        <div class="content">
            <h2>Welcome, <%= s.getSname() %>!</h2>
            
            <!-- Stress Assessment Section -->
            <div class="assessment-container">
                <h2>Stress Assessment</h2>
                <p>Answer the questions below to assess your current stress level and receive helpful tips to manage it.</p>
                
                <form action="processStressAssessment" method="post">
                    <!-- Question 1 -->
                    <div class="form-group">
                        <label>1. How often do you feel overwhelmed by your responsibilities?</label><br>
                        <input type="radio" name="q1" value="1" required> Rarely
                        <input type="radio" name="q1" value="2"> Sometimes
                        <input type="radio" name="q1" value="3"> Often
                        <input type="radio" name="q1" value="4"> Almost Always
                    </div>

                    <!-- Question 2 -->
                    <div class="form-group">
                        <label>2. How often do you find it difficult to relax after work or studies?</label><br>
                        <input type="radio" name="q2" value="1" required> Rarely
                        <input type="radio" name="q2" value="2"> Sometimes
                        <input type="radio" name="q2" value="3"> Often
                        <input type="radio" name="q2" value="4"> Almost Always
                    </div>

                    <!-- Question 3 -->
                    <div class="form-group">
                        <label>3. How often do you feel physically tense (e.g., headaches, muscle pain) due to stress?</label><br>
                        <input type="radio" name="q3" value="1" required> Rarely
                        <input type="radio" name="q3" value="2"> Sometimes
                        <input type="radio" name="q3" value="3"> Often
                        <input type="radio" name="q3" value="4"> Almost Always
                    </div>

                    <!-- Submit Button -->
                    <button type="submit">Submit Assessment</button>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
