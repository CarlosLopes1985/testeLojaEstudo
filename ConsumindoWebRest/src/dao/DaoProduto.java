package dao;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import entity.Produto;

public class DaoProduto extends Dao {

	public Integer getCreateKey(Produto v) throws Exception {
		open();
		stmt = con.prepareStatement("insert into produto values (null,?,?,?,?)",
				PreparedStatement.RETURN_GENERATED_KEYS);
		stmt.setString(1, v.getNome());
		stmt.setDouble(2, v.getPreco());
		stmt.setInt   (3, v.getQuantidade());
		stmt.setString(4, v.getImagem());
		stmt.execute();
		rs = stmt.getGeneratedKeys();
		rs.next();// estava faltando
		int chave = rs.getInt(1);
		close();
		return chave;
	}

	public Produto findByCode(Integer cod) throws Exception {
		open();
		stmt = con.prepareStatement("select * from vitrine where codigo=?");
		stmt.setInt(1, cod);
		rs = stmt.executeQuery();
		Produto v = null;
		if (rs.next()) {
			v = new Produto();
			v.setCodigo(rs.getInt(1));
			v.setNome(rs.getString(2));

			v.setPreco(rs.getDouble(3));
			v.setQuantidade(rs.getInt(4));
			v.setImagem(rs.getString(5));
		}
		close();
		return v;
	}

	public List<Produto> findAll() throws Exception {
		open();
		List<Produto> lista = new ArrayList<Produto>();
		stmt = con.prepareStatement("select * from produto");
		rs = stmt.executeQuery();
		while (rs.next()) {
			Produto v = new Produto();
			v.setCodigo(rs.getInt(1));
			v.setNome(rs.getString(2));
			v.setPreco(rs.getDouble(3));
			v.setQuantidade(rs.getInt(4));
			v.setImagem(rs.getString(5));
			lista.add(v);
		}
		close();
		return lista;
	}

	public static void main(String[] args) {
		
		try {
			
		DaoProduto dp = new DaoProduto();
		
		List<Produto>produtos = dp.findAll();
		
		for(Produto prd : produtos){
			System.out.println("-->>>>" + prd);
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
