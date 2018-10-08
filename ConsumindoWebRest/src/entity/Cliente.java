package entity;

import java.io.Serializable;
import java.util.ArrayList;

public class Cliente implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idCliente;
	private String nome;
	private String email;
	private String foto;
	private Double total = 0.;
	private ArrayList<Produto>lista;
	public Integer getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(Integer idCliente) {
		this.idCliente = idCliente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public ArrayList<Produto> getLista() {
		return lista;
	}
	public void setLista(ArrayList<Produto> lista) {
		this.lista = lista;
	}
	@Override
	public String toString() {
		return "Cliente [idCliente=" + idCliente + ", nome=" + nome + ", email=" + email + ", foto=" + foto + ", total="
				+ total + "]";
	}
	public Cliente(Integer idCliente, String nome, String email, String foto, Double total, ArrayList<Produto> lista) {
		super();
		this.idCliente = idCliente;
		this.nome = nome;
		this.email = email;
		this.foto = foto;
		this.total = total;
		this.lista = lista;
	}
	public Cliente() {
		super();
	}
	public Cliente(Integer idCliente, String nome, String email, String foto) {
		super();
		this.idCliente = idCliente;
		this.nome = nome;
		this.email = email;
		this.foto = foto;
	}
	
	public void adicionar(Produto p){
		
		if(lista == null){
			lista = new ArrayList<Produto>();
		}
		total = total + p.getPreco();
		lista.add(p);
	}
}
