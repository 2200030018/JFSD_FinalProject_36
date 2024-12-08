<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
    .footer {
     background-image: linear-gradient(to right, #30cfd0 0%, #330867 100%); 
    padding: 20px 0;
    color: #e1e1e1;
    text-align: center;
    box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.3);
    bottom: 0;
}

.footer-content {
    max-width: 1000px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.footer p {
    margin: 0;
}

.footer-links a {
    color: #f5f5f5;
    text-decoration: none;
    margin: 0 10px;
    transition: color 0.3s;
}

.footer-links a:hover {
    color: #ffdd57;
} 
    </style>
</head>
<body>
    <div class="footer">
        <div class="footer-content">
            <p>&copy; 2024 Student Fitness & Wellness Platform. All rights reserved.</p>
            <div class="footer-links">
                <a href="/">Home</a>
                <a href="/contact">Contact Us</a>
                <a href="/about">About</a>
                <a href="/privacy">Privacy Policy</a>
            </div>
        </div>
    </div>
</body>
</html>
