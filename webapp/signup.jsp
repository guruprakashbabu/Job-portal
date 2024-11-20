<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIgn Up</title>
<%@include file="/Components/all_css.jsp"%>
<style>
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
</head>
<body style="background-color: #f0f1f2;">
	<!-- 	navbar-->
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
					class="fas fa-sign-in-alt"></i>Login</a> <a href="signup.jsp"
					class="btn btn-light"><i class="fa-regular fa-user"></i>SignUp</a>
			</form>
		</div>
	</nav>

	<!-- navbar comp -->

	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>  
							<h5>Registration</h5>
						</div>
						<%-- <c:if test="${not empty succMsg}">
							<h4 class="text-center text-success">${succMsg}</h4>
						</c:if>
						<c:remove var="succMsg" /> --%>

						<!-- post method goes to register servelet page -->
						<form action="Register" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">
							</div>

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>

							<div class="form-group">
								<label>Enter Qualification</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="qualification">

								<button type="submit"
									class="btn btn-primary badge-pill btn-block">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div style="margin-top: 50px;">
		<%@include file="/Components/footer.jsp"%>
	</div>
</body>
</html>