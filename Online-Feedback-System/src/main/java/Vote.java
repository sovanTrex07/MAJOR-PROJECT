

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Vote
 */
@WebServlet("/Vote")
public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DbManager db = new DbManager();
		java.sql.Connection con = db.getConnection();
		
		String vNumber = request.getParameter("voterNumber");
		String partie = request.getParameter("partie");
		
		try {
			
			PreparedStatement st1 = con.prepareStatement("select vNumber from temp_vc_number where vNumber='"+vNumber+"'");
			ResultSet rs1 = st1.executeQuery("select vNumber from temp_vc_number where vNumber='"+vNumber+"'");
			
			if(rs1.next()) {
				
				
				response.sendRedirect("voted.jsp");
				
			}else {
				
				PreparedStatement st=con.prepareStatement("select * from voters where vnum='"+vNumber+"'");
				ResultSet rs = ((java.sql.Statement)st).executeQuery("select * from voters where vnum='"+vNumber+"'");
				
				if(rs.next()) {
					PreparedStatement st3 = con.prepareStatement("insert into temp_vc_number(vNumber)values('"+vNumber+"')");
					PreparedStatement st2 = con.prepareStatement("insert into vote(vNumber,parties)values('"+vNumber+"','"+partie+"')");
					
					st3.executeUpdate();
					st2.executeUpdate();
					response.sendRedirect("index.jsp");
				}else {
					response.sendRedirect("voterWelcome.jsp");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
