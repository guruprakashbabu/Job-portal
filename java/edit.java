
import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit") // Correct URL pattern for the servlet
public class edit extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	int a = Integer.parseInt(request.getParameter("id"));
        String b = request.getParameter("tittle");
        String c = request.getParameter("description");
        String d = request.getParameter("category");
        String e = request.getParameter("status");
        String f = request.getParameter("location");
        String g = request.getParameter("pdate"); // Date as string for simplicity

        PrintWriter pw = response.getWriter();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "Guruprakash@2316");
            Statement st = con.createStatement();
            st.executeUpdate("UPDATE jobs SET tittle='" + b + "', description='" + c + "', category='" + d + "', "
                            + "status='" + e + "', location='" + f + "', pdate='" + g + "' WHERE id='" + a + "'");
            
            response.sendRedirect("view_jobs.jsp"); // Redirect to the job view page after update
        } catch (Exception ex) {
            pw.println(ex); // Print the exception if there is an error
        }
    }
}
