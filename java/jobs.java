

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

@WebServlet("/jobs")
public class jobs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int  a =Integer.parseInt(request.getParameter("id"));
		String b=request.getParameter("tittle");
		String c =request.getParameter("description");
		String d=request.getParameter("category");
		String e=request.getParameter("status");
		String f=request.getParameter("location");
		String g = request.getParameter("pdate");// if data comes from text box its a string so need to convert string to integer
		PrintWriter pw=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=
			DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","Guruprakash@2316");
			Statement st=con.createStatement();
			st.executeUpdate("insert into jobs values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')"); 
			
			// ResultSet (select) only executeQuery :: other all are executeUpdate, executeDelete
			// if integer no need to give single cots('')
			
			response.sendRedirect("view_jobs.jsp");
			}			
		catch(Exception E)
		{
			pw.println(E);
		}
	}

}
