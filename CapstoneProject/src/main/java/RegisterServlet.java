

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	        
	        
	        
	        Connection c = null;
		      try {
		         Class.forName("org.postgresql.Driver"); //load the driver
		          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
		          String name = request.getParameter("name");
		          String uname = request.getParameter("uname");
		          String age = request.getParameter("age");
		          String add = request.getParameter("address");
		          String phone = request.getParameter("number");
		          String email = request.getParameter("email");
		          String pass = request.getParameter("password");
		          PreparedStatement ps = c.prepareStatement("insert into accountprofile(name,username,password,age,address,phone,email) values(?,?,?,?,?,?,?)");
		          ps.setString(1, name);
		          ps.setString(2, uname);
		          ps.setString(3, pass);
		          ps.setString(4, age);
		          ps.setString(5, add);
		          ps.setString(6, phone);
		          ps.setString(7, email);
		          
		          ps.execute();
		          request.getRequestDispatcher("BusEntry.jsp").include(request, response);
		          out.println("Your Are Succesfully Registered Please Login, "+name);
	        	  HttpSession session=request.getSession();  
	              session.setAttribute("name",name);
	              
		      } catch (Exception e) {
		         e.printStackTrace();
		         System.err.println(e.getClass().getName()+": "+e.getMessage());
		     
		      }
	}

}
