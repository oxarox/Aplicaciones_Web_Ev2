package cl.inacap.Odiseo.Controllers;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import cl.Inacap.FormLogin.Controllers.Funciones;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //levantar vista login.jsp
		
    	request.getRequestDispatcher("site/js/Login.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String Usuario= request.getParameter("nombreUsuario").toString();
		
		//encriptado aca !!
		
		Funciones fn=new Funciones();
		String Pass = fn.EncriptarMd5(request.getParameter("passUsuario").toString());
		
		PrintWriter out = response.getWriter();
		
		if(Usuario.equals("root") && Pass.equals("63a9f0ea7bb98050796b649e85481845")) {
		
			HttpSession session=request.getSession(true);	 
			session.setAttribute("SessionActiva", "1");
			
			
		    out.println(1);
			
				
			
		
		}else {
			
			 out.println(0);
			
			
		}
		 
		

	}

}
