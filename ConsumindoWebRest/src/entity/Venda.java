package entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Venda {
	
   private SimpleDateFormat sdf=
		      new SimpleDateFormat("yyyy-MM-dd hh24:mm:ss");
 	private Integer id;
	private String  data;
	private List<Produto> produtos;
	
	public Venda() {
	}


	public Venda(Integer id, String data, List<Produto> produtos) {
		super();
		this.id = id;
		this.data = data;
		this.produtos = produtos;
	}



	@Override
	public String toString() {
		return "Venda [id=" + id + ", data=" + 
	     sdf.format(new Date()) + ", produtos=" + produtos + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

 

	public SimpleDateFormat getSdf() {
		return sdf;
	}

	public void setSdf(SimpleDateFormat sdf) {
		this.sdf = sdf;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public List<Produto> getProdutos() {
		return produtos;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}
	
	
}
