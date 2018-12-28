	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	
	
	</head>
	<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">
	<div  class="text-lowercase" style="font-size:170%; font-style:italic;"><b>
		<c:import url="header.jsp"></c:import>
	
		<h1 style="text-align:center">Login</h1><br>
	<h1>${errorMap}</h1>
		
		<form action="Login" method="post" style=" margin: auto; width: 40%; font-size:180%; font-style:italic;">
	
			<input  style="font-size:50%; font-style:italic;" type="text" name="Username" class="form-control" placeholder="Enter Username">
			
			<br>
			<input style="font-size:50%; font-style:italic;" type="password" name="Password"  class="form-control" placeholder="Enter Password"/>
			<br>
			<p style="text-align:center"><input style="font-size:60%; font-style:italic;" type="submit" value="Submit" class="btn btn-danger"></p>
	
			<c:if test="${not empty invalid}">
			
				<br>
				<h1 class="alert alert-danger" style="margin: auto; width: 80%;">Invalid credentials</h1>
			
			</c:if>
	
		</form>
	
	</b>
	</div>
	</body>
	</html>