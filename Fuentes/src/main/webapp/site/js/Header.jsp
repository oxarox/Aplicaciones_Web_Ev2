<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title> Odiseo </title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styles.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
  
  </head>


 <header>
  <section id="logo"><!-- Recordar hacer la letra más pequeña y definir los marcos para que no haya espacio por el h1. Que la letra sea responsiva-->
    <h1 >Conocimiento para cada día con Odiseo</h1>
  </section>

  <section>
    <!-- Sección del Navigation Bar con las opciones a trabajar para cada página-->

    <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color:#537791">

      <!--Logo de la marca-->
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="" alt="" width="30" height="24">
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
            <a href="home.jsp" class="nav-link">Home</a>
          </li>

          <li class="navbar-item">
            <a href="listado.jsp" class="nav-link">Buscador</a>
          </li>

          <!-- Recordar hacer este item como un collapsable-->
          <li class="navbar-item">
            <a href="Login.jsp" class="nav-link">Login</a>
          </li>

        </ul>
      </div>
    </nav>
  </section>
  
  </header>
  <body>