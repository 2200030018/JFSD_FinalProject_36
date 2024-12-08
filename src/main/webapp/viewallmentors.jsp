<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springbootproject.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

Admin a=(Admin) session.getAttribute("admin");
if(a==null){
	response.sendRedirect("studentsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
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
    <%@include file="adminnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
      <h3 style="text-align: center;"><u>View All Mentors</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>USERNAME</th>
            <th>ABOUT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${mlist}" var="men">
            <tr>
                <td><c:out value="${men.mid}"/></td>
                <td><c:out value="${men.mname}"/></td>
                <td><c:out value="${men.mgender}"/></td>
                <td><c:out value="${men.mdateofbirth}"/></td>
                <td><c:out value="${men.mloacation}"/></td>
                <td><c:out value="${men.memail}"/></td>
                <td><c:out value="${men.mcontact}"/></td>
                <td><c:out value="${men.musername}"/></td>
                <td><c:out value="${men.mabout}"/></td>
                <td><c:out value="${men.mstatus}"/></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>