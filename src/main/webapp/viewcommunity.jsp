<%@page import="com.klef.jfsd.springbootproject.model.Student"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Student s=(Student) session.getAttribute("student");
if(s==null){
	response.sendRedirect("studentsessionfail");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<link rel="stylesheet" type="text/css" href="navbarstyle.css">
<link rel="stylesheet" type="text/css" href="slidbox.css">
</head>
<body>
<div class="container">
    <!-- Include the Sidebar (mainnavbar.jsp) -->
    <%@include file="studentnavbar.jsp" %>
	
    <!-- Main Content Area -->
    <div class="content">
    <h3 style="text-align: center;font-family: Copperplate, Papyrus, fantasy;"><u>Students Community Chat</u></h3>
    
    <!-- Chat Messages -->
    <div style="max-height: 400px; overflow-y: auto; border: 1px solid #ddd; padding: 10px; background: #fafafa; margin-bottom: 20px; border-radius: 5px;">
        <c:forEach items="${mlist}" var="com">
            <div style="margin: 10px 0; padding: 10px; border-radius: 5px; background: ${com.susername == s.susername ? '#e0f7ff' : '#e8eaf6'};">
                <div style="font-weight: bold; margin-bottom: 5px">
                    ${com.susername == s.susername ? 'You' : com.susername}
                </div>
                <div style="font-size: 14px;color:black">${com.cmsg}</div>
            </div>
        </c:forEach>
    </div>
    
    <!-- Send Message -->
    <form method="post" action="addmessage" style="display: flex; gap: 10px;">
        <textarea id="field" name="field" rows="3" placeholder="Type your message here..." required 
                  style="flex: 1; resize: none; padding: 10px; border-radius: 5px; border: 1px solid #ddd;"></textarea>
        <button type="submit" 
                style="background: #4caf50; color: #fff; border: none; border-radius: 5px; padding: 10px 20px; cursor: pointer; font-size: 16px;">
            Send
        </button>
    </form>
</div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>