package cl.inacap.Odiseo.Controllers;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
	

    /**
     * Default constructor. 
     */
    public Home() {
  
    	super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessionValida= request.getSession(true);
		
		List<Libro> listaLibroTxt = new ArrayList<Libro>();
		List<Libro> listaDestacados = new ArrayList<Libro>();
		libroDAO ld=new libroDAO();
		
		//leer el archivo de Txt para traer los lisbros guadados de en una lista
		FileReader archivo = new FileReader("/site/texto/LibroGuardados.txt");
		String cadena = new BufferedReader(archivo).readLine();
		
		//General una lista para almacenar los libros
		String [] stringLibros = cadena.split("/*--*/");
		
		for(int i = 0;i<=cadena.length();i++) {
			String [] sl = stringLibros[i].split("/--/");
			Libro l = new Libro();
			l.setNombreLibro(sl[1]);
			l.setAutorLibro(sl[2]);
			l.setCantPaginas(Integer.parseInt(sl[3]));
			if(sl[4].equals("true")) {
				l.setDestacado(true);
			}else {
				l.setDestacado(false);
			}
			l.setPortada(sl[5]);
			l.setCategoria(sl[6]);
			listaLibroTxt.add(l);
		}
		
		//filtrar los libros para enviar los libros destacados
		for(Libro detalle:listaLibroTxt) {
			if(detalle.isDestacado()){
				listaDestacados.add(detalle);
			}
		}
		
		//mostar los libros destacados en el index
		ld.addAllLibros(listaDestacados);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
