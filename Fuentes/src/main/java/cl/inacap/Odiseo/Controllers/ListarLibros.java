package cl.inacap.Odiseo.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cl.inacap.Odiseo.DAO.libroDAO;
import cl.inacap.Odiseo.DTO.Libro;

/**
 * Servlet implementation class ListarLibros
 */
@WebServlet("/ListarLibros.do")
public class ListarLibros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ListarLibros() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		libroDAO ld=new libroDAO();
		List<Libro> libroList=ld.getAllLibros();
		
		
		request.setAttribute("ListaLibros", libroList);
		
		request.getRequestDispatcher("site/listado.jsp");
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer Index= Integer.parseInt(request.getParameter("Id").toString());	
		new libroDAO().deleteLibro(Index);
	}

}
