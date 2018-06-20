package br.com.carlosaurelio.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.carlosaurelio.model.Cliente;
import br.com.carlosaurelio.controller.ClienteController;

@WebServlet("/dashboard/cliente")
public class ClienteServlet extends HttpServlet {

	private ClienteController clienteController = new ClienteController();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "/clientes.jsp";

		if (request.getParameter("alterConsumer") != null) {
			Cliente cliente = clienteController.findById(Integer.parseInt(request.getParameter("alterConsumer")));
			request.setAttribute("cliente", cliente);
			page = "/clientecrud.jsp";
		} else if (request.getParameter("adicionar") != null) {
			page = "/clientecrud.jsp";
		} else {
			if (request.getParameter("btnGravar") != null) {
				try {
					atualizarCliente(request);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			} else if (request.getParameter("deleteConsumer") != null) {
				clienteController.deletar(Integer.parseInt(request.getParameter("deleteConsumer")));
			} else if (request.getParameter("activeConsumer") != null) {
				clienteController.ativar(Integer.parseInt(request.getParameter("activeConsumer")));
			}
			
			List<Cliente> clientes = clienteController.getListaClientes();
			request.setAttribute("clientes", clientes);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);			
	}

	private void atualizarCliente(HttpServletRequest request) throws ParseException {
		Cliente cliente = new Cliente();
		if (request.getParameter("btnGravar") != "") {
			cliente.setId(Integer.parseInt(request.getParameter("btnGravar")));
		}
		
		cliente.setNome(request.getParameter("nome"));
		cliente.setSobrenome(request.getParameter("sobrenome"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setEndereco(request.getParameter("endereco"));
		cliente.setTelefone(request.getParameter("telefone"));
		cliente.setEmail(request.getParameter("email"));
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		cliente.setDataNascimento(date.parse(request.getParameter("dataNascimento")));
		
		cliente.setObservacao(request.getParameter("observacao"));
		cliente.setStatus("A");
		
		if (request.getParameter("btnGravar") != "") {
			clienteController.editar(cliente);
		} else {
			clienteController.inserir(cliente);
		}
	}
}
