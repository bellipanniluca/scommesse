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

<body id="page-top" onload="grafico(date = ${date}, dati= ${dati})">

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
                      <div class="h5 mb-0 font-weight-bold text-gray-800"> ${utente.saldo } &euro;</div>
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
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${utente.bilancio } &euro;</div>
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
          
         
		
		<!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Storico Scommesse</h6>
                </div>
                <div class="card-body" onclick = "grafico(date = ${date}, dati= ${dati})">
                  <div class="chart-area">
                    <canvas id="myAreaChart2"></canvas>
                    
                  </div>
                </div>
              </div>

		<!-- Tabella Riepilogo Scommesse -->
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
					
					  
							<tr>
								<td>${x.codice}</td>
								<td>${x.data}</td>
								<td>${x.quota}</td>
								<td>${x.importo}</td>
								<td>${x.vincita}</td>
								<td>${x.esito}</td>						
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

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Logout</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Sei sicuro di uscire?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">No</button>
          <a class="btn btn-primary" href="/logout">Si</a>
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
  <script src="vendor/chart.js/Chart.min.js"></script>
  
  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  <script src="js/demo/chart-bar-demo.js"></script>
  
  <script>
  
  Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
  Chart.defaults.global.defaultFontColor = '#858796';

  function number_format(number, decimals, dec_point, thousands_sep) {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
    number = (number + '').replace(',', '').replace(' ', '');
    var n = !isFinite(+number) ? 0 : +number,
      prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
      sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
      dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
      s = '',
      toFixedFix = function(n, prec) {
        var k = Math.pow(10, prec);
        return '' + Math.round(n * k) / k;
      };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
      s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '').length < prec) {
      s[1] = s[1] || '';
      s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
  }

  
  function grafico(date, dati){

	    var ctx = document.getElementById("myAreaChart2");
	var prova2 = date;
	console.log(prova2);
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels: prova2,
	    datasets: [{
	      label: "Bilancio",
	      lineTension: 0.3, 
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data: dati,
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    layout: {
	      padding: {
	        left: 10,
	        right: 25,
	        top: 25,
	        bottom: 0
	      }
	    },
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: false
	        },
	        ticks: {
	          maxTicksLimit: 7
	        }
	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return number_format(value) + '\u20AC';
	          }
	        },
	        gridLines: {
	          color: "rgb(234, 236, 244)",
	          zeroLineColor: "rgb(234, 236, 244)",
	          drawBorder: false,
	          borderDash: [2],
	          zeroLineBorderDash: [2]
	        }
	      }],
	    },
	    legend: {
	      display: false
	    },
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 14,
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      intersect: false,
	      mode: 'index',
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ': ' + number_format(tooltipItem.yLabel) + '\u20AC';
	        }
	      }
	    }
	  }
	});
	}
  
  	
  </script>

</body>

</html>