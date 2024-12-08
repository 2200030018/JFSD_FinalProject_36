<%@page import="com.klef.jfsd.springbootproject.model.Mentor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
Mentor mt = (Mentor) session.getAttribute("mentor");
if (mt == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Mentor Registration</title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="formstyle.css">
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
  <%@include file="mentornavbar.jsp" %>
    <div class="content">
            <h3><u>Mentor Update</u></h3>
    <div class="form-container">
        <form method="post" action="mentorupdate" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="mid">Id of Student</label></td>
                    <td><input type="text" id="mid" name="mid" value="<%=mt.getMid()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="mname">Enter Name</label></td>
                    <td><input type="text" id="mname" name="mname" value="<%=mt.getMname()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="mgender" value="MALE"  required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="mgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="mgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="mdateofbirth">Enter Date of Birth</label></td>
                    <td><input type="date" id="mdateofbirth" name="mdateofbirth" value="<%=mt.getMdateofbirth()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="mlocation">Enter Location</label></td>
                    <td><input type="text" id="mlocation" name="mlocation" value="<%=mt.getMloacation()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="memail">Enter Email ID</label></td>
                    <td><input type="mmail" id="memail" name="memail" value="<%=mt.getMemail()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="mpassword">Enter Password</label></td>
                    <td><input type="password" id="mpassword" name="mpassword" value="<%=mt.getMpassword()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="mcontact">Enter Contact</label></td>
                    <td><input type="text" id="mcontact" name="mcontact" value="<%=mt.getMcontact()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="musername">Enter Username</label></td>
                    <td><input type="text" id="musername" name="musername" value="<%=mt.getMusername()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="mabout">About</label></td>
                    <td><textarea id="mabout" name="mabout" rows="4" cols="40" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="mimage">Upload Image (Optional)</label></td>
                    <td><input type="file" id="mimage" name="mimage" accept="image/*"/></td>
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