<%-- 
    Document   : user-form
    Created on : 12 may 2023, 0:09:25
    Author     : natal
--%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script>
        function categorizarPeso() {
          var pesoInput = document.getElementById("peso");
          var peso = parseFloat(pesoInput.value);

          var categoriaInput = document.getElementById("categoria");
          var categoria = "";

          if (peso > 101) {
            categoria = "Heavyweight";
          } else if (peso >= 91 && peso <= 100) {
            categoria = "Light-Heavyweight";
          } else if (peso >= 82 && peso <= 90) {
            categoria = "Middleweight";
          } else if (peso >= 74 && peso <= 81) {
            categoria = "Light-Middleweight";
          } else if (peso >= 67 && peso <= 73) {
            categoria = "Lightweight";
          } else {
            categoria = "Flyweight";
          }

          categoriaInput.value = categoria;
        }
    </script>
    <script>
        function validarHorasExtra() {
            var horasExtra = document.getElementById("horasExtra").value;
            if (horasExtra > 5) {
                document.getElementById("horasExtra").value = 5;
            }
        }
    </script>
    <script>
        function gestionarEventos() {
            var plan = document.getElementById("plan").value;
            var eventosInput = document.getElementById("eventos");

            if (plan === "Principiante") {
                eventosInput.value = "0";
                eventosInput.disabled = false;
            } else {
                eventosInput.disabled = false;
                //eventosInput.value = "";
            }
        }
    </script>
</head>
<body>
    
  <!-- Barra de navegación -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Solo Crossfit</a>
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

    <div class="container">
        <h1 class="mt-5">Formulario</h1>
        <form action="insert" method="post">
            <div class="mb-3">
                <label for="nombre">Nombre del Usuario:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="mb-3">
                <label for="plan">Plan de Trabajo:</label>
                <select class="form-select" id="plan" name="plan" onchange="gestionarEventos()" required>
                    <option value="Nulo" disabled selected>Seleccione un plan</option>
                    <option value="Principiante">Principiante</option>
                    <option value="Intermedio">Intermedio</option>
                    <option value="Elite">Elite</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="peso">Peso Actual (kg):</label>
                <input type="number" class="form-control" id="peso" name="peso" oninput="categorizarPeso()" required>
            </div>
            <div class="mb-3">
                <label for="categoria">Categoría:</label>
                <select class="form-select" id="categoria" name="categoria" required readonly>
                    <option value="Heavyweight">Heavyweight - Por encima de 101 kg</option>
                    <option value="Light-Heavyweight">Light-Heavyweight - Entre 91 y 100 kg</option>
                    <option value="Middleweight">Middleweight - Entre 82 y 90 kg</option>
                    <option value="Light-Middleweight">Light-Middleweight - Entre 74 y 81 kg</option>
                    <option value="Lightweight">Lightweight - Entre 67 y 73 kg</option>
                    <option value="Flyweight">Flyweight - Hasta los 66 kg</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="eventos">Número de Eventos este Mes:</label>
                <input type="number" class="form-control" id="eventos" name="eventos" min="0" required>
            </div>
            <div class="mb-3">
                <label for="horasExtra">Horas Extra al Mes:</label>
                <input type="number" class="form-control" id="horasExtra" name="horasExtra" min="0" max="5" onchange="validarHorasExtra()" required>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>
    <br>
    ${alerta}

    <br>
    
    <div class="card" style="margin-left: 16%;margin-right: 16%;">
        <div class="card-header">
          Coste mensual
        </div>
        <div class="card-body">
            <p class="card-text">Coste del Plan de Entrenamiento Semanal: € ${costoPlan}</p>
            <p class="card-text">Coste de los Eventos Semanal: € ${costoEventos}</p>
            <p class="card-text">Coste de las Horas Extra Semanal: € ${costoHorasExtra}</p>
            <p class="card-text">Coste Mensual Total: € ${costoFinal}</p>
        </div>
    </div>

    <!-- Agregar enlaces a los archivos JavaScript de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>