<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body style="background-color: #f0f1f2;">
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
	<!-- nav bar ends -->
	
	
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<%-- <c:if test="${not empty succMsg}">
							<div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if> --%>
					</div>
					<h5>Add Jobs</h5>
<!-- post -->		<form action="jobs" method="post">
					<div class="form-group">
							<label>Job id</label> <input type="text" name="id"
								required class="form-control">
						</div>
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="tittle"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Odisha">Odisha</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hyderabad">Hyderabad</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" name="description" class="form-control"></textarea>
						</div>
						<div class="form-group">
							<label>Publish Date</label> <input type="datetime-local" name="pdate"
								required class="form-control">
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
