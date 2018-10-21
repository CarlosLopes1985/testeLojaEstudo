package control;

import java.math.BigDecimal;
import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

import org.tempuri.CResultado;
import org.tempuri.CServico;
import org.tempuri.CalcPrecoPrazoWSLocator;
import org.tempuri.CalcPrecoPrazoWSSoap;

import entity.Produto;
import util.Constants;

public class CalculaPrecoFrete {

	public static String calcularValorTotalFrete( Produto prod, String codServ) throws RemoteException, ServiceException{
		
		CalcPrecoPrazoWSSoap soap = new CalcPrecoPrazoWSLocator().getCalcPrecoPrazoWSSoap(); 
		
		CResultado resultado = soap.calcPrecoPrazo( Constants.USER_SERV_CALC_FRETE, 
													Constants.PASSWORD_SERV_CALC_FRETE, 
													Constants.NCOD_SERV_CALC_FRETE_SEDEX, 
													"70002900", 
													"21635380", 
													prod.getPeso().toString(), 
													Constants.FORMATO_SERV_CALC_FRETE_CAIXA, 
													prod.getComprimento(), 
													prod.getAltura()     , 
													prod.getLargura()    , 
													prod.getDiametro()   , 
													Constants.SCODMAOPROPRA, 
													new BigDecimal(0), 
													Constants.AVISORECEBIMENTO); 

		org.tempuri.CServico[] service = resultado.getServicos();
		
		String preco ="";
		for (int i=0; i<service.length; i++) {
			CServico servico = (CServico) service[i];
				
				preco = servico.getValor();
				
				
				System.out.println(servico.getCodigo());
				System.out.println(servico.getValor());
				System.out.println(servico.getPrazoEntrega());


		}
		return preco;
		
	}
}
