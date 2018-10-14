package dao;

import entity.Cliente;
import entity.Produto;

public class DaoVendaProduto extends Dao {

	public void gravarVenda(Produto produto, Cliente cliente, Endereco entrega)throws Exception{
		open();
		
		stmt = con.prepareStatement("insert into item_pedido values(null,?,?,?)");
		stmt.setInt(1, produto.getCodigo());
		stmt.setInt(2, 1);
		stmt.setInt(3, 2);
		
		stmt.execute();
		
		close();
	}
	
	public static void main(String[] args) {
		
		try {
			
		DaoVendaProduto dao = new DaoVendaProduto();
		
		Produto produto = new Produto();
		produto.setCodigo(1);
		
		dao.gravarVenda(produto, null, null);
	

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		}
}
