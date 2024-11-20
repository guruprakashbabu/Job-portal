<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7fa;
        margin: 0;
        padding: 0;
        color: #333;
    }

    .bg-custom {
        background: #283593 !important;
        color: white;
        padding: 20px;
        text-align: center;
    }

    h1 {
        color: #333;
        font-size: 2.5em;
        margin-bottom: 20px;
        text-align: center;
    }

    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .form-container input[type="text"],
    .form-container input[type="date"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
    }

    .form-container input[type="text"]:focus,
    .form-container input[type="date"]:focus {
        border-color: #283593;
        outline: none;
        box-shadow: 0 0 8px rgba(40, 53, 147, 0.3);
    }

    .form-container label {
        font-size: 1.1em;
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
        color: #555;
    }

    .form-container input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #283593;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 1.2em;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-container input[type="submit"]:hover {
        background-color: #5c6bc0;
    }

    .form-container input[type="submit"]:active {
        background-color: #3f51b5;
    }

    .form-container .form-footer {
        text-align: center;
        margin-top: 20px;
    }

    .form-container .form-footer a {
        color: #283593;
        text-decoration: none;
        font-size: 1.1em;
    }

    .form-container .form-footer a:hover {
        text-decoration: underline;
    }

    .bg-custom .navbar {
        background-color: #283593;
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
<body>
    <div class="bg-custom">
        <h1>Edit Job</h1>
    </div>

    <div class="form-container">
        <%
        String a = request.getParameter("n1"); // if we click edit in view_job redirected to this page 
                                                // 1st we are getting input of n1 (a) from textbox in edit
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "Guruprakash@2316");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from jobs where id='" + a + "'");
            while (rs.next()) {
        %>
        <form action="edit" method="post">
            <!-- goes to servlet page -->
            <!-- if disabled we cant move to next page -->
            <label for="id">ID</label>
            <input type="text" name="id" value="<%= rs.getString("id") %>" readonly>

            <label for="title">Title</label>
            <input type="text" name="tittle" value="<%= rs.getString("tittle") %>">

            <label for="description">Description</label>
            <input type="text" name="description" value="<%= rs.getString("description") %>">

            <label for="category">Category</label>
            <input type="text" name="category" value="<%= rs.getString("category") %>">

            <label for="status">Status</label>
            <input type="text" name="status" value="<%= rs.getString("status") %>">

            <label for="location">Location</label>
            <input type="text" name="location" value="<%= rs.getString("location") %>">

            <label for="pdate">Publish Date</label>
            <input type="datetime-local" name="pdate" value="<%= rs.getString("pdate") %>">

            <input type="submit" value="Update Job">
        </form>
        <%
            }
        } catch (Exception e) {
            out.println(e);
        }
        %>
    </div>
</body>
</html>
