package cl.inacap.Odiseo.Controllers;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
		
		List<Libro> listaLibroTxt = new ArrayList<Libro>();
		
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
		
		
		ld.addAllLibros(listaLibroTxt);

	}
		
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
