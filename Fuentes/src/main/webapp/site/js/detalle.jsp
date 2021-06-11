<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cl.inacap.Odiseo.DTO.Libro"%>

<jsp:include page="Header.jsp"/>


	

<div class="row">
         
         	<div class="col-md-12">
         		<table class="table content-table" id="myTable">
         		
         		<thead>
         		 <tr>
         		 	<th>Nombre</th>
         		 	<th>Autor</th>
         		 	<th>Paginas</th>
         		 	<th>Categoria</th>
         		 	<th>Portada</th>
         		 	<th>Detalle</th>
         		 	<th>Editar Libro</th>
         		 	<th>Eliminar Libro</th>
         		 
         		 </tr>
         		</thead>
         		
         		<tbody>
         		<tr> 
         		<%
         		Libro l = (Libro)request.getAttribute("Libro");
         		
         		
         		%>
         		
         		<td><%=l.getNombreLibro() %></td>
         		<td><%=l.getAutorLibro() %></td>
         		<td><%=l.getCantPaginas() %></td>
         		<td><%=l.getCategoria() %></td>
         		<td><img src=<%=l.getPortada()%> width="256" height="256" /></td>
         		
         		
         		</tr>
         	</tbody>
         </table>
        </div>
       </div>








<jsp:include page="Footer.jsp"/>
 
  </html>