<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
<%@page import="impl.UsersDAOImpl"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	CartDAO cdao = new CartDAOImpl();

	cdao.delete( request.getSession().getAttribute("username").toString() );	
%>
</head>
<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">
	<c:import url="header.jsp"></c:import>

	<center><h1> Thankyou. Your order has been confirmed.</h1></center>
	
	<a href="ViewProduct.jsp" class="btn btn-warning" style="margin-left: 50px;"><h3>Back To Products</h3></a>
	
</body>
</html>