package br.com.carlosaurelio.web;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.carlosaurelio.controller.AnimalController;
import br.com.carlosaurelio.controller.ClienteController;
import br.com.carlosaurelio.model.Animal;
import br.com.carlosaurelio.model.Cliente;

@WebServlet("/dashboard/animal")
public class AnimalServlet extends HttpServlet {

	private AnimalController animalController = new AnimalController();
	private ClienteController clienteController = new ClienteController();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "/animais.jsp";
		
		if (request.getParameter("alterAnimal") != null) {
			Animal animal = animalController.findById(Integer.parseInt(request.getParameter("alterAnimal")));
			Cliente cliente = clienteController.findById(animal.getCodigoCliente());
			request.setAttribute("animal", animal);
			request.setAttribute("cliente", cliente);
			page = "/animalcrud.jsp";
		} else if (request.getParameter("adicionar") != null) {
			List<Cliente> clientes = clienteController.getListaClientes();
			request.setAttribute("clientes", clientes);			
			page = "/animalcrud.jsp";
		} else {
			if (request.getParameter("btnGravar") != null) {
				atualizarAnimal(request);
			} else if (request.getParameter("deleteAnimal") != null) {
				animalController.deletar(Integer.parseInt(request.getParameter("deleteAnimal")));
			}
			
			List<Animal> animais = animalController.getListaAnimais();
			request.setAttribute("animais", animais);			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);			
	}

	private void atualizarAnimal(HttpServletRequest request) {
		Animal animal = new Animal();

		if (request.getParameter("btnGravar") != "") {
			animal.setId(Integer.parseInt(request.getParameter("btnGravar")));
		}
		
		animal.setCodigoCliente(Integer.parseInt(request.getParameter("cliente")));
		animal.setNome(request.getParameter("nome"));
		animal.setTipoAnimal(request.getParameter("tipo"));
		animal.setIdade(request.getParameter("idade"));
		animal.setPeso(request.getParameter("peso"));		
		
		if (request.getParameter("btnGravar") != "") {
			animalController.editar(animal);
		} else {
			animalController.inserir(animal);
		}
		
	}
	
}
