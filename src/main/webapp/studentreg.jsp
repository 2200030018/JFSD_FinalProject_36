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
            <h3><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertstudent" enctype="multipart/form-data">
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdateofbirth">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdateofbirth" name="sdateofbirth" required/></td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spassword">Enter Password</label></td>
                    <td><input type="password" id="spassword" name="spassword" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="text" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td><label for="susername">Enter Username</label></td>
                    <td><input type="text" id="susername" name="susername" required/></td>
                </tr>
                <tr>
                    <td><label for="scollege">Enter College (Optional)</label></td>
                    <td><input type="text" id="scollege" name="scollege"/></td>
                </tr>
                <tr>
                    <td><label for="sabout">About (Optional)</label></td>
                    <td><textarea id="sabout" name="sabout" rows="4" cols="40"></textarea></td>
                </tr>
                <tr>
                    <td><label for="simage">Upload Image (Optional)</label></td>
                    <td><input type="file" id="simage" name="simage" accept="image/*"/></td>
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
