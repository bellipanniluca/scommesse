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

  <title>Pugebt - Admin</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

<c:if test="${empty admin}">
<c:redirect url="login"/>
</c:if>

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/adminPage">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-paw"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Pugbet</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- UTENTI -->
      <li class="nav-item active">
        <a class="nav-link" href="utenti">
          <i class="fas fa-fw fa-table"></i>
          <span>Utenti</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Partite</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="calcioAdmin">Calcio</a>
            <a class="collapse-item" href="basketAdmin">Basket</a>
            <a class="collapse-item" href="hockeyAdmin">Hockey</a>
          </div>
        </div> 
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" 
              	aria-haspopup="true" aria-expanded="false" style="margin-left:9%">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> ${admin.nome} </span>
                <img class="img-profile rounded-circle" style="height: 2rem !important;width: 3rem !important" 
                src="https://cms-assets.tutsplus.com/uploads/users/127/posts/29412/image/5_2.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="/logout" name="logout">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Gestione Partite: </h1>
          
           <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"> Hockey </h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Anno</th>
                      <th>Giorno</th>
                      <th>Mese</th>
                      <th>Squadra Casa</th>
                      <th>Squadra Trasferta</th>
                      <th>Home</th>
					  <th>Away</th>
					  <th></th>
                    </tr>
                  </thead>
                   
                  <tbody>
					<c:forEach items="${admH}" var="z">
					<tr>
					<td>${z.id}</td>
					<td>${z.anno}</td>
					<td>${z.giorno}</td>
					<td>${z.mese}</td>
					<td>${z.casa}</td>
					<td>${z.trasferta}</td>
					<td>${z.home}</td>
					<td>${z.away}</td>
					<td>
					<form method="get" action="/deleteAdminHockey">
					<input type="hidden" name="id" value="${z.id }">
					<button type="submit" class="btn btn-circle btn-danger">
					<i class="fas fa-trash"></i>
					</button>
					</form>
					</td>
					</tr>
				</c:forEach>
				 </tbody>
                </table>
              </div>
            </div>
          </div>
          
                <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Aggiungi Partita</h6>
						</div>
						</div>

								<form class="user" method="get" action="/addHockey">
									<div class="form-group row">
										<div class="col-md-4">
											<input type="text" class="form-control form-control-user"
												id="anno" placeholder="Anno" name="anno">
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control form-control-user"
												id="giorno" placeholder="Giorno" name="giorno">
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control form-control-user"
												id="mese" placeholder="Mese" name="mese">
										</div>
									</div>
								
										<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type="text" class="form-control form-control-user"
												id="casa" placeholder="Casa" name="casa">
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												id="trasferta" placeholder="Trasferta" name="trasferta">
										</div>
										</div>
																		
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type="text" class="form-control form-control-user"
												id="home" placeholder="Home" name="home">
										</div>
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												id="away" placeholder="Away" name="away">
										</div>
										
									</div>
									<input type="submit" value="Registra Partita"
										class="btn btn-primary btn-user btn-block">

								</form>


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
            <span aria-hidden="true">�</span>
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

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

</body>

	<!-- Footer -->
								<footer class="sticky-footer bg-white">
									<div class="container my-auto">
										<div class="copyright text-center my-auto">
											<span>Copyright &copy; Pugbet 2019</span>
										</div>
									</div>
								</footer>
								<!-- End of Footer -->

</html>