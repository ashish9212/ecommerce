<%@page import="impl.CategoryDAOImpl"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%
	CategoryDAO cdao = new CategoryDAOImpl();
	request.setAttribute("cats", cdao.getCategory());
%>

</head>
<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">
<div  class="text-lowercase" style="font-size:150%; font-style:italic;">
	<c:import url="header.jsp"></c:import>

	<h1 style="text-align:center">Add Product</h1>
<br>
	<form action="AddProductToDB" method="post" style="margin: auto; width: 50%;" >

		<input type="text" name="name" placeholder="enter SubCategory"  class="form-control" style="font-size:110%; font-style:italic;" >
		<br>
		
		<select style="font-size:110%; font-style:italic;" class="form-control" name="category">
			<c:forEach items="${cats}" var="cat">
				<option value="${cat.getName()}" title="${cat.getDescription()}">${cat.getName()}</option>			
			</c:forEach>
		</select>
		
		<!-- <input style="font-size:70%; font-style:italic;" type="text" name="category" placeholder="enter category"  class="form-control"> -->
		<br>
		<input style="font-size:110%; font-style:italic;" type="text" name="quantity"  placeholder="enter quantity " class="form-control">
		<br>
		<input style="font-size:110%; font-style:italic;" type="text" name="price"  placeholder="enter price"class="form-control">
		<br>
		<textarea style="font-size:110%; font-style:italic;" name="description" placeholder="enter description" class="form-control"></textarea>
		<br>
		
		<input style="font-size:110%; font-style:italic;" type="file" name="file" class="form-control">
		<br>
		
		<input style="font-size:110%; font-style:italic;" type="submit" value="Submit" class="btn btn-success">

	</form>

</div>
</body>
</html>
