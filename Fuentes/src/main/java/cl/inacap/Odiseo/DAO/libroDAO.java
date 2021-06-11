package cl.inacap.Odiseo.DAO;

import java.io.BufferedReader;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

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
		return listaLibroTxt.get(id);
	}
	
	public void updateLibro(Libro p,int id) {
		arrLibros.set(id, p);
	}

	public static List<Libro> leerAllTxt() {
		Path archivo = Paths.get("D:\\manuel\\GitRepository\\Aplicaciones_Web_Ev2\\Fuentes\\src\\main\\webapp\\site\\texto\\LibrosGuardados.txt");
		try {
			BufferedReader buffer = Files.newBufferedReader(archivo);
			String cadena;
			while((cadena = buffer.readLine())!= null) {
				String [] stringLibros = cadena.split("/--/");
				Libro l = new Libro();
				l.setNombreLibro(stringLibros[0]);
				l.setAutorLibro(stringLibros[1]);
				l.setCantPaginas(Integer.parseInt(stringLibros[2]));
				if(stringLibros[3].equals("true")) {
					l.setDestacado(true);
				}else {
					l.setDestacado(false);
				}
				l.setPortada(stringLibros[4]);
				l.setCategoria(stringLibros[5]);
				listaLibroTxt.add(l);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return listaLibroTxt;
	}
	public static List<Libro> leerDestacadosTxt() {
		Path archivo = Paths.get("D:\\manuel\\GitRepository\\Aplicaciones_Web_Ev2\\Fuentes\\src\\main\\webapp\\site\\texto\\LibrosGuardados.txt");
		try {
			BufferedReader buffer = Files.newBufferedReader(archivo);
			String cadena;
			while((cadena = buffer.readLine())!= null) {
				String [] stringLibros = cadena.split("/--/");
				Libro l = new Libro();
				if(stringLibros[3].equals("true")) {
					l.setNombreLibro(stringLibros[0]);
					l.setAutorLibro(stringLibros[1]);
					l.setCantPaginas(Integer.parseInt(stringLibros[2]));	
					l.setDestacado(true);
					l.setPortada(stringLibros[4]);
					l.setCategoria(stringLibros[5]);
					listaLibroTxtDestacados.add(l);					
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return listaLibroTxtDestacados;
	}
}
