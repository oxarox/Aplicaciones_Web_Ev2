package cl.inacap.Odiseo.Controllers;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;
import cl.inacap.Odiseo.DAO.libroDAO;
import cl.inacap.Odiseo.DTO.Libro;
/**
 * Servlet implementation class Home
 */
@WebServlet("/Home.do")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Libro> listaLibroTxtDestacados = new ArrayList<Libro>();
	

    /**
     * Default constructor. 
     */
    public Home() {
  
    	super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessionValida= request.getSession(true);
		libroDAO ldao = new libroDAO();
		listaLibroTxtDestacados.addAll(ldao.leerDestacadosTxt());
		RequestDispatcher rd = request.getRequestDispatcher("/site/js/home.jsp");
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
