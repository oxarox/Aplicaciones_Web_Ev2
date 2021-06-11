<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="cl.inacap.Odiseo.DTO.Libro"%>
<jsp:include page="Header.jsp" />
<!--  Le puse listado para que fuera mas facil identificar donde van las listas -->
 <body>
  <!-- Busqueda mediante escrito -->
<section class="buscador_tags">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="buscar">
					<input type="text" placeholder="¡Pruebe a buscar con la palabra 'Terror'!" required>
					<div class="btn">
						<i class="fas fa-compass"></i>
					</div>
				</div>		
			</div>
		</div>
	</div>
</section>
    <!-- Sección de los libros a describir-->
<section class="buscador_acordeon">
  <div class="resultados">
    <div class="accordion" id="acordeon_buscador">
<!-- 
      Título y género de cada libro
		Carta N°1 (El id del card-header tiene que ir cambiando según la cantidad de cartas y recordar cambiar el aria-labelledby sin #)
        <div class="card">
            <div class="card-header" id="cabeza1">
                <h5 class="mb-0">
                    <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#colapso1">Título del libro</button>
					<p class="genero">Ciencia ficción</p>                
				</h5>
            </div>
            Contenido de las cartas (Recordar también cambiar el id en conjunto con el data-target con #)
            <div id="colapso1" class="collapse" aria-labelledby="cabeza1" data-parent="#acordeon_buscador">
                <div class="card-body">
                    <p>Este libro trata sobre Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eius... <br>Páginas: 50 <br>Autor: Jhon Doe <br>Precio: 20.00$ <br> <a href="https://www.tutorialrepublic.com/html-tutorial/" target="_blank">¡Quiero saber más!</a></p>
                </div>
            </div>
        </div>
         -->
         <div class="row">
         	<div class="col-md-12">
         		<table class="table table-bordered table-striped" id="myTable">
         		<thead>
         		 <tr>
         		 	<th>Nombre</th>
         		 	<th>Autor</th>
         		 	<th>Paginas</th>
         		 	<th>Categoria</th>
         		 	<th>Portada</th>
         		 </tr>
         		</thead>
         		<tbody>
         		<% 
         		List<Libro> LLibros;
         		LLibros = (ArrayList<Libro>)request.getAttribute("ListaLibros");
         		%>
         		<!--<c:forEach items="LLibros" var="o" varStatus="ciclo">-->
         		<% for(Libro o:LLibros){ 
         		out.println(o.getNombreLibro());
         		
         		%>
         		<tr>
         			<td><%=o.getNombreLibro() %></td>
         			<td><%=o.getAutorLibro() %></td>
         			<td><%=o.getCantPaginas() %></td>
         			<td><%=o.isDestacado() %></td>
         			<td><%=o.getPortada() %></td>
         			<td><%=o.getCategoria() %></td>
         			<td class="text-center"><a class="btn btn-sm btn-success" href="EditPersona.do?Iden=${ciclo.index}">Editar persona</a></td>
                    <td class="text-center"><button class="btn btn-sm btn-danger" onclick="deleteLibro(${ciclo.index},'Nombre de Libro fila')">Eliminar Libro</button></td>
         		</tr>
         		<% }%>
         		<!--</c:forEach>-->
         		</tbody>
         		</table>
         	</div>
         </div>
    </div>
  </div>
</section>
 <jsp:include page="Footer.jsp"/>
 <script>
    $(document).ready(function (){
        $('#myTable').DataTable();
    });
    function deleteLibro(Index,NombreLibro){
        $.confirm({
            title: "Consulta",
            content: "Seguro de eliminar a "+NombreLibro,
            icon: 'fa fa-question-circle-o',
            theme: 'supervan',
            closeIcon: false,
            animation: 'scale',
            type: 'orange',
            buttons: {
                heyThere: {
                    text: 'Si', // text for button
                    btnClass: 'btn-blue', // class for the button
                    action: function(heyThereButton){
                    	var jsonSend={
                    		'Id':Index
                    	}
                    	$.ajax({
                    		type: "POST",
                    		url : "ListartPersonas.do",
                        	data: {"Id":Index,"Opc":1},
                        	success:function (obj){
                        		console.log(obj)		
                        		alert("Se elimino la persona")
                        		setTimeout("location.reload()",4000);
                        	}
                    	})
                    }
                },
                cancel: {
                    text: 'No', // text for button
                    btnClass: 'btn-blue', // class for the button
                    action: function(heyThereButton){
                        
                    }
                },
            }   
        });
    }
</script>
  </html>