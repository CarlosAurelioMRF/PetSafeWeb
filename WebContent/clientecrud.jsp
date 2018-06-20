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
		<title>PetSafe - Cliente</title>
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
		                    <a class="active" href="cliente" >
		                        <i class="fa fa-users"></i>
		                        <span>Clientes</span>
		                    </a>
		                </li>

		                <li class="sub-menu">
		                    <a href="animal" >
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
		                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Cadastrar Cliente</h4>
			                      <form class="form-horizontal style-form" action="cliente" method="get">
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Nome</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="nome" class="form-control" value="${cliente.nome}">
			                              </div>
			                          </div>
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Sobrenome</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="sobrenome" class="form-control" value="${cliente.sobrenome}">
			                              </div>
			                          </div>    
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">CPF</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="cpf" id="cpf" maxlength="14" onKeyPress="return Apenas_Numeros(event);" onBlur="formataCPF(this);"  class="form-control" value="${cliente.cpf}">
			                              </div>
			                          </div>			
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Endereço</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="endereco" class="form-control" value="${cliente.endereco}">
			                              </div>
			                          </div>			                          
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Telefone</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="telefone" id="telefone" class="form-control" value="${cliente.telefone}">
			                              </div>
			                          </div>		
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Email</label>
			                              <div class="col-sm-10">
			                                  <input type="email" name="email" class="form-control" value="${cliente.email}">
			                              </div>
			                          </div>	
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Data de Nascimento</label>
			                              <div class="col-sm-10">
			                                  <input type="date" name="dataNascimento" class="form-control" value="${cliente.dataNascimento}">
			                              </div>
			                          </div>
			                          <div class="form-group">
			                              <label class="col-sm-2 col-sm-2 control-label">Observação</label>
			                              <div class="col-sm-10">
			                                  <input type="text" name="observacao" class="form-control" value="${cliente.observacao}">
			                              </div>
			                          </div>   
			                          <center>
										  <button type="submit" name="btnGravar" value="${cliente.id}" class="btn btn-success">Gravar</button>
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
    	
    	<script language=javascript>
			function Apenas_Numeros(caracter)
			{
			  var nTecla = 0;
			  if (document.all) {
				  nTecla = caracter.keyCode;
			  } else {
				  nTecla = caracter.which;
			  }
			  if ((nTecla> 47 && nTecla <58)
			  || nTecla == 8 || nTecla == 127
			  || nTecla == 0 || nTecla == 9  // 0 == Tab
			  || nTecla == 13) { // 13 == Enter
				  return true;
			  } else {
				  return false;
			  }
			}
			 // evento onBlur
			 function formataCPF(CPF)
			 {
			 	with (CPF)
			 	{
			 		value = value.substr(0, 3) + '.' + 
			 				value.substr(3, 3) + '.' + 
			 				value.substr(6, 3) + '-' +
			 				value.substr(9, 2);
			 	}
			 }
		</script>
	</body>
</html>	    	