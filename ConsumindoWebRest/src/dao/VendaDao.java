package dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

import entity.Produto;
import entity.Venda;

public class VendaDao extends Dao{
	
	
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
	
	public static void main(String[] args) {
		Produto p1 = new Produto(1,"livroJason",150.);
		Produto p2 = new Produto(2,"livrojquery",150.);
		List<Produto>lst =new ArrayList<Produto>();
		 lst.add(p1);
		 lst.add(p2);
		try{
			Venda v = new Venda();
			  v.setId(100);
			  v.setData(
             new SimpleDateFormat
             ("yyyy-MM-dd HH:mm:ss").format(new Date()));
			 v.setProdutos(lst);
			 
			VendaDao dao = new VendaDao();
			dao.create(v);
			System.out.println("Dados Gravados ...");
			
		}catch(Exception ex){
			System.out.println("Error :" + ex.getMessage());
		}
		
		
		
	}
	
	

}
