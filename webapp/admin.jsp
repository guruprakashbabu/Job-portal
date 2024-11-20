<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
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
<%@include file="/Components/all_css.jsp"%>

<style type="text/css">
.back-img {
	background: url("images/img2.png");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
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
				<li class="nav-item"><a class="nav-link" href="add_job.jsp"><i
						class="fa-solid fa-circle-plus"></i>Post Job</a></li>
				<li class="nav-item"><a class="nav-link" href="view_jobs.jsp"><i
						class="fa-regular fa-eye"></i>View Job</a></li>
				<li class="nav-item"><a class="nav-link" href="applications.jsp"><i
						class="fa-regular fa-eye"></i>Applications</a></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<a href="index.jsp" class="btn btn-light"><i
					class="fas fa-sign-in-alt"></i>LogOut</a>
			</form>
		</div>
	</nav>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>
	<%@include file="/Components/footer.jsp"%>
</body>
</html>