package entity;

import java.io.Serializable;

public class Produto implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idProduto;
	private String nome;
	private Double preco;
	private String imagem;
	public Produto() {
		super();
	}
	public Produto(Integer idProduto, String nome, Double preco, String imagem) {
		super();
		this.idProduto = idProduto;
		this.nome = nome;
		this.preco = preco;
		this.imagem = imagem;
	}
	@Override
	public String toString() {
		return "Produto [idProduto=" + idProduto + ", nome=" + nome + ", preco=" + preco + ", imagem=" + imagem + "]";
	}
	public Integer getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(Integer idProduto) {
		this.idProduto = idProduto;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
