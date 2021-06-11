<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="cl.inacap.Odiseo.DTO.Libro"%>

<jsp:include page="Header.jsp"/>


 <!--  El index de gustavo es la pagina home, por eso lo nombre asi -->

<!-- Sección con los destacados-->

<section class="bienvenida">
    <div class="container-fluid">
      <div class="row align-item-center justify-content-center">
        <div class="col-md-10">
          <h1>¡Bienvendidos al antro del conocimiento!</h1>
          <p>Aquí encontrarás los mejores títulos para el deleite de la mente humana. <br><i class="fa fa-hand-o-down"></i></p>
        </div>
      </div>
    </div>
  </section>

<section class="intermedio">
    <div class="container-fluid">
      <div class="row align-item-center justify-content-center">
        <div class="col-md-10">
          <h1>¡Te presentamos ofertas en varios géneros que pueden que te gusten!</h1>
        </div>
      </div>
    </div>
</section>
  <section class="destacados">

    <!-- Un espacio con un div diciendo destacados-->
    
	
    <!--Carrusel de las tarjetas-->
    <div class="container" style="height: 15%; margin-top:50px; margin-bottom:50px">


    <div id="carrusel_destacados" class="carousel  slide" data-bs-ride="carousel" data-pause="hover">


      <!--Indicadores de la página de cada sección del carrusel-->
      <ol class="carousel-indicators">
        <li data-target="#carrusel_destacados" data-slide-to="0" class="active"></li>
        <li data-target="#carrusel_destacados" data-slide-to="1"></li>
        <li data-target="#carrusel_destacados" data-slide-to="2"></li>
        <li data-target="#carrusel_destacados" data-slide-to="3"></li>
        <li data-target="#carrusel_destacados" data-slide-to="4"></li>
      </ol>

      <!--Secciones de cada carrusel-->

      <div class="carousel-inner">
        <div class="carousel-item active ">
          <img src="https://fondosmil.com/fondo/21488.jpg" class="d-block w-100" alt="..." height="18%" width="100%">
          <div class="carousel-caption d-none d-md-block">
            <h5><i>Fantasía</i></h5>

          </div>
        </div>
        <div class="carousel-item">
          <img  src="https://i.pinimg.com/originals/63/fb/c9/63fbc9ec21a65be5a5e5a521953dcae1.jpg" class="d-block w-100" alt="..." height="100%" width="18%">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="color: black"><i>Horror</i></h5>
          </div>
        </div>
        <div class="carousel-item ">
          <img src="https://www.caracteristicas.co/wp-content/uploads/2016/09/ciencias-sociales-e1559699629114.jpg" class="d-block w-100" alt="..." height="18%" width="100%">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="color: white"><i>Ciencias Sociales</i></h5>
          </div>
        </div>
        <div class="carousel-item ">
          <img src="https://images5.alphacoders.com/105/1051727.jpg" class="d-block w-100" alt="..." height="18%" width="100%">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="color: white"><i>Ciencia Ficción</i></h5>
          </div>
        </div>
        <div class="carousel-item ">
          <img src="https://i.kym-cdn.com/entries/icons/original/000/016/546/hidethepainharold.jpg" class="d-block w-100" alt="..." height="18%" width="100%">
          <div class="carousel-caption d-none d-md-block">
            <h5 style="color: black"><i>Auto Ayuda</i></h5>
          </div>
        </div>
      </div>

      <!-- Botones del carrusel-->
      
      <a class="carousel-control-prev" href="#carrusel_destacados" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carrusel_destacados" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>

    <section class="intermedio">
	    <div class="container-fluid">
	      <div class="row align-item-center justify-content-center">
	        <div class="col-md-10">
	          <h1>¡He aquí nuestros libros mas destacados por nuestra comunidad de lectores!</h1>
	        </div>
	      </div>
	    </div>
	</section>

    <!-- Conjunto de las cartas -->
    
    <div class="cartas_destacadas" style="align-items:auto">
	    <div class="container">
	      <div class="row align-items-center">
	   		<% 
				List<Libro> LLibros = new ArrayList();
	   			LLibros.clear();
				LLibros = (ArrayList<Libro>)request.getAttribute("ListaLibros");
				for(Libro o:LLibros){
			%>
	      <div class="col-md-3">
	          <div class="card-container mx-auto mt-5">
	            <div class="card card-front">
	              <img src=<%=o.getPortada()%> width="256" height="256" />
	              <div class="card-body">
	                <h5 class="card-title"><%=o.getNombreLibro() %></h5>
	                <p class="card-text"><i><%=o.getCategoria() %></i><br> <%=o.getAutorLibro() %></p>
	              </div>
	          	 </div>
	            <div class="card card-back">
	              <div class="card-body">
	                <p class="card-text">No se me ocurre que poner aquí a si que su Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
	                  exercitation
	                  ullamco laboris nisi ut aliquip ex...</p>
	                <a href="#" class="btn btn-primary">¡Quiero ver más!</a>
	              </div>
	            </div>
	          </div>
	        </div>  
	      <% } %>
	      </div>
	    </div>
    </div>    
  </section>
 <section class="intermedio">
	    <div class="container-fluid">
	      <div class="row align-item-center justify-content-center">
	        <div class="col-md-10">
	          <h1>¡Te invitamos a seguirnos en nuestras redes sociales!</h1>
	          <p> y si no tienes, me gustaría saber donde has vivido estos últimos años ¡Déjalo en los comentarios!</p>
	        </div>
	      </div>
	    </div>
	</section>
    
    
 <!-- Voy a poner aquí algunos comentarios tipo default con un buen diseño pero un poco más tarde que ahora me estoy durmiendo en el teclado -->
 
 
 
 
 <jsp:include page="Footer.jsp"/>
 
  </html>