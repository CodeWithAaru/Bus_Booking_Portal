

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
public class QueryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public QueryInsertServlet() {
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
		          String name = request.getParameter("fullname");
		          String uname = request.getParameter("uname");
		          String phone = request.getParameter("number");
		          String query = request.getParameter("query");
		          
		          PreparedStatement ps = c.prepareStatement("insert into query(name,username,number,query) values(?,?,?,?)");
		          ps.setString(1, name);
		          ps.setString(2, uname);
		          ps.setString(3, phone);
		          ps.setString(4, query);
		        
		          
		          ps.execute();
		          HttpSession session=request.getSession();  
	              session.setAttribute("name",uname);
		          request.getRequestDispatcher("UserFront.jsp").include(request, response);
		          out.println("Your Query is Succesfully Submitted, "+name);
	        	 
	              
		      } catch (Exception e) {
		         e.printStackTrace();
		         System.err.println(e.getClass().getName()+": "+e.getMessage());
		     
		      }
	}

}
