<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
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

	request.setAttribute("list", cdao.getCart(request.getSession().getAttribute("username").toString()));
	
%>
				
</head>
<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">

<div  class="text-lowercase" style="font-size:170%; font-style:italic;"><b>
	<h1>${errorMap}</h1>
	<c:import url="header.jsp"></c:import>

	<h1 style="text-align:center"><b>View Cart</b></h1>
	
	
	<br>
	<br>

	<table class="table table-striped" style=" margin: auto; width: 80%; font-size:110%; font-style:italic;">

		<thead>

			<tr>

				<td>Product Name</td>
				<td>Product Image</td>
				<td>Product Price</td>
				<td>Quantity</td>
				<td>Delete</td>
				<td>Confirm</td>

			</tr>

		</thead>

		<tbody>

			<c:forEach items="${list}" var="x">

				<tr>
					<td>${x.getProduct().getName()}</td>
					<td><img src="${x.getProduct().getImageUrl()}"
						class="img img-thumbnail" style="max-width: 200px"></td>
					<td>${x.getProduct().getPrice()}</td>
					<td>${x.getQ()}</td>

					<td><a href="DeleteCartFromDB?id=${x.getId()}"
						class="btn btn-danger"><h3>delete</h3></a></td>
						<td><a href="ConfirmAddress.jsp" class="btn btn-primary" style="float: right;">
						<h3 >Confirm Addressss</h3></a></td>
					

				</tr>

			</c:forEach>
	

		</tbody>

	</table></b>
</div>
</body>
</html>