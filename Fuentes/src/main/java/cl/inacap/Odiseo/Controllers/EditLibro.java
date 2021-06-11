package cl.inacap.Odiseo.Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.Odiseo.DAO.libroDAO;
import cl.inacap.Odiseo.DTO.Libro;

/**
 * Servlet implementation class EditLibro
 */
@WebServlet("/EditLibro.do")
public class EditLibro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditLibro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		libroDAO ld= new libroDAO();
		
		int Iden=Integer.parseInt(request.getParameter("Iden"));
		
		request.setAttribute("Libro", ld.getLibrobyID(Iden));
		request.setAttribute("IdentificadorLibro", Iden);
		
		request.getRequestDispatcher("Home.do").forward(request, response);
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String nombre=request.getParameter("nombre").toString();
		String autor=request.getParameter("autor").toString();
		int paginas=Integer.parseInt(request.getParameter("paginas").toString());
		String categoria=request.getParameter("categoria").toString();
		String portada=request.getParameter("portada").toString();
		int index=Integer.parseInt(request.getParameter("index").toString());
		
		Libro l=new Libro();
		l.setNombreLibro(nombre);
		l.setAutorLibro(autor);
		l.setCantPaginas(paginas);
		l.setCategoria(categoria);
		l.setPortada(portada);
		
		libroDAO ldao=new libroDAO();
		ldao.updateLibro(l, index);
		
		response.sendRedirect("ListarLibros.do");
		
		PrintWriter out=response.getWriter();
		out.println("Servlet para editar libro");
		
		
	}

}
