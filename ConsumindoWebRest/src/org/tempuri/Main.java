package org.tempuri;

import java.io.IOException;
import java.math.BigDecimal;

public class Main {
	public static void main(String[] args) {		

		try {

		java.lang.String nCdEmpresa="09146920";
		java.lang.String sDsSenha="123456";
		java.lang.String nCdServico="04014";
		java.lang.String sCepOrigem="70002900"; 
		java.lang.String sCepDestino="71939360"; 
		java.lang.String nVlPeso="10"; 
		int nCdFormato=1; 
		java.math.BigDecimal nVlComprimento    =new BigDecimal(30); 
		java.math.BigDecimal nVlAltura         =new BigDecimal(30);
		java.math.BigDecimal nVlLargura        = new BigDecimal(30); 
		java.math.BigDecimal nVlDiametro       = new BigDecimal(0); 
		java.lang.String sCdMaoPropria         ="n"; 
		java.math.BigDecimal nVlValorDeclarado = new BigDecimal(30);
		java.lang.String sCdAvisoRecebimento   ="n";			

		CalcPrecoPrazoWSSoap soap = new CalcPrecoPrazoWSLocator().getCalcPrecoPrazoWSSoap(); 

		CResultado resultado = soap.calcPrecoPrazo(nCdEmpresa, sDsSenha, nCdServico, sCepOrigem, sCepDestino, nVlPeso, nCdFormato, nVlComprimento, nVlAltura, nVlLargura, 
				nVlDiametro, sCdMaoPropria, nVlValorDeclarado, sCdAvisoRecebimento); 


		org.tempuri.CServico[] service = resultado.getServicos();

		for (int i=0; i<service.length; i++) {
			CServico servico = (CServico) service[i];

				System.out.println(servico.getCodigo());
				System.out.println(servico.getValor());
				System.out.println(servico.getPrazoEntrega());


		}


		}catch (IOException e) {
			throw new RuntimeException(e);

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			//connection.disconnect();
		}			
	}}