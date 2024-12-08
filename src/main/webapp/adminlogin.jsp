<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="formstyle.css">
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">

</head>
<body>

<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@ include file="mainnavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="content">
    <c:out value="${msg}"></c:out>
        <div class="form-wrapper">
        <div class="form-container">
            <h3><u>Admin Login</u></h3>
            <form method="post" action="checkAdminLogin">
                <table>
                    <tr>
                        <td><label for="mainfield">Enter Admin Username/Email</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="mainfield" name="mainfield" required/></td>
                    </tr>
                    <tr>
                        <td><label for="mpassword">Enter Password</label></td>
                    </tr>
                    <tr>
                        <td><input type="password" id="apassword" name="apassword" required/></td>
                    </tr>
                    <tr>
                        <td class="button-container">
                            <input type="submit" value="Login"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
