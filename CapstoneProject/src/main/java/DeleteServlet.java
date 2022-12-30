

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
        }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    String id=request.getParameter("Vehicle_id");

        Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver"); //load the driver
	          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
	          PreparedStatement ps = c.prepareStatement("DELETE FROM HypotheticlVehicle WHERE Vehicle_id"+id);
	          ps.executeQuery();
	      } catch (Exception e) {
		         e.printStackTrace();
		         System.err.println(e.getClass().getName()+": "+e.getMessage());
		     
		      }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
