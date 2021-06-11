package cl.inacap.Odiseo.DTO;

public class Libro {
	
	private String nombreLibro;
	private String autorLibro;
	private int cantPaginas;
	private boolean Destacado;
	private String portada;
	private String categoria;
	
	
	
	
	
	//Constructores
	
	
	public Libro(String nombreLibro, String autorLibro, int cantPaginas, boolean destacado, String portada,
			String categoria, int idLibro) {
		super();
		this.nombreLibro = nombreLibro;
		this.autorLibro = autorLibro;
		this.cantPaginas = cantPaginas;
		Destacado = destacado;
		this.portada = portada;
		this.categoria = categoria;
		this.idLibro = idLibro;
	}
	
	public Libro() {};
	
	
	
	//Geters y Setters

	
	private int idLibro;
	public int getIdLibro() {
		return idLibro;
	}
	public void setIdLibro(int idLibro) {
		this.idLibro = idLibro;
	}
	public String getNombreLibro() {
		return nombreLibro;
	}
	public void setNombreLibro(String nombreLibro) {
		this.nombreLibro = nombreLibro;
	}
	public String getAutorLibro() {
		return autorLibro;
	}
	public void setAutorLibro(String autorLibro) {
		this.autorLibro = autorLibro;
	}
	public int getCantPaginas() {
		return cantPaginas;
	}
	public void setCantPaginas(int cantPaginas) {
		this.cantPaginas = cantPaginas;
	}
	public boolean isDestacado() {
		return Destacado;
	}
	public void setDestacado(boolean destacado) {
		Destacado = destacado;
	}
	public String getPortada() {
		return portada;
	}
	public void setPortada(String portada) {
		this.portada = portada;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	
	

}
