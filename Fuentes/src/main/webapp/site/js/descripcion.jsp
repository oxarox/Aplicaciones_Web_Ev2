<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <jsp:include page="Header.jsp"/>
    
    <section class="descripciones">
    <!-- Sección de los libros a describir-->

<!-- TODO Hacer la muestra de la imagen dentro del descriptor del libro (Detalles finales) -->
<!-- Ingresar un label, con boton de compra y la cantidad de compra que tiene el libro para que redirija hacia la página de ventas.
	 Agregar un checkBox si quiere tener boleta o factura -->
   <div class="container">
    <div class="card-descriptor">
      <div class="card-header">
        <h3>Título</h3>
        <p class="genero">Fantasía</p>
      </div>
      <div class="card-body">
        <h3 class="card-title"></h3>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	       	
	       	<div class="row">
		       	<div class = "col-6">
			       	 <h5>Páginas:55  <br>Autor: Jhon Doe <br>Precio:20.000$ <br> Calificación: </h5>
			       	 <p>¿Ya te has leído este título? ¡Te invitamos a que lo <a href="#" class="btn btn-outline-success" style="margin:bottom">Valores</a>!</p>
				</div>
				<div class = "col-4">
					<h5>¿Cuantos libros deseas comprar?</h5>
					<div class="row">
						<div class ="col-4">
						</div>
						<div class = "col-4">
							<input type="number" id="Stack" name="Stock" min="0" max="10">
						</div>
					</div>
					<!-- Boton desplegable -->
					<h5>¿Desea con factura su compra?</h5>
					<div class="row">
						<div class ="col-4">
						</div>
						<div class = "col-4" style = "margin-left:9px">
							<label><input type="checkbox" id="cbox1" value="first_checkbox"> Si!</label>
						</div>
					</div>
					<a href="#" class="btn btn-outline-success" style="margin-left:77px">Comprar!</a>
					
				</div>
			</div>	      
      </div>
    </div>
   </div>
  </section>
  
  
  
  
  
  <jsp:include page="Footer.jsp"/> 
  
   </html>