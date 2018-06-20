<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
	    <link href="../css/bootstrap.css" rel="stylesheet">
	    <link href="../css/font-awesome/css/font-awesome.css" rel="stylesheet" />
	    <link rel="stylesheet" type="text/css" href="../css/zabuto_calendar.css">
	    <link rel="stylesheet" type="text/css" href="../js/gritter/css/jquery.gritter.css" />
	    <link rel="stylesheet" type="text/css" href="../lineicons/style.css">    
	    <link href="../css/style.css" rel="stylesheet">
	    <link href="../css/style-responsive.css" rel="stylesheet">
		<title>PetSafe - Animal</title>
	</head>
	<body>
	  	<section id="container">
	      	<header class="header black-bg">
	            <div class="sidebar-toggle-box">
	                <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
	            </div>
	            <!--logo start-->
	            <a href="../dashboard" class="logo"><b>PETSAFE - ÁREA DO CLIENTE</b></a>
	            <!--logo end-->
	            <div class="top-menu">
	            	<ul class="nav pull-right top-menu">
	                    <li><a class="logout" href="../logout">Logout</a></li>
	            	</ul>
	            </div>
	        </header>

	        <aside>
	            <div id="sidebar"  class="nav-collapse ">
	                <ul class="sidebar-menu" id="nav-accordion">
	              	    <p class="centered"><img src="../img/ic_logo.png" class="img-circle" width="60"></p>
						<h5 class="centered">${usuario.nome}</h5>
	              	  	
		                <li class="mt">
		                    <a href="../dashboard">
		                        <i class="fa fa-dashboard"></i>
		                        <span>Dashboard</span>
		                    </a>
		                </li>

		                <li class="sub-menu">
		                    <a href="cliente" >
		                        <i class="fa fa-users"></i>
		                        <span>Clientes</span>
		                    </a>
		                </li>

		                <li class="sub-menu">
		                    <a class="active" href="animal" >
		                        <i class="fa fa-paw"></i>
		                        <span>Animais</span>
		                    </a>
		                </li>
	            	</ul>
	        	</div>
	    	</aside>
	    	
      		<section id="main-content">
          		<section class="wrapper site-min-height">
          			<h3><i class="fa fa-angle-right"></i> Animal</h3>
		          	<div class="row mt">
		          		<div class="col-lg-12">
		                  <div class="form-panel">
		                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Cadastrar Animal</h4>
			                      <form class="form-horizontal style-form" action="animal" method="POST">
			                      	  <div class="form-group">
			                      	  	  <label class="col-sm-2 col-sm-2 control-label">Cliente</label>
			                      	  	  <div class="col-sm-10">
										  	  <select class="form-control" name="cliente">
										  	  	  <option value="${cliente.id}">${cliente.id} - ${cliente.nome}</option>
										  	  	  <c:forEach var="cliente" items="${clientes}">
										    	  	  <option value="${cliente.id}">${cliente.id} - ${cliente.nome}</option>
										    	  </c:forEach>
										  	  </select>
									  	  </div>		
									  </div>	                      
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Nome</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="nome" class="form-control" value="${animal.nome}">
			                              </div>
			                          </div>
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Tipo de Animal</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="tipo" class="form-control" value="${animal.tipoAnimal}">
			                              </div>
			                          </div>    
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Idade</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="idade" class="form-control" value="${animal.idade}">
			                              </div>
			                          </div>			
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Peso</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="peso" class="form-control" value="${animal.peso}">
			                              </div>
			                          </div>			                          
			                          <center>
										  <button type="submit" name="btnGravar" value="${animal.id}" class="btn btn-success">Gravar</button>
										  <button type="submit" name="btnCancelar" class="btn btn-danger">Cancelar</button>
									  </center>
	                  	  	  	</form>		    	
                      		</div>
                  		</div>
              		</div>   	
				</section>
			</section>	                  	  	  			    	

         	<footer class="site-footer">
    	      	<div class="text-center">
	              	2016 - PetSafe
              		<a href="cliente" class="go-top">
                  		<i class="fa fa-angle-up"></i>
              		</a>
        		</div>
      		</footer>      	
    	</section>
	</body>
</html>	    	