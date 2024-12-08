<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Self-Assessment Tools</title>
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
    <style>
        /* Flexbox layout for the assessments */
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
    </style>
</head>
<body>
    <div class="container">
        <!-- Include the Sidebar (studentnavbar.jsp) -->
        <%@ include file="studentnavbar.jsp" %>

        <!-- Main Content Area -->
        <div class="content">
            <h2>Self-Assessment Tools</h2>
            <p>Use our tools to evaluate your stress levels, fitness habits, and dietary patterns. Get automated feedback and actionable suggestions!</p>
            
            <!-- Assessments Section -->
            <div class="features">
                
                <!-- Stress Assessment -->
                <div class="card">
                    <h3>Stress Assessment</h3>
                    <p>Take a quiz to understand your stress levels and get suggestions for stress management.</p>
                    <button onclick="window.location.href='stressAssessment.jsp'">Start Stress Assessment</button>
                </div>
                
                <!-- Fitness Assessment -->
                <div class="card">
                    <h3>Fitness Assessment</h3>
                    <p>Evaluate your physical fitness and discover exercises tailored to your goals.</p>
                    <button onclick="window.location.href='stressAssessment.jsp'">Start Fitness Assessment</button>
                </div>
                
                <!-- Dietary Habits Assessment -->
                <div class="card">
                    <h3>Dietary Habits Assessment</h3>
                    <p>Analyze your eating habits and receive guidance for a healthier lifestyle.</p>
                    <button onclick="window.location.href='stressAssessment.jsp'">Start Dietary Assessment</button>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
