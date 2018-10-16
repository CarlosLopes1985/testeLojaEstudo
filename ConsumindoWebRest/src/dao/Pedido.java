package dao;

import java.util.Date;

public class Pedido {
	
	private Integer idPedido;
	private Date dataPedido;
	public Pedido(Integer idPedido, Date dataPedido) {
		super();
		this.idPedido = idPedido;
		this.dataPedido = dataPedido;
	}
	public Pedido() {
		super();
	}
	@Override
	public String toString() {
		return "Pedido [idPedido=" + idPedido + ", dataPedido=" + dataPedido + "]";
	}
	public Integer getIdPedido() {
		return idPedido;
	}
	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}
	public Date getDataPedido() {
		return dataPedido;
	}
	public void setDataPedido(Date dataPedido) {
		this.dataPedido = dataPedido;
	}
	
	
	
}
