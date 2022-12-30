import java.io.IOException;  

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

  
public class LoginServlet extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        
        
        
        
        Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver"); //load the driver
	          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
	          String n = request.getParameter("uname");
	          String p = request.getParameter("password");
	          PreparedStatement ps = c.prepareStatement("select username from accountprofile where username=? and password=?");
	          ps.setString(1, n);
	          ps.setString(2, p);
	          ResultSet rs = ps.executeQuery();
	          if(rs.next())
	        	  
	          {
	        	  HttpSession session=request.getSession();  
		          session.setAttribute("name",n);
	        	  request.getRequestDispatcher("UserFront.jsp").include(request, response);
	        	  request.getRequestDispatcher("Front.jsp").include(request, response);
	        	  //out.println("---------------------welcome "+n+"--------------------------\n\n");
	        	  //out.println("<div align=left><a href =home.html>Logout</a></div>");
	        	  
	          }
	          else
	          {
	        	  HttpSession session=request.getSession();  
		          session.setAttribute("warning", "please enter correct password");
	        	  request.getRequestDispatcher("BusEntry.jsp").include(request, response);
	        	  
	        	  
	          }
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.err.println(e.getClass().getName()+": "+e.getMessage());
	     
	      }
    }  
}  