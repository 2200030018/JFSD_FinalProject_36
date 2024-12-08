<%@page import="com.klef.jfsd.springbootproject.model.Mentor"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

Mentor a=(Mentor) session.getAttribute("mentor");
if(a==null){
	response.sendRedirect("studentsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students data</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
    
<body>
<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@include file="mentornavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
      <h3 style="text-align: center;"><u>View All Students</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>COLLEGE</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>USERNAME</th>
            <th>ABOUT</th>
            
        </tr>
        <c:forEach items="${mlist}" var="men">
            <tr>
                <td><c:out value="${men.sid}"/></td>
                <td><c:out value="${men.sname}"/></td>
                <td><c:out value="${men.sgender}"/></td>
                <td><c:out value="${men.sdateofbirth}"/></td>
                <td><c:out value="${men.scollege}"/></td>
                <td><c:out value="${men.slocation}"/></td>
                <td><c:out value="${men.semail}"/></td>
                <td><c:out value="${men.scontact}"/></td>
                <td><c:out value="${men.susername}"/></td>
                <td><c:out value="${men.sabout}"/></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>