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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hand Workouts</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Open+Sans:wght@400;600&family=Poppins:wght@400;600&family=Roboto:wght@400;500&display=swap');

        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #e0f7fa, #ffffff);
            color: #333;
        }
        header {
            text-align: center;
            padding: 20px;
            background: rgba(0, 0, 0, 0.7);
            font-size: 28px;
            font-weight: bold;
            text-transform: uppercase;
            color: #fff;
        }
        .step-container {
            display: flex;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.9);
            margin: 20px auto;
            width: 90%;
            max-width: 1000px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
        }
        .step-container:nth-child(even) {
            flex-direction: row-reverse;
        }
        .step-image {
            flex: 1;
            max-width: 45%;
            text-align: center;
        }
        .step-image img {
            border-radius: 10px;
            max-width: 100%;
            height: auto;
        }
        .step-description {
            flex: 1;
            max-width: 55%;
            padding: 20px;
        }
        .step-description h2 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #007BFF;
        }
        .step-description:nth-child(1) h2 {
            font-family: 'Poppins', sans-serif;
        }
        .step-description:nth-child(2) h2 {
            font-family: 'Roboto', sans-serif;
        }
        .step-description:nth-child(3) h2 {
            font-family: 'Lora', serif;
        }
        .step-description:nth-child(4) h2 {
            font-family: 'Open Sans', sans-serif;
        }
        .step-description p {
            font-size: 18px;
            line-height: 1.6;
        }
        footer {
            text-align: center;
            padding: 15px;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (studentnavbar.jsp) -->
    <%@include file="studentnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
    <header>
        Hand Workouts
    </header>

    <div class="step-container">
        <div class="step-image">
            <img src="https://images-prod.healthline.com/hlcmsresource/images/topic_centers/Fitness-Exercise/400x400_5_Good_Yoga_Stretches_For_Your_Arms_Reverse_Prayer.gif">
        </div>
        <div class="step-description">
            <h2>Step 1: Reverse Prayer</h2>
            <p>Reverse Prayer internally rotates your upper arms. This isn’t a common movement for your upper arms, so it can help you go through your full range of motion. It’s also a great stretch for your forearms.</p>
        </div>
    </div>

    <div class="step-container">
        <div class="step-image">
            <img src="https://images-prod.healthline.com/hlcmsresource/images/topic_centers/Fitness-Exercise/648x364_5_Good_Yoga_Stretches_For_Your_Arms_Eagle_Arms.gif" alt="Hand Grip">
        </div>
        <div class="step-description">
            <h2>Step 2: Eagle Arms</h2>
            <p>The Eagle Arms can help stretch your shoulders and upper back while stabilizing the shoulder joint. It can also help combat slumping over a laptop or keyboard.</p>
        </div>
    </div>

    <div class="step-container">
        <div class="step-image">
            <img src="https://media.post.rvohealth.io/wp-content/uploads/2024/09/400x400_Top_Stretches_For_Shoulder_Tightness_Cow_Face_Pose-1.gif" alt="Thumb Rolls">
        </div>
        <div class="step-description">
            <h2>Step 3: Cow Face Pose arms</h2>
            <p>Cow Face Pose stretches your shoulders, armpits, triceps, and chest.</p>
        </div>
    </div>

    <div class="step-container">
        <div class="step-image">
            <img src="https://images-prod.healthline.com/hlcmsresource/images/topic_centers/Fitness-Exercise/400x400_5_Good_Yoga_Stretches_For_Your_Arms_Fingers_Up_and_Down_Stretch.gif" alt="Wrist Curl">
        </div>
        <div class="step-description">
            <h2>Step 4: Fingers up and down stretch</h2>
            <p>This stretch targets your forearms, hands, and wrists to help loosen up everything and maintain range of motion. It’s beneficial if you sit and type all day</p>
        </div>
    </div>
    
    </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
