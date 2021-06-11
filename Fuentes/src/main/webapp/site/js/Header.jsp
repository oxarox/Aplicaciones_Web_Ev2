<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">

 	<title> Odiseo </title>
  
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  
 	<link rel="stylesheet" href="site/Html/css/styles.css">
  
  	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	
	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;1,400;1,500&display=swap" rel="stylesheet">
	
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
  
  </head>


 <header>
    <!-- Sección del Navigation Bar con las opciones a trabajar para cada página-->

    <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color:#00C851">

      <!--Logo de la marca-->
      <div class="container">
        <a class="navbar-brand" href="#">
        	Odiseo 
          <i class="far fa-compass text-white mr-4"></i>
        </a>
      </div>


      <!-- Botón collapsable-->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#barra_buscadora" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>




      <div class="collapse navbar-collapse" id="barra_buscadora">

        <!--Opciones de la barra buscadora-->
        <ul class="navbar-nav ml-auto ">

          <li class="navbar-item">
            <a href="Home.do" class="nav-link">Home</a>
          </li>

          <li class="navbar-item">
            <a href="ListarLibros.do" class="nav-link">Listado</a>
          </li>

          <!-- Esta wea sera perfil , login se utilizara para ver la pagina-->
          <li class="navbar-item">
            <a href="Perfil.do" class="nav-link">Perfil</a>
          </li>

        </ul>
      </div>
    </nav>

  
  </header>
  <body>