<%-- 
    Document   : index
    Created on : 12 may 2023, 13:25:51
    Author     : Tecnicos
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Solo Crossfit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
  <!-- Barra de navegación -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="#">Solo Crossfit</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="user-form.jsp">Contratar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://solocrossfit.com/contacto/">Contacto</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

      <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h1 class="display-4">¡Entrena. Supérate. Inspírate!</h1>
            <p class="lead">Descubre el poder del Crossfit en Solo Crossfit. ¡Únete a nuestra comunidad hoy mismo!</p>
            <a href="user-form.jsp" class="btn btn-primary btn-lg">¡Comienza ahora!</a>
          </div>
        </div>
      </div>
    </div>
  
  <!-- Sección de Precios -->
  <section id="precios" class="py-5 bg-light">
    <div class="container">
      <h2 class="text-center">Precios</h2>
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="card-title">Entrenamientos</h5>
              <p class="card-text">El costo de los entrenamientos es de €25 por sesión.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="card-title">Competiciones</h5>
              <p class="card-text">El costo de las competiciones es de €22 por evento.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="card-title">Horas Extra</h5>
              <p class="card-text">El costo de las horas extra es de €9.50 por hora.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Sección de Contacto -->
  <section id="contacto" class="py-5 bg-light">
    <div class="container">
      <h2 class="text-center">Contacto</h2>
      <!-- Contenido dela sección de contacto -->
        <p>Conctacta con nosotros a través de nuestro correo: info@solocrossfit.com</p>
        <p>O a través de nuestros teléfono gratuito: 686 705 701</p>
    </div>
  </section>
  <!-- Scripts de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
