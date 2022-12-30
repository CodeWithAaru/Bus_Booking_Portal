

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ViewBusServlet")
public class ViewBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ViewBusServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        request.getRequestDispatcher("AdminFront.jsp").include(request, response);  
        
        Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver"); //load the driver
	          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
	          PreparedStatement ps = c.prepareStatement("select * from hypotheticlvehicle;");
	          ResultSet rs = ps.executeQuery();
	          out.println("<br><br><br><table border=1>");
	          out.println("<tr><th>Vehicle_Id</th><th>Vehicle_Type</th><th>usual_departure_time</th><th>route</th><th>time_taken_for_travel</th><tr>");
	          while(rs.next())
	          {
	        	  int id = rs.getInt("vehicle_id");
	        	  String type = rs.getString("vehicle_type");
	        	  String dtime = rs.getString("usual_departure_time");
	        	  String route = rs.getString("route");
	        	  String ttime = rs.getString("time_taken_for_travel");
	        	  out.println("<tr>"
	        	  		+ "<td>" + id + "</td>"
	        	  		+ "<td>" + type + "</td>"
	        	  		+ "<td>" + dtime + "</td>"
	        	  		+ "<td>"+ route+"</td>"
	        	  		+ "<td>"+ ttime+"</td>"
	        	  		+ "<td><a href=DeleteServlet?id="+rs.getString("vehicle_id") +">Delete</a></td>"
	        	  		+ "</tr>"); 
	        	  
	          }
	          out.println("</table>");  
	             out.println("</html></body>");  
	             c.close(); 
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.err.println(e.getClass().getName()+": "+e.getMessage());
	     
	      }
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
