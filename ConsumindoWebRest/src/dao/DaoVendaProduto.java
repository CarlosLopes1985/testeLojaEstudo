package dao;

import java.sql.Date;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

import entity.Cliente;
import entity.Endereco;
import entity.Produto;
import entity.Venda;

public class DaoVendaProduto extends Dao {

	public void create(Venda v) throws Exception {
		open();
		DBCollection tabela = con2.getCollection("cesta");
		for (Produto p : v.getProdutos()) {
			stmt2 = new BasicDBObject();
			stmt2.put("id", v.getId());
			stmt2.put("data", v.getData());
			stmt2.put("codigo", p.getCodigo());
			stmt2.put("nome", p.getNome());
			stmt2.put("preco", p.getPreco());
			tabela.insert(stmt2);
		}

	}

	public Integer gravarPedido(Pedido pedido) {

		Integer idPedido = null;

		try {
			open();

			stmt = con.prepareStatement("insert into pedido values(null,?)", stmt.RETURN_GENERATED_KEYS);
			stmt.setDate(1, new Date(pedido.getDataPedido().getTime()));

			stmt.execute();

			rs = stmt.getGeneratedKeys();
			rs.next();

			idPedido = rs.getInt(1);

			stmt.close();

			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idPedido;
	}

	public void gravarVenda(Pedido pedido, Cliente cliente, Endereco entrega, int idProduto) throws Exception {
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

	/**
	 * 
	 * @param codigo
	 * @return
	 * @throws Exception
	 */
	public Produto buscarProdutoPorCodigo(Integer codigo) throws Exception {
		open();

		stmt = con.prepareStatement("Select * from produto where idProduto = ?");
		stmt.setInt(1, codigo);

		rs = stmt.executeQuery();
		Produto prod = null;
		if (rs.next()) {

			prod = new Produto();
			prod.setCodigo(rs.getInt(1));
			prod.setNome(rs.getString(2));
			prod.setPreco(rs.getDouble(3));
			prod.setQuantidade(rs.getInt(4));
			prod.setImagem(rs.getString(5));
			prod.setPeso(rs.getInt(6));
			prod.setComprimento(rs.getBigDecimal(7));
			prod.setLargura(rs.getBigDecimal(8));
			prod.setAltura(rs.getBigDecimal(9));
			prod.setDiametro(rs.getBigDecimal(10));
		}
		close();
		return prod;
	}

	public static void main(String[] args) {

		DaoVendaProduto da = new DaoVendaProduto();

		try {
			Produto prod = da.buscarProdutoPorCodigo(1);

			System.out.println("Result :" + prod.toString());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}

	}
}
