package cl.inacap.Odiseo.DAO;

import java.io.BufferedReader;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import cl.inacap.Odiseo.DTO.Libro;

public class libroDAO {
	
	private static List<Libro> arrLibros= new ArrayList<Libro>();
	static List<Libro> listaLibroTxt = new ArrayList<Libro>();
	static List<Libro> listaLibroTxtDestacados = new ArrayList<Libro>();
	
	public void AddLibro(Libro p) {
		arrLibros.add(p);
	}
	
	public void addAllLibros(List<Libro> l) {
		arrLibros.addAll(l);
	}
	
	public List<Libro> getAllLibros() {

		return arrLibros;
	}
	
	public void deleteLibro(int id) {
		arrLibros.remove(id);
	}
	
	public Libro getLibrobyID(int id) {
		return arrLibros.get(id);
	}
	
	public void updateLibro(Libro p,int id) {
		arrLibros.set(id, p);
	}

	public static List<Libro> leerAllTxt() {
		Path archivo = Paths.get("E:\\\\Univerciadad\\\\2021 primer semetre\\\\Aplicaciones web\\\\Proyectos Web\\\\Eva1ComponentesWebOscarManuelGustavo\\\\Aplicaciones_Web_Ev2\\\\Fuentes\\\\src\\\\main\\\\webapp\\\\site\\\\texto\\\\LibrosGuardados.txt");
		try {
			BufferedReader buffer = Files.newBufferedReader(archivo);
			String cadena;
			while((cadena = buffer.readLine())!= null) {
				String [] stringLibros = cadena.split("/*--*/");
				for(int i = 0; i>cadena.length();i++) {
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
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return listaLibroTxt;
	}
	public static List<Libro> leerDestacadosTxt() {
		Path archivo = Paths.get("E:\\\\Univerciadad\\\\2021 primer semetre\\\\Aplicaciones web\\\\Proyectos Web\\\\Eva1ComponentesWebOscarManuelGustavo\\\\Aplicaciones_Web_Ev2\\\\Fuentes\\\\src\\\\main\\\\webapp\\\\site\\\\texto\\\\LibrosGuardados.txt");
		try {
			BufferedReader buffer = Files.newBufferedReader(archivo);
			String cadena;
			while((cadena = buffer.readLine())!= null) {
				String [] stringLibros = cadena.split("/*--*/");
				for(int i = 0; i>cadena.length();i++) {
					String [] sl = stringLibros[i].split("/--/");
					Libro l = new Libro();
					if(l.isDestacado()) {
						l.setNombreLibro(sl[1]);
						l.setAutorLibro(sl[2]);
						l.setCantPaginas(Integer.parseInt(sl[3]));
						l.setDestacado(true);
						l.setPortada(sl[5]);
						l.setCategoria(sl[6]);
						listaLibroTxtDestacados.add(l);						
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return listaLibroTxtDestacados;
	}
	
}
