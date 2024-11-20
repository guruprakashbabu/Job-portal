<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.back-img {
	background: url("images/img1.jpeg");
	width: 100%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
.bg-custom {
  background: #283593 !important;
  /* #8e24aa;
  #aa00ff */
}

.navbar .nav-item .nav-link {
  font-size: 20px;
  color: white;
}

.navbar .nav-item:hover .nav-link {
  background: grey;
  color: black;
  border-radius: 10px;
}
</style>
<title>Insert title here</title>
<%@ include file="/Components/all_css.jsp"%>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<a href="login.jsp" class="btn btn-light"><i
					class="fas fa-sign-in-alt"></i>Login</a> 
				<a href="signup.jsp"
					class="btn btn-light"><i class="fa-regular fa-user"></i>SignUp</a>
			</form>
		</div>
	</nav>


	<!-- <!-- index page -->
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa fa-book" aria-hidden="true"></i> Online Job Portal
			</h1>
		</div>
	</div>

	<%@include file="/Components/footer.jsp"%>

</body>
</html>