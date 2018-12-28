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
<div  class="text-lowercase" style="font-size:170%; font-style:italic;">
	<c:import url="header.jsp"></c:import>

	<h1 style="text-align:center">Add Category</h1>

	<form action="AddCategoryToDB" method="post" style="margin: auto; width: 50%;">

		<h1><input  style="font-size:70%; font-style:italic;" type="text" name="name" placeholder="enter Category" class="form-control"></h1> <br>

		<h2><textarea style="font-size:70%; font-style:italic;" name="description" placeholder="enter Category Description" class="form-control"></textarea></
			</h2><br>
		<br> <p style="text-align:center"><b><input style="font-size:70%; font-style:italic;"  type="submit" value="Submit" class="btn btn-success"></b></p>

	</form>

</div>
</body>
</html>