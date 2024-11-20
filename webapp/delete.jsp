<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<style>
    .success {
        color: green;
        font-weight: bold;
    }
    .error {
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
<%
    String a = request.getParameter("n1");
    String message = "";
    String messageClass = "";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "Guruprakash@2316");
        Statement st = con.createStatement();
        int result = st.executeUpdate("DELETE FROM jobs WHERE id = '" + a + "'");

        if (result > 0) {
            message = "Delete successful";
            messageClass = "success";  // Set message class to green
        } else {
            message = "No records found to delete";
            messageClass = "error";  // Set message class to red
        }
    } catch (Exception e) {
        message = "Something went wrong: " + e.getMessage();
        messageClass = "error";  // Set message class to red
    }
%>

<% if (!message.isEmpty()) { %>
    <div class="<%= messageClass %>">
        <%= message %>
    </div>
    <script>
        // Redirect after 2 seconds
        setTimeout(function() {
            window.location.href = "view_jobs.jsp";
        }, 1000);  // 1 seconds delay
    </script>
<% } %>

</body>
</html>
