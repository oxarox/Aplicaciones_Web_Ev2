package cl.inacap.Odiseo.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.Odiseo.DAO.libroDAO;

/**
 * Servlet implementation class Detalle
 */
@WebServlet("/Detalle.do")
public class Detalle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Detalle() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		libroDAO ld= new libroDAO();
		
		int Iden=Integer.parseInt(request.getParameter("Iden"));
		
		request.setAttribute("Libro", ld.getLibrobyID(Iden));
		
		
		request.getRequestDispatcher("site/js/detalle.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
