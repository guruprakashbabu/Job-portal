<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import=" java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: View-Jobs</title>
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
<style>
.job-card {
	margin-bottom: 20px; /* Adds space below each job card */
}
</style>
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
				<li class="nav-item"><a class="nav-link" href="add_job.jsp">
						<i class="fa-regular fa-eye"></i>View Job
				</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<a href="index.jsp" class="btn btn-light"><i
					class="fas fa-sign-in-alt"></i>LogOut</a>
			</form>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "Guruprakash@2316");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from jobs"); /* executeQuery only for SELECT STATEMENT */
					while (rs.next()) {
				%>
				<div class="card mt-2 job-card">
					<!-- Added class job-card for margin -->
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>
						<h6>
							Title:
							<%=rs.getString("tittle")%></h6>
						<h6>
							Jod Id:
							<%=rs.getString("id")%></h6>
						<p>
							Description:
							<%=rs.getString("description")%></p>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="<%=rs.getString("location")%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="<%=rs.getString("category")%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="<%=rs.getString("status")%>" readonly>
							</div>
							<h6>
								Publish Date:
								<%=rs.getString("pdate")%></h6>
							<div class="text-center">
								<a href="apply.jsp?n1=<%=rs.getString("id") %>" class="btn btn-sm bg-success text-white">Apply</a>
							</div>
						</div>
					</div>
				</div>
				<%
				} // End of while loop
				} catch (Exception e) {
				e.printStackTrace(); // Print stack trace for debugging
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>
