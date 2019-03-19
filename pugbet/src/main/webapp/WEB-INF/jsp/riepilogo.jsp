<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>



  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Pugbet - Homepage</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <h2 class="sidebar-brand d-flex align-items-center justify-content-center">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-paw"></i>
        </div>
        <div class="sidebar-brand-text mx-3"><a class="nav-link text-gray-100" href="/">PUGBET </a></div>
        </h2>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Accedi -->
      <!-- <li class="nav-item">
        <a class="nav-link" href="/">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Home</span></a>
      </li> -->
      
      
    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <c:if test="${not empty utente}">
            <!-- Nav Item - User Information -->
    	  		<li class="nav-item dropdown ">
     				<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           				<span class="mr-2 d-none d-lg-inline text-gray-600 small">${utente.nome } ${utente.cognome}</span>  
           				<img class="rounded-circle" height="32" width="40" src="https://cms-assets.tutsplus.com/uploads/users/127/posts/29412/preview_image/preview.png">    
           				             
        			</a>
        			<div class="dropdown-menu dropdown-menu-right animated--grow-in" aria-labelledby="userDropdown">
		            	<a class="dropdown-item" href="/riepilogo"><i class="fas fa-list fa-sm fa-fw mr-2 text-gray-800"></i> Riepilogo</a>
		            	<a class="dropdown-item" href="/ricaricasaldo"><i class="fas fa-dollar-sign mr-2 text-gray-800"></i>  Ricarica Conto</a>
		          		<a class="dropdown-item" data-toggle="modal" data-target="#logoutModal" href="/logout"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-800"></i> Logout</a>
		        	</div>              
    			</li>
			</c:if>
          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

        
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-white-800"></h1>
          </div>
        
        <!-- /.container-fluid -->
        
        <!-- Content Row -->
          <div class="  row">

            <!-- Carta Saldo -->
           
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Saldo Conto</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> ${utente.saldo } euro</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
		
            <!-- Carta Bilancio -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Bilancio</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${utente.bilancio } euro</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-balance-scale fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>


            <!-- Carta Numero Scommesse -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Numero Scommesse</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"># ${nScommesse }</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-hashtag fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Riepilogo Scommesse</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Codice</th>
                      <th>Data</th>
                      <th>Quota</th>
                      <th>Importo</th>
                      <th>Vincita</th>
                      <th>Esito</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  <c:if test="${not empty schedineCorr }">
	                  <c:forEach items="${schedineCorr}" var="schedinaCorr" varStatus="loop">
	                  	<tr>
							<td></td>
							<td>${schedinaCorr.value.data}</td>
							<td>${schedinaCorr.value.quota}</td>
							<td>${schedinaCorr.value.importo}</td>
							<td>${schedinaCorr.value.vincita}</td>
							<td><a href="/risultati?codice= ${schedinaCorr.key }" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Vedi Risultati</a> <a href="/rimuoviSchedina?codice= ${schedinaCorr.key }" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm">Annulla</a></td>
							
						</tr>
					</c:forEach>
				 </c:if>
                  
                   <c:forEach items="${schedinaFin}" var="x">
					
					  <form method="get" action="/addSchedina">
							<tr>
								<td>${x.codice}</td>
								<td>${x.data}</td>
								<td>${x.quota}</td>
								<td>${x.importo}</td>
								<td>${x.vincita}</td>
								<td>${x.esito}</td>						
							</tr>
					  </form>
				  </c:forEach>
                 
                  </tbody>
                </table>
              </div>
            </div>
          </div>
      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Pugbet 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login">Logout</a>
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