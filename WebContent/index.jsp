<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
	    <link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" />
	    <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
	    <link rel="stylesheet" type="text/css" href="js/gritter/css/jquery.gritter.css" />
	    <link rel="stylesheet" type="text/css" href="lineicons/style.css">    
	    <link href="css/style.css" rel="stylesheet">
	    <link href="css/style-responsive.css" rel="stylesheet">
		<title>PetSafe - Área do Cliente</title>
	</head>
	<body>
  	<section id="container">
      	<header class="header black-bg">
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <!--logo start-->
            <a href="dashboard" class="logo"><b>PETSAFE - ÁREA DO CLIENTE</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="logout">Logout</a></li>
            	</ul>
            </div>
        </header>

        <aside>
            <div id="sidebar"  class="nav-collapse ">
                <ul class="sidebar-menu" id="nav-accordion">
              	    <p class="centered"><img src="img/ic_logo.png" class="img-circle" width="60"></p>
					<h5 class="centered">${usuario.nome}</h5>
              	  	
	                <li class="mt">
	                    <a class="active" href="dashboard">
	                        <i class="fa fa-dashboard"></i>
	                        <span>Dashboard</span>
	                    </a>
	                </li>

	                <li class="sub-menu">
	                    <a href="dashboard/cliente" >
	                        <i class="fa fa-users"></i>
	                        <span>Clientes</span>
	                    </a>
	                </li>

	                <li class="sub-menu">
	                    <a href="dashboard/animal" >
	                        <i class="fa fa-paw"></i>
	                        <span>Animais</span>
	                    </a>
	                </li>
            	</ul>
        	</div>
    	</aside> 
          	
		<section id="main-content">
            <section class="wrapper site-min-height">
                <div class="row">

					<!-- ESTATÍSTICA-->
                    <div class="col-lg-9 main-chart">
                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="darkblue-panel pn">
                      			<div class="darkblue-header">
						  			<h5>ESTATÍSTICA DE CLIENTES</h5>
                      			</div>
                      			<h1 class="mt"><i class="fa fa-user fa-3x"></i></h1>
								<footer>
									<div class="centered">
										<h5><i class="fa fa-trophy"></i> ${clientes.size()}</h5>
									</div>
								</footer>
                      		</div>
                      	</div>
                     <!-- END ESTASTISCA-->

					<!-- ESTATÍSTICA-->
                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="darkblue-panel pn">
                      			<div class="darkblue-header">
						  			<h5>NÚMERO CLIENTES COM ANIMAIS</h5>
                      			</div>
								<canvas id="serverstatus02" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
											{
												value: 60,
												color:"#1c9ca7"
											},
											{
												value : 40,
												color : "#f68275"
											}
										];
										var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
								</script>
								<footer>
									<div class="pull-left">
										<h5><i class="fa fa-users"></i> ${clientes.size()}</h5>
									</div>
									<div class="pull-right">
										<h5>${animais.size()} <i class="fa fa-paw"></i></h5>
									</div>
								</footer>
                      		</div>
                      	</div>
                     </div>
                     <!-- END ESTASTISCA-->                     

                  	<!-- CALENDAR-->
                  	<div class="col-lg-3 ds">
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div>
                  	</div>
                  	<!-- END CALENDAR-->
                </div>
        	</section>
      	</section>

      	<footer class="site-footer">
          	<div class="text-center">
              	2016 - PetSafe
              	<a href="dashboard" class="go-top">
                  	<i class="fa fa-angle-up"></i>
              	</a>
        	</div>
      	</footer>      	

    </section>	

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    
    <script type="text/javascript" src="js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="js/sparkline-chart.js"></script>    
	<script src="js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Seja bem vindo!',
            // (string | mandatory) the text inside the notification
            text: 'Agora com novo visual totalmente renovado você poderá gerenciar da melhor forma possível seus clientes e animais.',
            // (string | optional) the image to display on the left
            image: 'img/ic_info.png',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>    
	</body>
</html>