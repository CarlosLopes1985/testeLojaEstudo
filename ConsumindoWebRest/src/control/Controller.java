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
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @throws IOException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		ManagerBean mb = new ManagerBean();
		
		List<Produto>prod = mb.getListaInterna();
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

		try {
			
			DaoVendaProduto daoVP = new DaoVendaProduto();
			Gson gson = new Gson();
			Produto produtos[] = gson.fromJson(request.getParameter("produtos"), Produto[].class);
			
			Pedido ped = new Pedido();
			ped.setDataPedido(new Date());
			
			int idPedido = daoVP.gravarPedido(ped);
			
			ped.setIdPedido(idPedido);
			
			for (Produto p : produtos) {
				
				daoVP.gravarVenda(ped, null, null,p.getCodigo());
				
				response.getWriter().print("<br/>" + p);
				
				System.out.println("------->"+p.toString());
			}

		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}
}
