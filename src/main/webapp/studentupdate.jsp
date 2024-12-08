<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Student s = (Student) session.getAttribute("student");
if (s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Update</title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="formstyle.css">
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
  <%@include file="studentnavbar.jsp" %>
    <div class="content">
            <h3><u>Student Update</u></h3>
    <div class="form-container">
        <form method="post" action="studentupdate" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="sid">Id of Student</label></td>
                    <td><input type="text" id="sid" name="sid" value="<%=s.getSid()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=s.getSname()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE"  required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdateofbirth">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdateofbirth" name="sdateofbirth" value="<%=s.getSdateofbirth()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%=s.getSlocation()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" value="<%=s.getSemail()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="spassword">Enter Password</label></td>
                    <td><input type="password" id="spassword" name="spassword" value="<%=s.getSpassword()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="text" id="scontact" name="scontact" value="<%=s.getScontact()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="susername">Enter Username</label></td>
                    <td><input type="text" id="susername" name="susername" value="<%=s.getSusername()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="scollege">Enter College (Optional)</label></td>
                    <td><input type="text" id="scollege" name="scollege" value="<%=s.getScollege()%>"/></td>
                </tr>
                <tr>
                    <td><label for="sabout">About (Optional)</label></td>
                    <td><textarea id="sabout" name="sabout" rows="4" cols="40" value="<%=s.getSabout()%>"></textarea></td>
                </tr>
                <tr>
                    <td><label for="simage">Upload Image (Optional)</label></td>
                    <td><input type="file" id="simage" name="simage"/></td>
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
