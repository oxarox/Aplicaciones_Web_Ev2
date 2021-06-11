<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
        <div class="col-md-4">
          <div class="card-container mx-auto mt-5">
            <div class="card card-front">
              <img
                src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABC1BMVEX////3qpz/8+FcVnz/4q7/9OT/4qz3p5j3qJr3pZb/r575vrT8rZ3/9uT/4ar/+eZRUXpPUHr/6sX/7c//6cL+8/H/8dn6xbz/7tJXUXn72NL4sqX/8dp5b4T839r97On6y8P829WzhI3/5LNRSnT4t6toXH7tpZrhnpf7zr795+P6ycH6wbf4r6LTlpS7iY/Gj5GMb4Wheon818eAfJiCaYNyYYCTc4aDaoOnfYr+6Nf5tJ/90qmTkKe4tsXt7PDbsrLi0NI+SHj93s36uqH9xaX/+/OghZDEs560pZmnmJTiy6SSho7/6rHNx8SIg5ff2M+ln6na08z91bzOn6BwaozFxNDW1d5JQW9IuBIvAAAL2klEQVR4nO1di1bbSBJFyLFlWwQ5YEDAgIONzfAmyyNkIZ4h2Z3JMJnJzG4S/v9Lth+S3C1LJeCoLgev70lygjGor293VXVVP2ZmpphiiimmmGKK/2+0d1c7G0/dCEasbju1muc8dTPYsOrVHInaT/rrdoJNE7sWNkZ4rbFqozPCnsCyxr5G8zWQX3u77kTw3ivC9VzUHgwvhv1SzWnDCO46XkzQ8beG4pXl0Qt8qHVQBDdq5nMH1+KlAwBBQRFEcLduPbbx9ueZvVpOm8qF14EQbKc6pH981kD0UYkaZCSujdEJd0AEHW8PQHB5rEP6l/0GjCK/iLsZI25wc+yjGC6zM8wymo2zPoggQMTVTKN5eHOEErG2z8ww22j6fRdE0HHqvCJ2sv2ev3WzBRuJTU6C7bzHDsIWiKDop5uMDLNHoYB/0nqD8hisIuZGn/5hKxiAGHKKuFHPfarfDy4mYCSu5T/V3woCWOxW5xJxM19CgVZ4ghLRWWNiOB6RGmhchC2ciLs8DOlZ7k7LPYOZ020ehrm+QsE/d1uHsNiNKYlJMzxuhWcwc8okYk7MFqMPFLHOI2I6f2HDvwzcc5g5PWBhOLNHUhwEbgs2Fa7zpIdpERsnrovLZzCJuE9SPGwBRaytsjDcpM1pX4j43EdikxJROAw3wOUzeETcJWNTxxUiggiyiUjML7TDaD13EYk5oqMcBlBEpkINKaJ0GEAROywM6fhbOAzXhZlTppIp+ciGcBjBEcrtM4lIxt/SYQBHIpOI9AzDdZE+kafaRmYz/C2sOWURsU07DBdpTpmqbfsFKSmkOeUp1NDx904A9Yk8Im5T8XfjzEWKyJPjzyp1J/Cl1wf6RJ6SKR269aFTDB4RX5MiHrWQPpGpUEM/1IWKyFOoIePvxqU0p7gVKCzp4dx6t8JAukQXlnarsRRqOqTDkF4fKCLLSKRTpztymohLu/GISKZOldd/7iORDN2U1wdWMXgKNdvUI/1zqIg8dW8ydarm+s9eRDJ0c2Tohqsn8ohIh25yru+e43wiS7WNXLog5/rPXkQ6dHsjRYRV9p06R46/IHSTtibAichSqCG3WTROROgGXCjFUqihs24qdMMtlHJYttHRBdO3rhQRZ045RCQX8/mH0ta0YOtOnQOOzCKZdVOhW3iBE7HDwHCDLtNIEXGLh3kKNXTVW4Zu4RucOe0wMCzOurkuTkSWQg35RF8mbALYXgyevW1k6Kbjb9yGGhYR22SZRsXfz11EumCq4u8Qt3aBY29bgYghtGLKUzK9R8EUl1hkGYlkrU3H3wEuJ+VxVNvuUTDF5aRYCjVk6BZNonAzYZYcP5mw8ZWIuHQGS46f9vqH4Jkwi4jkE9UkysXNhFlELFjrBp4JcxRq6KybngnDttHy7G2jQ7dj8CTKYRBxk95rouLvS6A5ZSjU0Fk3PROGEWQRsWCbQh8bf7OISHt9PRPG2RqOQg29TUEtIgLWhFlKprSIlwE2/uYo1NDbFAYBthLFUTKlvT66nMgiIrlMKionAitRDIUaOmGjclIh7PAMh0VE0uur9d/QIgaDiPTBGb7MSQXA+JujZEombCIRUewclkINHbqpxCJudbTDskGRXiYFXpPJIiJZa9OrM5ChG0fJtPCEF6zXZxCRPhzEVyICvT6HiPTmRGlOgetPWKptZMImEhHo9Rn2ttHLpLSISK/PsLeNDt0ab8EJG4ZqG11rU+YUWPVm2dtGh25KROBmb2FsSq+20bU2JSLU6zOISHt9tWIR6fUZSqYF57qpfcJIr89QqKHPL5ciAhcsOhwi0gkbPRKRXr98EemEjTKnwSVSxPJLpnTopqcYIHIK5YtI19rUPBE612cQkfb6SkRkhp+hUFMQuskpBnCFjcNRqKETNnKKAdxrIlF6ephO2OgTs5AOg6FkWvDAQQta13cYRiIduuncKZRh6dU2utamRMTmFcsfifRpro5/gTyxVqL0Qk1B6CbXuCNLwhIlMyxI2MiiMLSayCBiwQobtcYd6jDKF7HA6zcuA2hKikHEghU2jhOAHUb5Of6C6+b8rQAbnJZfqCnw+nKhFOyygQgli9guEvEIeO2HQukiFhzE7zj9ALf9UqHsQk2R1/ePW9D0N0O1jT7DXR5eBw5OSx+J9AobtRcDmv5m2NtWkLBx/DNs0bv8DYpFoZuzg7vsS6P0Qk1B6CbvMwMPxLLNaUHCRooItjWlb4squim4cYGdCJd/HGih13du0LamZBGLvL6YRWEnwuXn+AvKNAJ98ES4dBGLHIa/Ba3SOOXvbStI2Aic+JmXznvGRfIC5TEsu9pGH//tyAD8p9l3CT5o/EPixwjL+wLNZnNbY03iQCBpsoD5cdRq1lfRK6PXyhYxJ3TzPP+fArJ5R7Mm5lKYT8H41uiH3o19RvpDkljtaOwtC6iPquToNGuFjed9vKpEuPrX4MPc7H3wIhOpN6U/IPUhqX/LpWVi3Ot7HyvVygjV9Vwq8qv19aWllZWVBYlXBtQLKxJLS+vr4z+X/qV8DMcSNt7V54qFuYSXJLS0IogsLna7XUG++jKC/E81hfj16A3iUxM/tLgoyEvSMeWI4b/5GI6tq72y+VUXdSNWXi12K7rBqv2VR2HEX/IVdBdWdBdhJJhaYeNdpdr+ciH+mNfXhXxCvIRn5bE8Y6rq91S6iwtLnBLaoZv3MdVFKy+tYRh1LNlXF3Rf7cbCjPXSccTqd7uRfrKzqt/ISdAO3fxf0gwrWXYhbTdMc2PZG8PsZNgchJ2RMLy+f3nzq00xHob3QrbDICxoDNZOOmN4fXmaYj9vGD6I0/0/FfVbmAkaK2z6rtv7ZIloeUPbDepuqbvhoobRK2WnXF/P6ZVgCZOETXSCRNck2H0Rk9OuUFmXz9XP6o/6m29StGOJ3KAwLCPLkiLLTjD2+uoCE7f3myFi9ZVuy/qC8IaRk7j9YYRP3THLlOcaqgnfyA0mRNk76Uy8wkatS3TdO0PE6pLRQWdntYq3d2GMXvjpod4/oSsc4asFoeoc0xXJFlTCRl3uIc9y+T3RJemk1lic/6PnJuj1b0c+8QGoxEHcwge2G+cNqBU2+uQv2ejbdCdNYf7P0DU4/jGvPaJpexYzMDJCOi7VQ3KuyXQvlA21wqYfNXkk4sv0vEJjzhRRUPySzK9oj5hpUt95XNfsWZBef5AI07uNhtZ4J42ImBq64el89tvug7kfPa67Em00Pb3bWTf5By1iNc/dv3At9B7o4S3ICSrT1bMWdusGQ/fuVy1iXqu+hDbDL4/mN/dBpvuYrmO3seYZDN3+53w7I5r1d89m+GiCs/P6shGEw9iomwxV7FbNbdZf9jj88/Hj8J3O2CIcxszBIDCb3c2XcHbuqy3h3/fLVWVgPqq1QxzGqme1WsRuWYkxlRyznUV4nU4p5iPOrCUZx2TiBnAY7ca5pUz3P0lOM8n+RvhqG5qmzHI2R0nhEdZiHIwwltvTIvJcc22jc2E0PDzxdXa6ZueoZYr6sGXya+2UUtlgucckhbbZcmJVWxLd6TeWVCbmOONsDPv9UcOJ4q8lYausRZpMVyXa2DxO2i66npezkEFtNI0RlLdZkefm2RS234ZJw2u7ObuGTbdZ5oJ3iMPYGPRV84NzvQUiS0V9znkidWkEWU6sGceac9IS+OVA31/U9MbhmH30spHxjseC5c6kNDa9xuDweKcReadOcxz/Ne1Mxvfvj/30C4huOrN5ILxffZsow16PnGZ4imhS6Xi91yHLzEZIGl6jGgWFGfc8Tw2LYAXdw6duDQdMhr33T90aDlgafn3q1nDAmvz2vj11cxhwbc8Nn7o5DPgeddNwckeinuD3TzXFcALN6beedvaa6UT6RKme6J3DfjipxmbY0+NvGIaT2k/f93RIOlQddSL7qWCmfP3wtDeh9nQYxn3zujeh4en7XvhX8r/J7KenYRySyp46mf105CXef+3dfX/KxvDg250xr/h2OolD8frOcvUTyHDmdBLnFRaG4QTaFxvD3iR2TQvfJzObaOL7xIs4xRRTTDHFFFMA8D9TGYsgSa61iQAAAABJRU5ErkJggg==">
              <div class="card-body">
                <h5 class="card-title">Título del libro</h5>
                <p class="card-text"><i>"Cita de algún autor avalando este libro"</i><br> Nombre del autor prostituído.</p>
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
        <div class="col-md-4">
          <div class="card-container mx-auto mt-5">
            <div class="card card-front">
              <img
                src="data:image/png;base64,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">
              <div class="card-body">
                <h5 class="card-title">Título del libro</h5>
                <p class="card-text"><i>"Cita de algún autor avalando este libro"</i><br> Nombre del autor prostituído.</p>
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
        <div class="col-md-4">
          <div class="card-container mx-auto mt-5">
            <div class="card card-front">
              <img
                src="data:image/png;base64,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">
              <div class="card-body">
                <h5 class="card-title">Título del libro</h5>
                <p class="card-text"><i>"Cita de algún autor avalando este libro"</i><br> Nombre del autor prostituído.</p>
              </div>
            </div>
            <div class="card card-back">
              <div class="card-body">
                <p class="card-text">No se me ocurre que poner aquí a si que su Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                  exercitation
                  ullamco laboris nisi ut aliquip ex .</p>
                <a href="#" class="btn btn-primary">¡Quiero ver más!</a>
              </div>
            </div>
          </div>
        </div>
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