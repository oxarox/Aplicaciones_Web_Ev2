<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<jsp:include page="Header.jsp" />

<!--  Le puse listado para que fuera mas facil identificar donde van las listas -->

 <body>
 
 
  <!-- Busqueda mediante escrito -->

 <section class="buscador_tags">
	<div class="container">
		<div class="buscar">
			<input type="text" placeholder="¡Pruebe a buscar con la palabra 'Terror'!" required>
		<div class="btn">
			<i class="fas fa-compass"></i>
		</div>
	</div>



</div>
</section>



    <!-- Sección de los libros a describir-->


    
<section class="buscador_acordeon">


  <div class="resultados">
    <div class="accordion" id="acordeon_buscador">

      <!--Título y género de cada libro-->


		<!-- Carta N°1 (El id del card-header tiene que ir cambiando según la cantidad de cartas y recordar cambiar el aria-labelledby sin #) -->
        <div class="card">
            <div class="card-header" id="cabeza1">
                <h5 class="mb-0">
                    <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#colapso1">Título del libro</button>
					<p class="genero">Ciencia ficción</p>                
				</h5>
            </div>
            
            <!--Contenido de las cartas (Recordar también cambiar el id en conjunto con el data-target con #) -->
            <div id="colapso1" class="collapse" aria-labelledby="cabeza1" data-parent="#acordeon_buscador">
                <div class="card-body">
                    <p>Este libro trata sobre Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius... <br>Páginas: 50 <br>Autor: Jhon Doe <br>Precio: 20.00$ <br> <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">¡Quiero saber más!</a></p>
                </div>
            </div>
        </div>
        
        <!-- Carta N°2 -->
        <div class="card">
            <div class="card-header" id="cabeza2">
                <h5 class="mb-0">
                    <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#colapso2">Título del libro</button>
					<p class="genero">Ciencia ficción</p>                
				</h5>
            </div>
            
            <!--Contenido de las cartas (Recordar también cambiar el id en conjunto con el data-target con #) -->
            <div id="colapso2" class="collapse" aria-labelledby="cabeza2" data-parent="#acordeon_buscador">
                <div class="card-body">
                    <p>Este libro trata sobre Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius... <br>Páginas: 50 <br>Autor: Jhon Doe <br>Precio: 20.00$ <br> <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">¡Quiero saber más!</a></p>
                </div>
            </div>
        </div>
        

    </div>
  </div>
</section>

   

 
 
 
 
 


 <jsp:include page="Footer.jsp"/>
