<%@page import="impl.ProductDAOImpl"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>


<%
	ProductDAO pdao = new ProductDAOImpl();

	request.setAttribute("products", pdao.getProduct());
%>

</head>
<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">

	<c:import url="header.jsp"></c:import>
	<div  class="text-lowercase" style="font-size:170%; font-style:italic;">

	<table class="table table-striped">

		<thead>

			<tr>
			
				<td>Id</td>
				
				<td>Image</td>
				<td>Category</td>
				<td>SubCategory   </td>
				<td>Quantity</td>
				<td>Price</td>
				<td>Description</td>
				
					<c:if test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
				<td>Update</td>
				<td>Delete</td>
					</c:if>
				<td>View</td>
			
			</tr>

		</thead>

		<tbody >

			<c:forEach items="${products}" var="x">

				<tr>
					<td>${x.getId()}</td>
					<td><img src="${x.getImageUrl()}" style="max-width: 100px;" class="img img-thumbnail"/></td>
					<td>${x.getCategory()}</td>
					<td>${x.getName()}</td>
					<td>${x.getQuantity()}</td>
					<td>${x.getPrice()}</td>
					<td>${x.getDescription()}</td>
					
			
				<c:if test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
					<td><a href="UpdateProduct.jsp?id=${x.getId()}"
						class="btn btn-success"><h3>Update</h3></a></td>
					<td><a href="DeleteProductFromDB?id=${x.getId()}"
						class="btn btn-danger"><h3>Delete</h3></a></td>
							</c:if>
						<td><a href="ViewSingleProduct.jsp?id=${x.getId()}"
						class="btn btn-danger"><h3>View</h3></a></td>
				
				</tr>

			</c:forEach>


		</tbody>

	</table>
	
</div>
</body>
</html>
