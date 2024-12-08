<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Student Login</title>
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
        <div class="form-wrapper">
        <div class="form-container">
            <h3><u>Student Login</u></h3>
            <form method="post" action="checkStudentLogin">
                <table>
                    <tr>
                        <td><label for="mainfield">Enter Student Username/Email</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="mainfield" name="mainfield" required/></td>
                    </tr>
                    <tr>
                        <td><label for="spassword">Enter Password</label></td>
                    </tr>
                    <tr>
                        <td><input type="password" id="spassword" name="spassword" required/></td>
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