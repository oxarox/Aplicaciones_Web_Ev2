<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Login usuario</title>
</head>

 <jsp:include page="Header.jsp" />
 


<body>

		<div class="container">
        <div class="row align-item-center justify-content-center" style="margin-top: 10%; margin-bottom:10%">
            <div class="col-md-4 col-centered ">
               
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h1>Login al sistema.</h1>
                        </div>

                    </div>
                    


                    <label for="nombreUsuario">
                        Usuario
                    </label>
                    <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario">

                    <br>

                    <label for="passUsuario">Password Usuario</label>
                    <input type="password" class="form-control" id="passUsuario" name="passUsuario">

                    <br>


                    <button type="button" class="btn btn-outline-success btn-block" onclick="LoginAcc()">Ingresar</button>

                
            
            </div>
            


           
        </div>

    </div>

	

 <jsp:include page="Footer.jsp" />


    <script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>



	<script>
	
		$(document).ready(function (){
			
		});
		
		function LoginAcc(){
			
			if( $("#nombreUsuario").val()== '' || $("#passUsuario").val()==''){
				
				alert("Favor de ingresar ambos datos")
				return 0;
				
			}else{
				//recordar que hay q asignar clave y usuario fijo
				
				var ObjSend={
						'nombreUsuario':$("#nombreUsuario").val(),
						'passUsuario':$("#passUsuario").val()
						
				}
				
				//se que a lo mejor ajax complica, pero queria
				//practicar lo que hizo el profe
				//me enrede para entenderlo la verdad jajaja
				
				$.ajax({
					type:"POST",
					data:ObjSend,
					url:"Login.do",// aqui tengo el problema no encuentra el login.do
					success:function(varObjBackend){
						//console.log(varObjBackend);
						if(varObjBackend==true){
							alert("Redireccionando")
							location.href="Home.do"
							
						}else{
							alert("Datos incorrectos")
						}
					}
				});

			}			
		}	

	</script>

</html>