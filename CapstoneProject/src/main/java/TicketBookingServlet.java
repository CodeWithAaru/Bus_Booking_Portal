

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/TicketBookingServlet")
public class TicketBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TicketBookingServlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter(); 
        Random a = new Random();
        String b = String.format("%04d", a.nextInt(10000));
        int id = Integer.parseInt(b);
        
        
        
        
        
        Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver"); //load the driver
	          c = DriverManager.getConnection ("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
	          String name = request.getParameter("full_name");
	          String uname = request.getParameter("name");
	          String passenger = request.getParameter("tickets");
	          String from = request.getParameter("from");
	          String to = request.getParameter("to");
	          String ttime = request.getParameter("h_journey");
	          String age = request.getParameter("age");
	          String add = request.getParameter("Add");
	          String price = request.getParameter("Amount");
	          String coupan = request.getParameter("coupan_code");
	          
	          PreparedStatement ps = c.prepareStatement("insert into ticket(vehicle_id,from_station,to_station,hours_of_journey,price,total_passenger,passenger_name,username, passenger_adress,passenger_age,coupan_applied) values("+id+",?,?,?,?,?,?,?,?,?,?)");
	          ps.setString(1, from);
	          ps.setString(2, to);
	          ps.setString(3, ttime);
	          ps.setString(4, price);
	          ps.setString(5, passenger);
	          ps.setString(6, name);
	          ps.setString(7, uname);
	          ps.setString(8, add);
	          ps.setString(9, age);
	          ps.setString(10, coupan);

	          
	          ps.execute();
	          HttpSession session=request.getSession();  
              session.setAttribute("name",uname);
	          request.getRequestDispatcher("UserFront.jsp").include(request, response);
	          out.println("Your Are Succesfully Booked a Bus , "+name);

	      } catch (Exception e) {
	         e.printStackTrace();
	         System.err.println(e.getClass().getName()+": "+e.getMessage());
	     
	      }
	}

}
