<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Stress Assessment Result</title>
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
            margin: 20px;
        }
        .result-container {
            display: inline-block;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #4caf50;
        }
        p {
            color: #555;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Your Stress Assessment Result</h2>
        <p><strong>Total Score:</strong> ${result.totalScore}</p>
        <p><strong>Stress Level:</strong> ${result.stressLevel}</p>
        <p><strong>Advice:</strong> ${result.advice}</p>
    </div>
</body>
</html>
