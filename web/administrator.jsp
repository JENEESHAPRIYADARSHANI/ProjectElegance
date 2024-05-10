<%-- 
    Document   : admin
    Created on : May 8, 2024, 9:44:09 PM
    Author     : DELL
--%>

<%@page import="com.eazydeals.entities.Message"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="error_exception.jsp"%>
<%
Admin activeAdmin = (Admin) session.getAttribute("activeAdmin");
if (activeAdmin == null) {
	Message message = new Message("You are not logged in! Login first!!", "error", "alert-danger");
	session.setAttribute("message", message);
	response.sendRedirect("adminlogin.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"  content="IR=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/styleadmin.css">
    <link rel="stylesheet" href="CSS/style.css">
    <!----- Box icons importing-->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Admin Dashboard</title>
<%@include file="Components/common_css_js.jsp"%>
</head>     
<body>
    <!--navbar -->
	<%@include file="Components/navbar.jsp"%>
</body>
<footer>
    <!-- Footer content -->
</footer> 
<script src="JS/adminscript.js"></script>
</html>
