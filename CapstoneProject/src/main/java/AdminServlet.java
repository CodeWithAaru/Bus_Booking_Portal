import java.io.IOException;  
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;
  
public class AdminServlet extends HttpServlet {  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
       // request.getRequestDispatcher("link.jsp").include(request, response);
        
        
        
        
        Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver"); //load the driver
	          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
	          String n = request.getParameter("uname");
	          String p = request.getParameter("password");
	          PreparedStatement ps = c.prepareStatement("select username from adminprofile where username=? and password=?");
	          ps.setString(1, n);
	          ps.setString(2, p);
	          ResultSet rs = ps.executeQuery();
	          if(rs.next())
	          {
	        	  HttpSession session=request.getSession();  
		          session.setAttribute("name",n); 
	        	  request.getRequestDispatcher("AdminFront.jsp").include(request, response);
//	        	  out.println("<div align=left><a href =home.html>Logout</a></div>");
	        	 
	          }
	          else
	          {
	        	
	        	  HttpSession session=request.getSession();  
		            session.setAttribute("warning1","Please Enter coorect Uname And Password"); 
	        	  request.getRequestDispatcher("BusEntry.jsp").include(request, response);
	          }
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.err.println(e.getClass().getName()+": "+e.getMessage());
	     
	      }
	}
}