<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="formstyle.css">
    <link rel="stylesheet" type="text/css" href="navbarstyle.css">
</head>
<body>
<div class="container">
  <%@include file="mainnavbar.jsp" %>
    <div class="content">
            <h3><u>Mentor Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertmentor" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="mname">Enter Name</label></td>
                    <td><input type="text" id="mname" name="mname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="mgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="mgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="mgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="mdateofbirth">Enter Date of Birth</label></td>
                    <td><input type="date" id="mdateofbirth" name="mdateofbirth" required/></td>
                </tr>
                <tr>
                    <td><label for="mlocation">Enter Location</label></td>
                    <td><input type="text" id="mlocation" name="mlocation" required/></td>
                </tr>
                <tr>
                    <td><label for="memail">Enter Email ID</label></td>
                    <td><input type="email" id="memail" name="memail" required/></td>
                </tr>
                <tr>
                    <td><label for="mpassword">Enter Password</label></td>
                    <td><input type="password" id="mpassword" name="mpassword" required/></td>
                </tr>
                <tr>
                    <td><label for="mcontact">Enter Contact</label></td>
                    <td><input type="text" id="mcontact" name="mcontact" required/></td>
                </tr>
                <tr>
                    <td><label for="musername">Enter Username</label></td>
                    <td><input type="text" id="musername" name="musername" required/></td>
                </tr>
                <tr>
                    <td><label for="mabout">About (Enter valid Details for Approval*)</label></td>
                    <td><textarea id="mabout" name="mabout" rows="4" cols="40" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="mimage">Upload Image (Optional)</label></td>
                    <td><input type="file" id="mimage" name="mimage" accept="image/*"/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
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
