<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Pugbet - Registrazione </title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
            <a href="/">
			<img src="https://www.sunny.pet/wp-content/uploads/2017/03/casa-azul.png" style="width:3rem"></a>
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Crea un Account!</h1>
              </div>
              
				<form class="user" method="post" action="/reg">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="nome" placeholder="Nome" name="nome" 
                    autocomplete="on" required pattern="[A-Za-z\s]*" title="Nome composto da lettere maiuscole e minuscole.">
                  </div>
                  <div class="col-sm-6">
                    <input type="text"class="form-control form-control-user" id="cognome" placeholder="Cognome" name="cognome" 
                    autocomplete="on" required pattern="[A-Za-z\s]*" title="Cognome composto da lettere maiuscole e minuscole.">
                  </div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" id="email" placeholder="Email" name="email" required>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="psswrd" required>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="password2" placeholder="Ripeti Password" name="psswrd2" required>
                  </div>
                  <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck" required>
                        <label class="custom-control-label" for="customCheck"> Attesto di essere maggiorenne. </label>
                      </div>
                    </div>
                  </div>
                 <input type="submit" value="Registra Account" class="btn btn-primary btn-user btn-block">	
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="/login"> Hai un account? Accedi! </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
	</div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>