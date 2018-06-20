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
		<title>PetSafe - Animais</title>
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
          			<h3><i class="fa fa-angle-right"></i> Animais</h3>
              		<div class="row">
                  		<div class="col-md-12">
                      		<div class="content-panel">
                          		<table class="table table-striped table-advance table-hover">
                          			<form action="animal">
                          				<button type="submit" name="adicionar" value="novoAnimal"class="btn btn-success pull-right" style="margin-right: 10px;"><i class="fa fa-plus"></i> Adicionar</button>
                          			</form>
	                  	  	  		<h4><i class="fa fa-angle-right"></i> Animais Cadastrados</h4>
	                  	  	  		<hr></hr>
                            		<thead>
                            			<tr>
                            				<th><i class="fa fa-user"></i> Cliente</th>
                               				<th><i class="fa fa-paw"></i> Nome</th>
                               				<th><i class="fa fa-bug"></i> Tipo de Animal</th>
                               				<th><i class="fa fa-child"></i> Idade</th>
                               				<th><i class="fa fa-square"></i> Peso</th>
                               				<th></th>
                           				</tr>
                           			</thead>
                             		<tbody>
			        					<c:forEach var="animal" items="${animais}">
					                    	<tr>
					                    		<td><a href=cliente?alterConsumer=${animal.codigoCliente}><c:out value="${animal.codigoCliente}"></c:out> </a></td>
		              	                 		<td><a href=animal?alterAnimal=${animal.id}><c:out value="${animal.nome}"></c:out> </a></td>
		                	           			<td><c:out value="${animal.tipoAnimal}"></c:out></td>
		                    	       			<td><c:out value="${animal.idade}"></c:out></td>
		                      	       			<td><c:out value="${animal.peso}"></c:out></td>
		                           				<td>
		                           					<form action="animal">	                               				
			                               				<button class="btn btn-primary btn-xs" type="submit" name="alterAnimal" value="${animal.id}"><i class="fa fa-pencil"></i></button>
			                               				<button class="btn btn-danger btn-xs" type="submit" name="deleteAnimal" value="${animal.id}"><i class="fa fa-trash-o "></i></button>
		                               				</form>
	                               				</td>
		                              		</tr>			       							
										</c:forEach>
                              		</tbody>
                          		</table>
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