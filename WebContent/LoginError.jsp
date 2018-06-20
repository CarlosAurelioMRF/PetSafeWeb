<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" />
	    <link href="css/style.css" rel="stylesheet">
	    <link href="css/style-responsive.css" rel="stylesheet">		
		<title>PetSafe - Login</title>
	</head>

	<body>
		<div id="login-page">
		  	<div class="container">
			    <form class="form-login" method="post" action="j_security_check">
			        <h2 class="form-login-heading">Acesse agora !</h2>
			        <div class="login-wrap">
			        	<div class="form-group has-error">
			            	<input type="text" name="j_username" class="form-control" placeholder="Usuário" autofocus>
			        	</div>
			            <br>
			        	<div class="form-group has-error">				            
			            	<input type="password" name="j_password" autocomplete="off" class="form-control" placeholder="Senha">
			        	</div>			            
			            <label class="checkbox">
			                <span class="pull-right">
			                    <a data-toggle="modal" href="login.html#myModal"> Esqueceu a senha?</a>
			                </span>
			            </label>
			            <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> ENTRAR</button>
			        </div>
			        
			       	<div class="alert alert-danger centered">
   						<c:out value="Usuário ou senha inválido."/>
   					</div>

		          <!-- Modal -->
			        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
			            <div class="modal-dialog">
			                <div class="modal-content">
			                    <div class="modal-header">
			                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                        <h4 class="modal-title">Esqueceu a senha?</h4>
			                    </div>
			                    <div class="modal-body">
			                        <p>Digite seu email para recuperar a senha.</p>
			                        <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
			                    </div>
			                    <div class="modal-footer">
			                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
			                        <button class="btn btn-theme" type="button">Enviar</button>
			                    </div>
			                </div>
			            </div>
			        </div>		
		    </form>	  	
	  	</div>			            
		

	    <script src="js/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="js/jquery.backstretch.min.js"></script>
	    <script>
	        $.backstretch("img/login-bg.jpg", {speed: 500});
	    </script>		
	</body>

</html>