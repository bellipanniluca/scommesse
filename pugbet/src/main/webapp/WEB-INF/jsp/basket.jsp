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
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3"> PUGBET </div>
        </h2>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Accedi -->
      <li class="nav-item">
        <a class="nav-link" href="/login">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Accedi</span></a>
      </li>
      
       <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Registrati -->
      <li class="nav-item">
        <a class="nav-link" href="/register">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Registrati</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">
      
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

            
            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="/userPage" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                
              </a>
              
              
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

         

        
        <!-- /.container-fluid -->
        
        <!-- Content Row -->
          <div class="  row">

            <!-- Carta Calcio -->
           
            <div class="col-xl-3 col-md-6 mb-4"><a href="/">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Calcio</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">Serie A</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div></a>
            </div>
		
            <!-- Carta Basket -->
            <div class="col-xl-3 col-md-6 mb-4"><a href="/basket">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Basketball</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">NBA</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div></a>
            </div>


            <!-- Carta Hockey -->
            <div class="col-xl-3 col-md-6 mb-4"> <a href="/hockey">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Ice Hockey</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">KHL</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div></a>
            </div>
          </div>

        <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Basket</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Anno</th>
                      <th>Giorno</th>
                      <th>Mese</th>
                      <th>Squadra Casa</th>
                      <th>Squadra Trasferta</th>
                      <th>1</th>
                      <th>2</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${att}" var="x">
	
					<tr>
					<td>${x.anno}</td>
					<td>${x.giorno}</td>
					<td>${x.mese}</td>
					<td>${x.casa}</td>
					<td>${x.trasferta}</td>
					<td><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button">${x.home}</button></td>
					<td><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="button">${x.away}</button></td>
	
	
					</tr>
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

 

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>