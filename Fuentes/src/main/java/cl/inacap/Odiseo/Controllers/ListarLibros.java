package cl.inacap.Odiseo.Controllers;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
 * Servlet implementation class ListarLibros
 */
@WebServlet("/ListarLibros.do")
public class ListarLibros extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Libro> listaLibroTxt = new ArrayList<Libro>();
    public ListarLibros() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		//out.println("hola mundo");
		
		HttpSession sessionValida= request.getSession(true);
		listaLibroTxt.clear();
		libroDAO ldao = new libroDAO();
		listaLibroTxt.addAll(ldao.leerAllTxt());
		request.setAttribute("ListaLibros", listaLibroTxt);
		request.getRequestDispatcher("/site/js/listado.jsp").forward(request, response);
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
