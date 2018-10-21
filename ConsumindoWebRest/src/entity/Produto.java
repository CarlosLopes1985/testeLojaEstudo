package entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Produto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer codigo;
	private String  nome;
	private Double  preco;
	private Integer quantidade;
	private String  imagem;
	private Integer peso;
	private BigDecimal comprimento;
	private BigDecimal largura;
	private BigDecimal altura;
	private BigDecimal diametro;

	public Produto() {
		super();
	}

	public Produto(Integer codigo, String nome, Double preco) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.preco = preco;
	}

	public Produto(Integer codigo, String nome, Double preco, Integer quantidade, String imagem) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.preco = preco;
		this.quantidade = quantidade;
		this.imagem = imagem;
	}

	

	@Override
	public String toString() {
		return "Produto [codigo=" + codigo + ", nome=" + nome + ", preco=" + preco + ", quantidade=" + quantidade
				+ ", imagem=" + imagem + ", peso=" + peso + ", comprimento=" + comprimento + ", largura=" + largura
				+ ", altura=" + altura + ", diametro=" + diametro + "]";
	}

	public Integer getCodigo() {
		return codigo;
	}

	public void setCodigo(Integer idProduto) {
		this.codigo = idProduto;
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

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public Integer getPeso() {
		return peso;
	}

	public void setPeso(Integer peso) {
		this.peso = peso;
	}

	public BigDecimal getComprimento() {
		return comprimento;
	}

	public void setComprimento(BigDecimal comprimento) {
		this.comprimento = comprimento;
	}

	public BigDecimal getLargura() {
		return largura;
	}

	public void setLargura(BigDecimal largura) {
		this.largura = largura;
	}

	public BigDecimal getAltura() {
		return altura;
	}

	public void setAltura(BigDecimal altura) {
		this.altura = altura;
	}

	public BigDecimal getDiametro() {
		return diametro;
	}

	public void setDiametro(BigDecimal diametro) {
		this.diametro = diametro;
	}

}
