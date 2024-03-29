<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Pugbet - Ricarica Saldo</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block "><img src="https://media.giphy.com/media/12pJ8OxSWwO86Y/giphy.gif"></div>
              <div class="col-lg-6">
                <div class="p-5">
                   <a href="/">
				<img src="https://www.sunny.pet/wp-content/uploads/2017/03/casa-azul.png" style="width:3rem"></a>
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"> Ricarica Saldo </h1>
                  </div>
                  <p>Il tuo saldo al momento è di: ${utente.saldo } euro</p>
                  <form method="get" action="/ricarica">
                    <div class="form-group">
                      <input type="number" class="form-control form-control-user" name="saldo" placeholder="Inserisci l' importo...">
                    </div>
                    <input type="submit" value="Ricarica" class="btn btn-primary btn-user btn-block">
                    
                  </form>
                  <hr>
                </div>
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
