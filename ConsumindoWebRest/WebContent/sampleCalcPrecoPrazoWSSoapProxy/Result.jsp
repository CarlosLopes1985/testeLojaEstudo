<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleCalcPrecoPrazoWSSoapProxyid" scope="session" class="org.tempuri.CalcPrecoPrazoWSSoapProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleCalcPrecoPrazoWSSoapProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleCalcPrecoPrazoWSSoapProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleCalcPrecoPrazoWSSoapProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        org.tempuri.CalcPrecoPrazoWSSoap getCalcPrecoPrazoWSSoap10mtemp = sampleCalcPrecoPrazoWSSoapProxyid.getCalcPrecoPrazoWSSoap();
if(getCalcPrecoPrazoWSSoap10mtemp == null){
%>
<%=getCalcPrecoPrazoWSSoap10mtemp %>
<%
}else{
        if(getCalcPrecoPrazoWSSoap10mtemp!= null){
        String tempreturnp11 = getCalcPrecoPrazoWSSoap10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String nCdEmpresa_1id=  request.getParameter("nCdEmpresa18");
            java.lang.String nCdEmpresa_1idTemp = null;
        if(!nCdEmpresa_1id.equals("")){
         nCdEmpresa_1idTemp  = nCdEmpresa_1id;
        }
        String sDsSenha_2id=  request.getParameter("sDsSenha20");
            java.lang.String sDsSenha_2idTemp = null;
        if(!sDsSenha_2id.equals("")){
         sDsSenha_2idTemp  = sDsSenha_2id;
        }
        String nCdServico_3id=  request.getParameter("nCdServico22");
            java.lang.String nCdServico_3idTemp = null;
        if(!nCdServico_3id.equals("")){
         nCdServico_3idTemp  = nCdServico_3id;
        }
        String sCepOrigem_4id=  request.getParameter("sCepOrigem24");
            java.lang.String sCepOrigem_4idTemp = null;
        if(!sCepOrigem_4id.equals("")){
         sCepOrigem_4idTemp  = sCepOrigem_4id;
        }
        String sCepDestino_5id=  request.getParameter("sCepDestino26");
            java.lang.String sCepDestino_5idTemp = null;
        if(!sCepDestino_5id.equals("")){
         sCepDestino_5idTemp  = sCepDestino_5id;
        }
        String nVlPeso_6id=  request.getParameter("nVlPeso28");
            java.lang.String nVlPeso_6idTemp = null;
        if(!nVlPeso_6id.equals("")){
         nVlPeso_6idTemp  = nVlPeso_6id;
        }
        String nCdFormato_7id=  request.getParameter("nCdFormato30");
        int nCdFormato_7idTemp  = Integer.parseInt(nCdFormato_7id);
        String nVlComprimento_8id=  request.getParameter("nVlComprimento32");
            java.math.BigDecimal nVlComprimento_8idTemp = null;
        if(!nVlComprimento_8id.equals("")){
         nVlComprimento_8idTemp  = new java.math.BigDecimal(nVlComprimento_8id);
        }
        String nVlAltura_9id=  request.getParameter("nVlAltura34");
            java.math.BigDecimal nVlAltura_9idTemp = null;
        if(!nVlAltura_9id.equals("")){
         nVlAltura_9idTemp  = new java.math.BigDecimal(nVlAltura_9id);
        }
        String nVlLargura_10id=  request.getParameter("nVlLargura36");
            java.math.BigDecimal nVlLargura_10idTemp = null;
        if(!nVlLargura_10id.equals("")){
         nVlLargura_10idTemp  = new java.math.BigDecimal(nVlLargura_10id);
        }
        String nVlDiametro_11id=  request.getParameter("nVlDiametro38");
            java.math.BigDecimal nVlDiametro_11idTemp = null;
        if(!nVlDiametro_11id.equals("")){
         nVlDiametro_11idTemp  = new java.math.BigDecimal(nVlDiametro_11id);
        }
        String sCdMaoPropria_12id=  request.getParameter("sCdMaoPropria40");
            java.lang.String sCdMaoPropria_12idTemp = null;
        if(!sCdMaoPropria_12id.equals("")){
         sCdMaoPropria_12idTemp  = sCdMaoPropria_12id;
        }
        String nVlValorDeclarado_13id=  request.getParameter("nVlValorDeclarado42");
            java.math.BigDecimal nVlValorDeclarado_13idTemp = null;
        if(!nVlValorDeclarado_13id.equals("")){
         nVlValorDeclarado_13idTemp  = new java.math.BigDecimal(nVlValorDeclarado_13id);
        }
        String sCdAvisoRecebimento_14id=  request.getParameter("sCdAvisoRecebimento44");
            java.lang.String sCdAvisoRecebimento_14idTemp = null;
        if(!sCdAvisoRecebimento_14id.equals("")){
         sCdAvisoRecebimento_14idTemp  = sCdAvisoRecebimento_14id;
        }
        org.tempuri.CResultado calcPrecoPrazo13mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrecoPrazo(nCdEmpresa_1idTemp,sDsSenha_2idTemp,nCdServico_3idTemp,sCepOrigem_4idTemp,sCepDestino_5idTemp,nVlPeso_6idTemp,nCdFormato_7idTemp,nVlComprimento_8idTemp,nVlAltura_9idTemp,nVlLargura_10idTemp,nVlDiametro_11idTemp,sCdMaoPropria_12idTemp,nVlValorDeclarado_13idTemp,sCdAvisoRecebimento_14idTemp);
if(calcPrecoPrazo13mtemp == null){
%>
<%=calcPrecoPrazo13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrecoPrazo13mtemp != null){
org.tempuri.CServico[] typeservicos16 = calcPrecoPrazo13mtemp.getServicos();
        String tempservicos16 = null;
        if(typeservicos16 != null){
        java.util.List listservicos16= java.util.Arrays.asList(typeservicos16);
        tempservicos16 = listservicos16.toString();
        }
        %>
        <%=tempservicos16%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 46:
        gotMethod = true;
        String nCdEmpresa_15id=  request.getParameter("nCdEmpresa51");
            java.lang.String nCdEmpresa_15idTemp = null;
        if(!nCdEmpresa_15id.equals("")){
         nCdEmpresa_15idTemp  = nCdEmpresa_15id;
        }
        String sDsSenha_16id=  request.getParameter("sDsSenha53");
            java.lang.String sDsSenha_16idTemp = null;
        if(!sDsSenha_16id.equals("")){
         sDsSenha_16idTemp  = sDsSenha_16id;
        }
        String nCdServico_17id=  request.getParameter("nCdServico55");
            java.lang.String nCdServico_17idTemp = null;
        if(!nCdServico_17id.equals("")){
         nCdServico_17idTemp  = nCdServico_17id;
        }
        String sCepOrigem_18id=  request.getParameter("sCepOrigem57");
            java.lang.String sCepOrigem_18idTemp = null;
        if(!sCepOrigem_18id.equals("")){
         sCepOrigem_18idTemp  = sCepOrigem_18id;
        }
        String sCepDestino_19id=  request.getParameter("sCepDestino59");
            java.lang.String sCepDestino_19idTemp = null;
        if(!sCepDestino_19id.equals("")){
         sCepDestino_19idTemp  = sCepDestino_19id;
        }
        String nVlPeso_20id=  request.getParameter("nVlPeso61");
            java.lang.String nVlPeso_20idTemp = null;
        if(!nVlPeso_20id.equals("")){
         nVlPeso_20idTemp  = nVlPeso_20id;
        }
        String nCdFormato_21id=  request.getParameter("nCdFormato63");
        int nCdFormato_21idTemp  = Integer.parseInt(nCdFormato_21id);
        String nVlComprimento_22id=  request.getParameter("nVlComprimento65");
            java.math.BigDecimal nVlComprimento_22idTemp = null;
        if(!nVlComprimento_22id.equals("")){
         nVlComprimento_22idTemp  = new java.math.BigDecimal(nVlComprimento_22id);
        }
        String nVlAltura_23id=  request.getParameter("nVlAltura67");
            java.math.BigDecimal nVlAltura_23idTemp = null;
        if(!nVlAltura_23id.equals("")){
         nVlAltura_23idTemp  = new java.math.BigDecimal(nVlAltura_23id);
        }
        String nVlLargura_24id=  request.getParameter("nVlLargura69");
            java.math.BigDecimal nVlLargura_24idTemp = null;
        if(!nVlLargura_24id.equals("")){
         nVlLargura_24idTemp  = new java.math.BigDecimal(nVlLargura_24id);
        }
        String nVlDiametro_25id=  request.getParameter("nVlDiametro71");
            java.math.BigDecimal nVlDiametro_25idTemp = null;
        if(!nVlDiametro_25id.equals("")){
         nVlDiametro_25idTemp  = new java.math.BigDecimal(nVlDiametro_25id);
        }
        String sCdMaoPropria_26id=  request.getParameter("sCdMaoPropria73");
            java.lang.String sCdMaoPropria_26idTemp = null;
        if(!sCdMaoPropria_26id.equals("")){
         sCdMaoPropria_26idTemp  = sCdMaoPropria_26id;
        }
        String nVlValorDeclarado_27id=  request.getParameter("nVlValorDeclarado75");
            java.math.BigDecimal nVlValorDeclarado_27idTemp = null;
        if(!nVlValorDeclarado_27id.equals("")){
         nVlValorDeclarado_27idTemp  = new java.math.BigDecimal(nVlValorDeclarado_27id);
        }
        String sCdAvisoRecebimento_28id=  request.getParameter("sCdAvisoRecebimento77");
            java.lang.String sCdAvisoRecebimento_28idTemp = null;
        if(!sCdAvisoRecebimento_28id.equals("")){
         sCdAvisoRecebimento_28idTemp  = sCdAvisoRecebimento_28id;
        }
        String sDtCalculo_29id=  request.getParameter("sDtCalculo79");
            java.lang.String sDtCalculo_29idTemp = null;
        if(!sDtCalculo_29id.equals("")){
         sDtCalculo_29idTemp  = sDtCalculo_29id;
        }
        org.tempuri.CResultado calcPrecoPrazoData46mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrecoPrazoData(nCdEmpresa_15idTemp,sDsSenha_16idTemp,nCdServico_17idTemp,sCepOrigem_18idTemp,sCepDestino_19idTemp,nVlPeso_20idTemp,nCdFormato_21idTemp,nVlComprimento_22idTemp,nVlAltura_23idTemp,nVlLargura_24idTemp,nVlDiametro_25idTemp,sCdMaoPropria_26idTemp,nVlValorDeclarado_27idTemp,sCdAvisoRecebimento_28idTemp,sDtCalculo_29idTemp);
if(calcPrecoPrazoData46mtemp == null){
%>
<%=calcPrecoPrazoData46mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrecoPrazoData46mtemp != null){
org.tempuri.CServico[] typeservicos49 = calcPrecoPrazoData46mtemp.getServicos();
        String tempservicos49 = null;
        if(typeservicos49 != null){
        java.util.List listservicos49= java.util.Arrays.asList(typeservicos49);
        tempservicos49 = listservicos49.toString();
        }
        %>
        <%=tempservicos49%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 81:
        gotMethod = true;
        String nCdEmpresa_30id=  request.getParameter("nCdEmpresa86");
            java.lang.String nCdEmpresa_30idTemp = null;
        if(!nCdEmpresa_30id.equals("")){
         nCdEmpresa_30idTemp  = nCdEmpresa_30id;
        }
        String sDsSenha_31id=  request.getParameter("sDsSenha88");
            java.lang.String sDsSenha_31idTemp = null;
        if(!sDsSenha_31id.equals("")){
         sDsSenha_31idTemp  = sDsSenha_31id;
        }
        String nCdServico_32id=  request.getParameter("nCdServico90");
            java.lang.String nCdServico_32idTemp = null;
        if(!nCdServico_32id.equals("")){
         nCdServico_32idTemp  = nCdServico_32id;
        }
        String sCepOrigem_33id=  request.getParameter("sCepOrigem92");
            java.lang.String sCepOrigem_33idTemp = null;
        if(!sCepOrigem_33id.equals("")){
         sCepOrigem_33idTemp  = sCepOrigem_33id;
        }
        String sCepDestino_34id=  request.getParameter("sCepDestino94");
            java.lang.String sCepDestino_34idTemp = null;
        if(!sCepDestino_34id.equals("")){
         sCepDestino_34idTemp  = sCepDestino_34id;
        }
        String nVlPeso_35id=  request.getParameter("nVlPeso96");
            java.lang.String nVlPeso_35idTemp = null;
        if(!nVlPeso_35id.equals("")){
         nVlPeso_35idTemp  = nVlPeso_35id;
        }
        String nCdFormato_36id=  request.getParameter("nCdFormato98");
        int nCdFormato_36idTemp  = Integer.parseInt(nCdFormato_36id);
        String nVlComprimento_37id=  request.getParameter("nVlComprimento100");
            java.math.BigDecimal nVlComprimento_37idTemp = null;
        if(!nVlComprimento_37id.equals("")){
         nVlComprimento_37idTemp  = new java.math.BigDecimal(nVlComprimento_37id);
        }
        String nVlAltura_38id=  request.getParameter("nVlAltura102");
            java.math.BigDecimal nVlAltura_38idTemp = null;
        if(!nVlAltura_38id.equals("")){
         nVlAltura_38idTemp  = new java.math.BigDecimal(nVlAltura_38id);
        }
        String nVlLargura_39id=  request.getParameter("nVlLargura104");
            java.math.BigDecimal nVlLargura_39idTemp = null;
        if(!nVlLargura_39id.equals("")){
         nVlLargura_39idTemp  = new java.math.BigDecimal(nVlLargura_39id);
        }
        String nVlDiametro_40id=  request.getParameter("nVlDiametro106");
            java.math.BigDecimal nVlDiametro_40idTemp = null;
        if(!nVlDiametro_40id.equals("")){
         nVlDiametro_40idTemp  = new java.math.BigDecimal(nVlDiametro_40id);
        }
        String sCdMaoPropria_41id=  request.getParameter("sCdMaoPropria108");
            java.lang.String sCdMaoPropria_41idTemp = null;
        if(!sCdMaoPropria_41id.equals("")){
         sCdMaoPropria_41idTemp  = sCdMaoPropria_41id;
        }
        String nVlValorDeclarado_42id=  request.getParameter("nVlValorDeclarado110");
            java.math.BigDecimal nVlValorDeclarado_42idTemp = null;
        if(!nVlValorDeclarado_42id.equals("")){
         nVlValorDeclarado_42idTemp  = new java.math.BigDecimal(nVlValorDeclarado_42id);
        }
        String sCdAvisoRecebimento_43id=  request.getParameter("sCdAvisoRecebimento112");
            java.lang.String sCdAvisoRecebimento_43idTemp = null;
        if(!sCdAvisoRecebimento_43id.equals("")){
         sCdAvisoRecebimento_43idTemp  = sCdAvisoRecebimento_43id;
        }
        String sDtCalculo_44id=  request.getParameter("sDtCalculo114");
            java.lang.String sDtCalculo_44idTemp = null;
        if(!sDtCalculo_44id.equals("")){
         sDtCalculo_44idTemp  = sDtCalculo_44id;
        }
        org.tempuri.CResultado calcPrecoPrazoRestricao81mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrecoPrazoRestricao(nCdEmpresa_30idTemp,sDsSenha_31idTemp,nCdServico_32idTemp,sCepOrigem_33idTemp,sCepDestino_34idTemp,nVlPeso_35idTemp,nCdFormato_36idTemp,nVlComprimento_37idTemp,nVlAltura_38idTemp,nVlLargura_39idTemp,nVlDiametro_40idTemp,sCdMaoPropria_41idTemp,nVlValorDeclarado_42idTemp,sCdAvisoRecebimento_43idTemp,sDtCalculo_44idTemp);
if(calcPrecoPrazoRestricao81mtemp == null){
%>
<%=calcPrecoPrazoRestricao81mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrecoPrazoRestricao81mtemp != null){
org.tempuri.CServico[] typeservicos84 = calcPrecoPrazoRestricao81mtemp.getServicos();
        String tempservicos84 = null;
        if(typeservicos84 != null){
        java.util.List listservicos84= java.util.Arrays.asList(typeservicos84);
        tempservicos84 = listservicos84.toString();
        }
        %>
        <%=tempservicos84%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 116:
        gotMethod = true;
        String nCdEmpresa_45id=  request.getParameter("nCdEmpresa121");
            java.lang.String nCdEmpresa_45idTemp = null;
        if(!nCdEmpresa_45id.equals("")){
         nCdEmpresa_45idTemp  = nCdEmpresa_45id;
        }
        String sDsSenha_46id=  request.getParameter("sDsSenha123");
            java.lang.String sDsSenha_46idTemp = null;
        if(!sDsSenha_46id.equals("")){
         sDsSenha_46idTemp  = sDsSenha_46id;
        }
        String nCdServico_47id=  request.getParameter("nCdServico125");
            java.lang.String nCdServico_47idTemp = null;
        if(!nCdServico_47id.equals("")){
         nCdServico_47idTemp  = nCdServico_47id;
        }
        String sCepOrigem_48id=  request.getParameter("sCepOrigem127");
            java.lang.String sCepOrigem_48idTemp = null;
        if(!sCepOrigem_48id.equals("")){
         sCepOrigem_48idTemp  = sCepOrigem_48id;
        }
        String sCepDestino_49id=  request.getParameter("sCepDestino129");
            java.lang.String sCepDestino_49idTemp = null;
        if(!sCepDestino_49id.equals("")){
         sCepDestino_49idTemp  = sCepDestino_49id;
        }
        String nVlPeso_50id=  request.getParameter("nVlPeso131");
            java.lang.String nVlPeso_50idTemp = null;
        if(!nVlPeso_50id.equals("")){
         nVlPeso_50idTemp  = nVlPeso_50id;
        }
        String nCdFormato_51id=  request.getParameter("nCdFormato133");
        int nCdFormato_51idTemp  = Integer.parseInt(nCdFormato_51id);
        String nVlComprimento_52id=  request.getParameter("nVlComprimento135");
            java.math.BigDecimal nVlComprimento_52idTemp = null;
        if(!nVlComprimento_52id.equals("")){
         nVlComprimento_52idTemp  = new java.math.BigDecimal(nVlComprimento_52id);
        }
        String nVlAltura_53id=  request.getParameter("nVlAltura137");
            java.math.BigDecimal nVlAltura_53idTemp = null;
        if(!nVlAltura_53id.equals("")){
         nVlAltura_53idTemp  = new java.math.BigDecimal(nVlAltura_53id);
        }
        String nVlLargura_54id=  request.getParameter("nVlLargura139");
            java.math.BigDecimal nVlLargura_54idTemp = null;
        if(!nVlLargura_54id.equals("")){
         nVlLargura_54idTemp  = new java.math.BigDecimal(nVlLargura_54id);
        }
        String nVlDiametro_55id=  request.getParameter("nVlDiametro141");
            java.math.BigDecimal nVlDiametro_55idTemp = null;
        if(!nVlDiametro_55id.equals("")){
         nVlDiametro_55idTemp  = new java.math.BigDecimal(nVlDiametro_55id);
        }
        String sCdMaoPropria_56id=  request.getParameter("sCdMaoPropria143");
            java.lang.String sCdMaoPropria_56idTemp = null;
        if(!sCdMaoPropria_56id.equals("")){
         sCdMaoPropria_56idTemp  = sCdMaoPropria_56id;
        }
        String nVlValorDeclarado_57id=  request.getParameter("nVlValorDeclarado145");
            java.math.BigDecimal nVlValorDeclarado_57idTemp = null;
        if(!nVlValorDeclarado_57id.equals("")){
         nVlValorDeclarado_57idTemp  = new java.math.BigDecimal(nVlValorDeclarado_57id);
        }
        String sCdAvisoRecebimento_58id=  request.getParameter("sCdAvisoRecebimento147");
            java.lang.String sCdAvisoRecebimento_58idTemp = null;
        if(!sCdAvisoRecebimento_58id.equals("")){
         sCdAvisoRecebimento_58idTemp  = sCdAvisoRecebimento_58id;
        }
        org.tempuri.CResultado calcPreco116mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPreco(nCdEmpresa_45idTemp,sDsSenha_46idTemp,nCdServico_47idTemp,sCepOrigem_48idTemp,sCepDestino_49idTemp,nVlPeso_50idTemp,nCdFormato_51idTemp,nVlComprimento_52idTemp,nVlAltura_53idTemp,nVlLargura_54idTemp,nVlDiametro_55idTemp,sCdMaoPropria_56idTemp,nVlValorDeclarado_57idTemp,sCdAvisoRecebimento_58idTemp);
if(calcPreco116mtemp == null){
%>
<%=calcPreco116mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPreco116mtemp != null){
org.tempuri.CServico[] typeservicos119 = calcPreco116mtemp.getServicos();
        String tempservicos119 = null;
        if(typeservicos119 != null){
        java.util.List listservicos119= java.util.Arrays.asList(typeservicos119);
        tempservicos119 = listservicos119.toString();
        }
        %>
        <%=tempservicos119%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 149:
        gotMethod = true;
        String nCdEmpresa_59id=  request.getParameter("nCdEmpresa154");
            java.lang.String nCdEmpresa_59idTemp = null;
        if(!nCdEmpresa_59id.equals("")){
         nCdEmpresa_59idTemp  = nCdEmpresa_59id;
        }
        String sDsSenha_60id=  request.getParameter("sDsSenha156");
            java.lang.String sDsSenha_60idTemp = null;
        if(!sDsSenha_60id.equals("")){
         sDsSenha_60idTemp  = sDsSenha_60id;
        }
        String nCdServico_61id=  request.getParameter("nCdServico158");
            java.lang.String nCdServico_61idTemp = null;
        if(!nCdServico_61id.equals("")){
         nCdServico_61idTemp  = nCdServico_61id;
        }
        String sCepOrigem_62id=  request.getParameter("sCepOrigem160");
            java.lang.String sCepOrigem_62idTemp = null;
        if(!sCepOrigem_62id.equals("")){
         sCepOrigem_62idTemp  = sCepOrigem_62id;
        }
        String sCepDestino_63id=  request.getParameter("sCepDestino162");
            java.lang.String sCepDestino_63idTemp = null;
        if(!sCepDestino_63id.equals("")){
         sCepDestino_63idTemp  = sCepDestino_63id;
        }
        String nVlPeso_64id=  request.getParameter("nVlPeso164");
            java.lang.String nVlPeso_64idTemp = null;
        if(!nVlPeso_64id.equals("")){
         nVlPeso_64idTemp  = nVlPeso_64id;
        }
        String nCdFormato_65id=  request.getParameter("nCdFormato166");
        int nCdFormato_65idTemp  = Integer.parseInt(nCdFormato_65id);
        String nVlComprimento_66id=  request.getParameter("nVlComprimento168");
            java.math.BigDecimal nVlComprimento_66idTemp = null;
        if(!nVlComprimento_66id.equals("")){
         nVlComprimento_66idTemp  = new java.math.BigDecimal(nVlComprimento_66id);
        }
        String nVlAltura_67id=  request.getParameter("nVlAltura170");
            java.math.BigDecimal nVlAltura_67idTemp = null;
        if(!nVlAltura_67id.equals("")){
         nVlAltura_67idTemp  = new java.math.BigDecimal(nVlAltura_67id);
        }
        String nVlLargura_68id=  request.getParameter("nVlLargura172");
            java.math.BigDecimal nVlLargura_68idTemp = null;
        if(!nVlLargura_68id.equals("")){
         nVlLargura_68idTemp  = new java.math.BigDecimal(nVlLargura_68id);
        }
        String nVlDiametro_69id=  request.getParameter("nVlDiametro174");
            java.math.BigDecimal nVlDiametro_69idTemp = null;
        if(!nVlDiametro_69id.equals("")){
         nVlDiametro_69idTemp  = new java.math.BigDecimal(nVlDiametro_69id);
        }
        String sCdMaoPropria_70id=  request.getParameter("sCdMaoPropria176");
            java.lang.String sCdMaoPropria_70idTemp = null;
        if(!sCdMaoPropria_70id.equals("")){
         sCdMaoPropria_70idTemp  = sCdMaoPropria_70id;
        }
        String nVlValorDeclarado_71id=  request.getParameter("nVlValorDeclarado178");
            java.math.BigDecimal nVlValorDeclarado_71idTemp = null;
        if(!nVlValorDeclarado_71id.equals("")){
         nVlValorDeclarado_71idTemp  = new java.math.BigDecimal(nVlValorDeclarado_71id);
        }
        String sCdAvisoRecebimento_72id=  request.getParameter("sCdAvisoRecebimento180");
            java.lang.String sCdAvisoRecebimento_72idTemp = null;
        if(!sCdAvisoRecebimento_72id.equals("")){
         sCdAvisoRecebimento_72idTemp  = sCdAvisoRecebimento_72id;
        }
        String sDtCalculo_73id=  request.getParameter("sDtCalculo182");
            java.lang.String sDtCalculo_73idTemp = null;
        if(!sDtCalculo_73id.equals("")){
         sDtCalculo_73idTemp  = sDtCalculo_73id;
        }
        org.tempuri.CResultado calcPrecoData149mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrecoData(nCdEmpresa_59idTemp,sDsSenha_60idTemp,nCdServico_61idTemp,sCepOrigem_62idTemp,sCepDestino_63idTemp,nVlPeso_64idTemp,nCdFormato_65idTemp,nVlComprimento_66idTemp,nVlAltura_67idTemp,nVlLargura_68idTemp,nVlDiametro_69idTemp,sCdMaoPropria_70idTemp,nVlValorDeclarado_71idTemp,sCdAvisoRecebimento_72idTemp,sDtCalculo_73idTemp);
if(calcPrecoData149mtemp == null){
%>
<%=calcPrecoData149mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrecoData149mtemp != null){
org.tempuri.CServico[] typeservicos152 = calcPrecoData149mtemp.getServicos();
        String tempservicos152 = null;
        if(typeservicos152 != null){
        java.util.List listservicos152= java.util.Arrays.asList(typeservicos152);
        tempservicos152 = listservicos152.toString();
        }
        %>
        <%=tempservicos152%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 184:
        gotMethod = true;
        String nCdServico_74id=  request.getParameter("nCdServico189");
            java.lang.String nCdServico_74idTemp = null;
        if(!nCdServico_74id.equals("")){
         nCdServico_74idTemp  = nCdServico_74id;
        }
        String sCepOrigem_75id=  request.getParameter("sCepOrigem191");
            java.lang.String sCepOrigem_75idTemp = null;
        if(!sCepOrigem_75id.equals("")){
         sCepOrigem_75idTemp  = sCepOrigem_75id;
        }
        String sCepDestino_76id=  request.getParameter("sCepDestino193");
            java.lang.String sCepDestino_76idTemp = null;
        if(!sCepDestino_76id.equals("")){
         sCepDestino_76idTemp  = sCepDestino_76id;
        }
        org.tempuri.CResultado calcPrazo184mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrazo(nCdServico_74idTemp,sCepOrigem_75idTemp,sCepDestino_76idTemp);
if(calcPrazo184mtemp == null){
%>
<%=calcPrazo184mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrazo184mtemp != null){
org.tempuri.CServico[] typeservicos187 = calcPrazo184mtemp.getServicos();
        String tempservicos187 = null;
        if(typeservicos187 != null){
        java.util.List listservicos187= java.util.Arrays.asList(typeservicos187);
        tempservicos187 = listservicos187.toString();
        }
        %>
        <%=tempservicos187%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 195:
        gotMethod = true;
        String nCdServico_77id=  request.getParameter("nCdServico200");
            java.lang.String nCdServico_77idTemp = null;
        if(!nCdServico_77id.equals("")){
         nCdServico_77idTemp  = nCdServico_77id;
        }
        String sCepOrigem_78id=  request.getParameter("sCepOrigem202");
            java.lang.String sCepOrigem_78idTemp = null;
        if(!sCepOrigem_78id.equals("")){
         sCepOrigem_78idTemp  = sCepOrigem_78id;
        }
        String sCepDestino_79id=  request.getParameter("sCepDestino204");
            java.lang.String sCepDestino_79idTemp = null;
        if(!sCepDestino_79id.equals("")){
         sCepDestino_79idTemp  = sCepDestino_79id;
        }
        String sDtCalculo_80id=  request.getParameter("sDtCalculo206");
            java.lang.String sDtCalculo_80idTemp = null;
        if(!sDtCalculo_80id.equals("")){
         sDtCalculo_80idTemp  = sDtCalculo_80id;
        }
        org.tempuri.CResultado calcPrazoData195mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrazoData(nCdServico_77idTemp,sCepOrigem_78idTemp,sCepDestino_79idTemp,sDtCalculo_80idTemp);
if(calcPrazoData195mtemp == null){
%>
<%=calcPrazoData195mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrazoData195mtemp != null){
org.tempuri.CServico[] typeservicos198 = calcPrazoData195mtemp.getServicos();
        String tempservicos198 = null;
        if(typeservicos198 != null){
        java.util.List listservicos198= java.util.Arrays.asList(typeservicos198);
        tempservicos198 = listservicos198.toString();
        }
        %>
        <%=tempservicos198%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 208:
        gotMethod = true;
        String nCdServico_81id=  request.getParameter("nCdServico213");
            java.lang.String nCdServico_81idTemp = null;
        if(!nCdServico_81id.equals("")){
         nCdServico_81idTemp  = nCdServico_81id;
        }
        String sCepOrigem_82id=  request.getParameter("sCepOrigem215");
            java.lang.String sCepOrigem_82idTemp = null;
        if(!sCepOrigem_82id.equals("")){
         sCepOrigem_82idTemp  = sCepOrigem_82id;
        }
        String sCepDestino_83id=  request.getParameter("sCepDestino217");
            java.lang.String sCepDestino_83idTemp = null;
        if(!sCepDestino_83id.equals("")){
         sCepDestino_83idTemp  = sCepDestino_83id;
        }
        String sDtCalculo_84id=  request.getParameter("sDtCalculo219");
            java.lang.String sDtCalculo_84idTemp = null;
        if(!sDtCalculo_84id.equals("")){
         sDtCalculo_84idTemp  = sDtCalculo_84id;
        }
        org.tempuri.CResultado calcPrazoRestricao208mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrazoRestricao(nCdServico_81idTemp,sCepOrigem_82idTemp,sCepDestino_83idTemp,sDtCalculo_84idTemp);
if(calcPrazoRestricao208mtemp == null){
%>
<%=calcPrazoRestricao208mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrazoRestricao208mtemp != null){
org.tempuri.CServico[] typeservicos211 = calcPrazoRestricao208mtemp.getServicos();
        String tempservicos211 = null;
        if(typeservicos211 != null){
        java.util.List listservicos211= java.util.Arrays.asList(typeservicos211);
        tempservicos211 = listservicos211.toString();
        }
        %>
        <%=tempservicos211%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 221:
        gotMethod = true;
        String nCdServico_85id=  request.getParameter("nCdServico226");
            java.lang.String nCdServico_85idTemp = null;
        if(!nCdServico_85id.equals("")){
         nCdServico_85idTemp  = nCdServico_85id;
        }
        String nVlPeso_86id=  request.getParameter("nVlPeso228");
            java.lang.String nVlPeso_86idTemp = null;
        if(!nVlPeso_86id.equals("")){
         nVlPeso_86idTemp  = nVlPeso_86id;
        }
        String strDataCalculo_87id=  request.getParameter("strDataCalculo230");
            java.lang.String strDataCalculo_87idTemp = null;
        if(!strDataCalculo_87id.equals("")){
         strDataCalculo_87idTemp  = strDataCalculo_87id;
        }
        org.tempuri.CResultado calcPrecoFAC221mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcPrecoFAC(nCdServico_85idTemp,nVlPeso_86idTemp,strDataCalculo_87idTemp);
if(calcPrecoFAC221mtemp == null){
%>
<%=calcPrecoFAC221mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicos:</TD>
<TD>
<%
if(calcPrecoFAC221mtemp != null){
org.tempuri.CServico[] typeservicos224 = calcPrecoFAC221mtemp.getServicos();
        String tempservicos224 = null;
        if(typeservicos224 != null){
        java.util.List listservicos224= java.util.Arrays.asList(typeservicos224);
        tempservicos224 = listservicos224.toString();
        }
        %>
        <%=tempservicos224%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 232:
        gotMethod = true;
        String codigoObjeto_88id=  request.getParameter("codigoObjeto237");
            java.lang.String codigoObjeto_88idTemp = null;
        if(!codigoObjeto_88id.equals("")){
         codigoObjeto_88idTemp  = codigoObjeto_88id;
        }
        org.tempuri.CResultadoObjeto calcDataMaxima232mtemp = sampleCalcPrecoPrazoWSSoapProxyid.calcDataMaxima(codigoObjeto_88idTemp);
if(calcDataMaxima232mtemp == null){
%>
<%=calcDataMaxima232mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">objetos:</TD>
<TD>
<%
if(calcDataMaxima232mtemp != null){
org.tempuri.CObjeto[] typeobjetos235 = calcDataMaxima232mtemp.getObjetos();
        String tempobjetos235 = null;
        if(typeobjetos235 != null){
        java.util.List listobjetos235= java.util.Arrays.asList(typeobjetos235);
        tempobjetos235 = listobjetos235.toString();
        }
        %>
        <%=tempobjetos235%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 239:
        gotMethod = true;
        org.tempuri.CResultadoServicos listaServicos239mtemp = sampleCalcPrecoPrazoWSSoapProxyid.listaServicos();
if(listaServicos239mtemp == null){
%>
<%=listaServicos239mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicosCalculo:</TD>
<TD>
<%
if(listaServicos239mtemp != null){
org.tempuri.CServicosCalculo[] typeservicosCalculo242 = listaServicos239mtemp.getServicosCalculo();
        String tempservicosCalculo242 = null;
        if(typeservicosCalculo242 != null){
        java.util.List listservicosCalculo242= java.util.Arrays.asList(typeservicosCalculo242);
        tempservicosCalculo242 = listservicosCalculo242.toString();
        }
        %>
        <%=tempservicosCalculo242%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 244:
        gotMethod = true;
        org.tempuri.CResultadoServicos listaServicosSTAR244mtemp = sampleCalcPrecoPrazoWSSoapProxyid.listaServicosSTAR();
if(listaServicosSTAR244mtemp == null){
%>
<%=listaServicosSTAR244mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">servicosCalculo:</TD>
<TD>
<%
if(listaServicosSTAR244mtemp != null){
org.tempuri.CServicosCalculo[] typeservicosCalculo247 = listaServicosSTAR244mtemp.getServicosCalculo();
        String tempservicosCalculo247 = null;
        if(typeservicosCalculo247 != null){
        java.util.List listservicosCalculo247= java.util.Arrays.asList(typeservicosCalculo247);
        tempservicosCalculo247 = listservicosCalculo247.toString();
        }
        %>
        <%=tempservicosCalculo247%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>