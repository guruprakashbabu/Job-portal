

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       PrintWriter pw=response.getWriter();
	       
			String a=request.getParameter("email");
			String b=request.getParameter("password");
			
			if((a.equals("admin@gmail.com") && b.equals("password"))||(a.equals("admin2@gmail.com") && b.equals("password")))
			{
				response.sendRedirect("admin.jsp");
			}
			else
			{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=
				DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","Guruprakash@2316");
				Statement st=con.createStatement();
				
				ResultSet rs=st.executeQuery // ResultSet used to check result with query
						("select * from user where email='"+a+"' and password='"+b+"'");
			    if(rs.next()) // rs.next()--> if correct go to next line
			    {
			    	response.sendRedirect("User.jsp");
			    }
			    else
			    {
			    	pw.println("Wrong UserDetails");
			    }
				
				
			}			
			catch(Exception e)
			{
				pw.println(e);
			}
			
			}
		}

	}