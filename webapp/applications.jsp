<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin: View Applications</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .bg-custom {
            background-color: #283593 !important;
        }

        .navbar .nav-item .nav-link {
            font-size: 20px;
            color: white;
        }

        .navbar .nav-item:hover .nav-link {
            background-color: #6c757d;
            color: black;
            border-radius: 10px;
        }

        .table th, .table td {
            text-align: center;
        }
    </style>
</head>

<body style="background-color: #f7f9fc;">

    <!-- Navbar -->
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

    <!-- Applications Table -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <h5 class="text-center text-primary">All Applications</h5>

                <%
                // Fetch the application details from the database
                try {
                    // Database connection
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/job_portal", 
                        "root", 
                        "Guruprakash@2316"
                    );

                    // SQL query to get all applications
                    String query = "SELECT * FROM applications";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(query);

                %>

                <!-- Applications Table -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Application ID</th>  <!-- Auto-incremented ID -->
                            <th>Job ID</th>
                            <th>Full Name</th>
                            <th>Email</th>
                            <th>Qualification</th>
                            <th>Experience (years)</th>
                            <th>Graduated Year</th>
                            <th>Knowledge in the Role</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        // Loop through the result set and display each application
                        while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>  <!-- Auto-incremented Application ID -->
                            <td><%= rs.getString("job_id") %></td>
                            <td><%= rs.getString("name") %></td>
                            <td><%= rs.getString("email") %></td>
                            <td><%= rs.getString("qualification") %></td>
                            <td><%= rs.getString("experience") %></td>
                            <td><%= rs.getString("graduated_year") %></td>
                            <td><%= rs.getString("knowledge") %></td>
                        </tr>
                        <%
                        }
                        con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        %>
                    </tbody>
                </table>

            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer mt-5">
        <footer class="text-center py-4 bg-light">
            <p>&copy; 2024 Job Portal</p>
        </footer>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
