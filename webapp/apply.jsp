<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLEncoder" %>  <!-- Added import for URLEncoder -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply Job</title>
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

        .alert-info {
            background-color: #cce5ff;
        }
    </style>
</head>

<body style="background-color: #f7f9fc;">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-custom">
        <a class="navbar-brand" href="#">Job Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
            </ul>
        </div>
    </nav>

    <!-- Application Form -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                            <h5 class="mt-3">Job Application Form</h5>
                        </div>

                        <% 
                        String jobId = request.getParameter("n1");  // Capture the job ID passed in the URL
                        String message = "";
                        String name = "", email = "", qualification = "", experience = "", graduatedYear = "", knowledge = "";

                        if ("POST".equalsIgnoreCase(request.getMethod())) {
                            // Retrieve form data
                            name = request.getParameter("name");
                            email = request.getParameter("email");
                            qualification = request.getParameter("qualification");
                            experience = request.getParameter("experience");
                            graduatedYear = request.getParameter("graduatedYear");
                            knowledge = request.getParameter("knowledge");

                            try {
                                // Establish database connection
                                Class.forName("com.mysql.jdbc.Driver"); // Load MySQL JDBC Driver
                                Connection con = DriverManager.getConnection(
                                    "jdbc:mysql://localhost:3306/job_portal", 
                                    "root", 
                                    "Guruprakash@2316"
                                );

                                // Insert application data into the database using prepared statement
                                String query = "INSERT INTO applications (job_id, name, email, qualification, experience, graduated_year, knowledge) "
                                                 + "VALUES (?, ?, ?, ?, ?, ?, ?)";
                                PreparedStatement pst = con.prepareStatement(query);
                                pst.setString(1, jobId);
                                pst.setString(2, name);
                                pst.setString(3, email);
                                pst.setString(4, qualification);
                                pst.setString(5, experience);
                                pst.setString(6, graduatedYear);
                                pst.setString(7, knowledge);

                                int result = pst.executeUpdate();
                                if (result > 0) {
                                    message = "Application successful! Thank You. We will Check and Let You Know. Close the Tab";
                                } else {
                                    message = "Application failed. Please try again.";
                                }
                                con.close(); // Always close the connection
                            } catch (Exception e) {
                                e.printStackTrace();
                                message = "Error: " + e.getMessage();
                            }

                            // Redirect to the same page after form submission to avoid resubmission issues
                            response.sendRedirect("apply.jsp?n1=" + jobId + "&message=" + URLEncoder.encode(message, "UTF-8"));
                            return;
                        }
                        %>

                        <!-- Display message after form submission -->
                        <%
                            String displayMessage = request.getParameter("message");
                            if (displayMessage != null && !displayMessage.isEmpty()) {
                        %>
                            <div class="alert alert-info text-center">
                                <%= displayMessage %>
                            </div>
                        <% 
                            }
                        %>

                        <!-- Application Form (Only displayed if no successful submission) -->
                        <%
                            if (displayMessage == null) {
                        %>
                        <form action="apply.jsp?n1=<%= jobId %>" method="post">
                            <div class="form-group">
                                <label for="jobId">Job ID</label>
                                <input type="text" class="form-control" id="jobId" value="<%= jobId %>" readonly>
                            </div>

                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" class="form-control" id="name" name="name" value="<%= name %>" required>
                            </div>

                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" class="form-control" id="email" name="email" value="<%= email %>" required>
                            </div>

                            <div class="form-group">
                                <label for="qualification">Qualification</label>
                                <input type="text" class="form-control" id="qualification" name="qualification" value="<%= qualification %>" required>
                            </div>

                            <div class="form-group">
                                <label for="experience">Experience (in years)</label>
                                <input type="number" class="form-control" id="experience" name="experience" value="<%= experience %>" required>
                            </div>

                            <div class="form-group">
                                <label for="graduatedYear">Graduated Year</label>
                                <input type="number" class="form-control" id="graduatedYear" name="graduatedYear" value="<%= graduatedYear %>" required>
                            </div>

                            <div class="form-group">
                                <label for="knowledge">Knowledge in the Role</label>
                                <textarea class="form-control" id="knowledge" name="knowledge" rows="4" required><%= knowledge %></textarea>
                            </div>

                            <button type="submit" class="btn btn-primary btn-block">Apply</button>
                        </form>
                        <% 
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer mt-5">
        <footer class="text-center py-4 bg-light">
            <p>&copy; Job Portal!</p>
        </footer>
    </div>

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
