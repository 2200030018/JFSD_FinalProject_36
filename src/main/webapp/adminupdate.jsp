<%@page import="com.klef.jfsd.springbootproject.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Admin mt = (Admin) session.getAttribute("admin");
if (mt == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Registration</title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="formstyle.css">
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
  <%@include file="adminnavbar.jsp" %>
    <div class="content">
            <h3><u>Admin Update</u></h3>
    <div class="form-container">
        <form method="post" action="adminupdate" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="mid">Id of Student</label></td>
                    <td><input type="text" id="aid" name="aid" value="<%=mt.getAid()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="mname">Enter Name</label></td>
                    <td><input type="text" id="aname" name="aname" value="<%=mt.getAname()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="agender" value="MALE"  required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="agender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="agender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="aemail">Enter Email ID</label></td>
                    <td><input type="amail" id="aemail" name="aemail" value="<%=mt.getAemail()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="apassword">Enter Password</label></td>
                    <td><input type="password" id="apassword" name="apassword" value="<%=mt.getApassword()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="acontact">Enter Contact</label></td>
                    <td><input type="text" id="acontact" name="acontact" value="<%=mt.getAcontact()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="ausername">Enter Username</label></td>
                    <td><input type="text" id="ausername" name="ausername" value="<%=mt.getAusername()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="aabout">About</label></td>
                    <td><textarea id="aabout" name="mabout" rows="4" cols="40" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="aimage">Upload Image (Optional)</label></td>
                    <td><input type="file" id="aimage" name="aimage" accept="image/*"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
