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

   request.setAttribute("product", pdao.getProduct((Integer.parseInt(request.getParameter("id")))));
%>

</head>
<body style="margin: auto; width: 90%;" background="assets/images/52476.jpg">

	<c:import url="header.jsp"></c:import>
<div  class="text-lowercase" style="font-size:150%; font-style:italic;">
	<br>

	<table style="margin:auto; width: 80%;">
		
		
		<tbody>

			<tr>
				<td>
				<img src="${product.getImageUrl()}" style="max-width: 300px;"
						class="img img-thumbnail" />
				</td>
				
				<td>
					<div class="container">
					
						<div class="row">
						
							<div class="col-lg-3"><b>Name:</b></div>
							<div class="col-lg-5" ><h3>${product.getName()}</h3></div>
						
						</div><br>
						
						<div class="row">
						
							<div class="col-lg-3"><b>Description:</b></div>
							<div class="col-lg-6" ><h3>${product.getDescription()}</h3></div>
						
						</div>
					
					</div>
				</td>
				
			</tr>

		</tbody>

	</table>
	
	<form action="AddProductToCart" method="post" style="margin: auto; width: 80%;">
	
		<br>
		<input type="hidden" name="pid" value="${product.getId()}">
		<input type="hidden" name="username" value="${sessionScope.username}">

		<input type="number" name="qty" placeholder="Enter Quantity" style="font-size:90%; font-style:italic;" class="form-control">
		<br>
		<input type="text"  disabled="disabled" value="${sessionScope.username}" style="font-size:90%; font-style:italic;" class="form-control">
		<br>
		<input type="submit" value="Add To Cart" style="font-size:90%; font-style:italic;" class="btn btn-danger">
	
 	</form>
</div>
</body>
</html>