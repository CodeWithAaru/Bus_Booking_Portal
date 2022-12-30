

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
//import javax.servlet.http.HttpSession;

@WebServlet("/RegisterServlet")
public class AddBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddBusServlet() {
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
		          String id = request.getParameter("Vid");
		          String type = request.getParameter("Vtype");
		          String dtime = request.getParameter("Dtime");
		          String from = request.getParameter("From");
		          String to = request.getParameter("To");
		          String Ttime = request.getParameter("time");
		          String price = request.getParameter("price");
		          int a = Integer.parseInt(id);
		          PreparedStatement ps = c.prepareStatement("insert into hypotheticlvehicle(vehicle_id, vehicle_type,usual_departure_time,from_station,to_station,time_taken_for_travel,price) values(?,?,?,?,?,?,?)");
		          ps.setInt(1, a);
		          ps.setString(2, type);
		          ps.setString(3, dtime);
		          ps.setString(4, from);
		          ps.setString(5, to);
		          ps.setString(6, Ttime);
		          ps.setString(7, price);
		          
		          ps.execute();
		          
//	        	  HttpSession session=request.getSession();  
		          request.getRequestDispatcher("AdminFront.jsp").include(request, response);
	              out.println("Your Are Succesfully Added The Bus ");
		      } catch (Exception e) {
		         e.printStackTrace();
		         System.err.println(e.getClass().getName()+": "+e.getMessage());
		     
		      }
	}

}
