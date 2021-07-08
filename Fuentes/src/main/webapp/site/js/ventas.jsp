<jsp:include page="Header.jsp"/>

<body>
<!--  TODO Mostrarse solo los que están disponibles para ventas en la página ventas -->

<section class="buscador_acordeon">
	<div class="resultados">
		<div class="accordion" id="acordeon_buscador">
			<div class="row">     
         		<div class="col-md-12">
         		<table class="table content-table" id="myTable">
         		
         		<thead>
         		 <tr>
         		 	<th>Nombre</th>
         		 	<th>ISBN</th>
         		 	<th>Idioma</th>
         		 	<th>Año de publiciación</th>
         		 	<th>Editorial</th>
         		 	<th>Autor</th>
         		 	<th>Precio Venta</th>
         		 	<th>Stock</th>
         		 	<th>IVA</th>
         		 	
         		 	
         		 </tr>
         		</thead>
         		
         		<tbody>
         		<!--  <c:forEach items="${ListaLibros}" var="o" varStatus="ciclo">
         		<tr>
         			<td>${o.Nombre }</td>
         			<td>${o.Autor }</td>
         			<td>${o.Paginas }</td>
         			<td>${o.Categoria }</td>
         			<td>${o.Portada }</td>
         			<td class="text-center"><a class="btn btn-sm btn-outline-success" href="EditPersona.do?Iden=${ciclo.index}"><i class="far fa-edit"></i></a></td>
                    <td class="text-center"><button class="btn btn-sm btn-outline-danger" onclick="deletePersona(${ciclo.index},'Nombre de persona fila')"><i class="fas fa-trash-alt"></i></button></td>
                        	
         		</tr>
         		</c:forEach>-->
         		</tbody>
         		
         		
         		</table>
         	
         	
         	
         	</div>
         
         
    </div>
		</div>
	</div>
</section>










</body>
<jsp:include page="Footer.jsp"/>
</html>