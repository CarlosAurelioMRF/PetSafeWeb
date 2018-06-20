package br.com.carlosaurelio.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.carlosaurelio.controller.AnimalController;
import br.com.carlosaurelio.controller.ClienteController;
import br.com.carlosaurelio.controller.UsuarioController;
import br.com.carlosaurelio.model.Animal;
import br.com.carlosaurelio.model.Cliente;

@WebServlet("/dashboard")
public class Dashboard extends HttpServlet {
	
	private AnimalController animalController = new AnimalController();
	private ClienteController clienteController = new ClienteController();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsuarioController controller = new UsuarioController();
		request.getSession().setAttribute("usuario", controller.getUsuario(request.getUserPrincipal().getName()));
		
		List<Cliente> clientes = clienteController.getListaClientes();
		request.setAttribute("clientes", clientes);
		
		List<Animal> animais = animalController.getListaAnimais();
		request.setAttribute("animais", animais);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
