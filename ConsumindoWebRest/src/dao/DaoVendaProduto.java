package dao;

import java.sql.Date;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

import entity.Cliente;
import entity.Endereco;
import entity.Produto;
import entity.Venda;

public class DaoVendaProduto extends Dao {

	public Integer gravarPedido(Pedido pedido) {
		
		Integer idPedido = null;
		
		try {
			open();
			
			stmt = con.prepareStatement("insert into pedido values(null,?)",stmt.RETURN_GENERATED_KEYS);
			stmt.setDate(1, new Date(pedido.getDataPedido().getTime()));
			
			stmt.execute();
			
			rs = stmt.getGeneratedKeys();
			rs.next();
		
			idPedido =rs.getInt(1);
			
			stmt.close();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idPedido;
	}
	
	public void gravarVenda(Pedido pedido,Cliente cliente, Endereco entrega,int idProduto)throws Exception{
		try {
			
		open();
		
		stmt = con.prepareStatement("insert into itempedido values(?,?,?,?)");
		stmt.setInt(1, pedido.getIdPedido());
		stmt.setInt(2, idProduto);
		stmt.setInt(3, 1);
		stmt.setInt(4, 2);
		
		stmt.execute();
		
		close();
		

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
		try {
			
		DaoVendaProduto dao = new DaoVendaProduto();
		
		Produto produto = new Produto();
		produto.setCodigo(1);
		
		//dao.gravarVenda(produto, null, null);
	

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		}
	
	public void create(Venda v) throws Exception{
		open();
		 DBCollection tabela = con2.getCollection("cesta");
		 for (Produto p : v.getProdutos()){
		  stmt2 = new BasicDBObject();
		       stmt2.put("id", v.getId());
		       stmt2.put("data", v.getData());
		       stmt2.put("codigo", p.getCodigo());
		       stmt2.put("nome", p.getNome());
		       stmt2.put("preco", p.getPreco());
		      tabela.insert(stmt2);
		 }
		  
	}
	
//	public static void main(String[] args) {
//		Produto p1 = new Produto(1,"livroJason",150.);
//		Produto p2 = new Produto(2,"livrojquery",150.);
//		List<Produto>lst =new ArrayList<Produto>();
//		 lst.add(p1);
//		 lst.add(p2);
//		try{
//			Venda v = new Venda();
//			  v.setId(100);
//			  v.setData(
//             new SimpleDateFormat
//             ("yyyy-MM-dd HH:mm:ss").format(new Date()));
//			 v.setProdutos(lst);
//			 
//			VendaDao dao = new VendaDao();
//			dao.create(v);
//			System.out.println("Dados Gravados ...");
//			
//		}catch(Exception ex){
//			System.out.println("Error :" + ex.getMessage());
//		}
		
}
