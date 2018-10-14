package manager;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

import dao.DaoProduto;
import entity.Produto;

public class ManagerBean {
	
	private ArrayList<Produto>listaExterna;
	private List<Produto>listaInterna;
	
	public final String route = "http://www.mocky.io/v2/5bb9519c3100005f003ed92b";

	public ArrayList<Produto> getListaExterna() {
		
		try {
			
			Client cli = Client.create();
			
			WebResource ws = cli.resource(route);
			
			String json = ws.get(String.class);
			
			listaExterna = new Gson().fromJson(json,
					new TypeToken<ArrayList<Produto>>(){}.getType());
			return listaExterna;
			
		} catch (Exception e) {
			return null;
		}
	}

	public void setListaExterna(ArrayList<Produto> listaExterna) {
		this.listaExterna = listaExterna;
	}
	
	public List<Produto> getListaInterna(){
		try {
			
			listaInterna = new DaoProduto().findAll();
			
			return listaInterna;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listaExterna;
	}
}
