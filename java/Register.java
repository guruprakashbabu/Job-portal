

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



@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String a=request.getParameter("name");
		String b=request.getParameter("email");
		String c=request.getParameter("password");
		String d=request.getParameter("qualification");
		PrintWriter pw=response.getWriter(); //input for printing database must be in try-catch
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); //sending data to database mysql
			
			Connection con=
			DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","Guruprakash@2316");
			Statement st=con.createStatement();  // for insert update delete 
			st.executeUpdate("insert into user values('"+a+"','"+b+"','"+c+"','"+d+"')");
			pw.println("Registeration successfully");
			pw.println("ThnakYou!");
			pw.println("Go to LogIn page and  LogIn!");
		}			
		catch(Exception e)
		{
			pw.println(e);
		}
	}

}
