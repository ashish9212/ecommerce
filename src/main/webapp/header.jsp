<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.5, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo-122x87.png" type="image/x-icon">
  <meta name="description" content="">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
<%
	CartDAO cdao = new CartDAOImpl();

	if( request.getSession().getAttribute("username") == null ){
		request.setAttribute("itemcount", 0);
	}else{
		request.setAttribute("itemcount",  cdao.getCount(request.getSession().getAttribute("username").toString()) );
	}
		
%>

</head>
<body>
<section class="menu cid-qTkzRZLJNu" once="menu" id="menu1-0">

    <nav class="navbar align-items-center navbar-fixed-top navbar-toggleable-sm ">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo"><a href="Index.jsp">
                   <h1> <font color="white"><b>Hunger Point</b></font> </h1>
                   </a>
                </span>
                
            </div>
        </div>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
        
		<c:if
			test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
			<li class=" nav-item"><a class="nav-link link text-white display-4" href="AddProduct.jsp"><h4>Add
					Product</h4></a></li>
		</c:if>

		<li class="nav-item"><a class="nav-link link text-white display-4" href="ViewProduct.jsp"><h4>View Food</h4></a></li>
		
		<c:if
			test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
			<li class="nav-item"><a class="nav-link link text-white display-4" href="AddCategory.jsp"><h4>Add
					Category</h4></a></li>
		</c:if>

		
		<c:if
			test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
		<li class="nav-item"><a class="nav-link link text-white display-4"
			href="ViewCategories.jsp"><h4>View Category</h4></a></li>
		</c:if>


		<c:if
			test="${not empty sessionScope.username and sessionScope.usernameRole=='ROLE_ADMIN'}">
			<li class="nav-item"><a class="nav-link link text-white display-4" href="ViewUsers.jsp"><h4>View
					Users</h4></a></li>
		</c:if>
	
		<li class="nav-item">
		<a class="nav-link link text-white display-4" href="ViewCart.jsp"><h4>
				Cart ${itemcount} </h4></a></li>
	
				
	</ul>

	<ul class="nav navbar-nav ml-auto">
		<c:if test="${not empty sessionScope.username}">

			<li class="nav-item">
			<a class="nav-link link text-white display-4" href="AddCategory.jsp"><span class="mbri-user mbr-iconfont mbr-iconfont-btn"></span>
			<h4>Welcome ${sessionScope.username}</h4> </a></li>
					
			<li class="nav-item">
			<a class="nav-link link text-white display-4" href="Logout"><span class="mbri-search mbr-iconfont mbr-iconfont-btn"></span>
                       <h4> LOG OUT</h4> </a>
			</li>

		</c:if>
	

		<c:if test="${empty sessionScope.username}">
		
			<li class="nav-item"><a class="nav-link link text-white display-4" href="Login.jsp"><h4>Login</h4>
			 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li>
	
	
			<li class="nav-item">
			<a class="nav-link link text-white display-4" href="AddUsers.jsp"><span class="mbri-user mbr-iconfont mbr-iconfont-btn"></span>
                       <h4>SIGN UP</h4> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
			</li>
			
		</c:if>
		</ul>
	
</div>
</nav>

</section>


<script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/parallax/jarallax.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
</body>