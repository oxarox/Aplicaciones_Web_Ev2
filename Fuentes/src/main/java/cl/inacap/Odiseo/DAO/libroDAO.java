package cl.inacap.Odiseo.DAO;

import java.util.ArrayList;
import java.util.List;

import cl.inacap.Odiseo.DTO.Libro;

public class libroDAO {
	
	private static List<Libro> arrLibros= new ArrayList<Libro>();
	
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

}
