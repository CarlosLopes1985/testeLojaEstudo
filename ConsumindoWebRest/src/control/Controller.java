package control;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.DaoVendaProduto;
import dao.Pedido;
import entity.Produto;
import manager.ManagerBean;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controle")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @throws IOException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ManagerBean mb = new ManagerBean();

		List<Produto> prod = mb.getListaInterna();
		Gson gson = new Gson();

		String texto = gson.toJson(prod);

		response.getWriter().print(texto);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cmd = request.getParameter("cmd");

		if (cmd.equalsIgnoreCase("gravarVenda")) {
			gravarVenda(request, response);
		}

		if (cmd.equalsIgnoreCase("calcularFrete")) {
			calcularFrete(request, response);
		}
	}

	/**
	 * 
	 * @param request
	 * @param response
	 */
	private void calcularFrete(HttpServletRequest request, HttpServletResponse response) {

		try {

			DaoVendaProduto daoVenda = new DaoVendaProduto();

			Gson gson = new Gson();
			Produto produtos[] = gson.fromJson(request.getParameter("produtos"), Produto[].class);

			for (Produto p : produtos) {

				Produto prod = daoVenda.buscarProdutoPorCodigo(p.getCodigo());

				String valorTotal = "R$ " + CalculaPrecoFrete.calcularValorTotalFrete(prod, "04414");

				System.out.println(valorTotal);
				response.getWriter().print(valorTotal);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 
	 * @param request
	 * @param response
	 */
	private void gravarVenda(HttpServletRequest request, HttpServletResponse response) {

		try {

			DaoVendaProduto daoVP = new DaoVendaProduto();
			Gson gson = new Gson();
			Produto produtos[] = gson.fromJson(request.getParameter("produtos"), Produto[].class);

			Pedido ped = new Pedido();
			ped.setDataPedido(new Date());

			int idPedido = daoVP.gravarPedido(ped);

			ped.setIdPedido(idPedido);

			for (Produto p : produtos) {

				daoVP.gravarVenda(ped, null, null, p.getCodigo());

				response.getWriter().print("<br/>" + p);

				System.out.println("------->" + p.toString());
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

	}
}
