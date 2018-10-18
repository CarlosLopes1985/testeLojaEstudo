<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H1>Inputs</H1>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 13:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdEmpresa:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdEmpresa18" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDsSenha:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDsSenha20" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico22" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem24" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino26" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso28" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdFormato:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdFormato30" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlComprimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlComprimento32" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlAltura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlAltura34" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlLargura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlLargura36" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlDiametro:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlDiametro38" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdMaoPropria:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdMaoPropria40" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlValorDeclarado:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlValorDeclarado42" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdAvisoRecebimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdAvisoRecebimento44" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 46:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdEmpresa:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdEmpresa51" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDsSenha:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDsSenha53" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico55" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem57" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino59" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso61" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdFormato:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdFormato63" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlComprimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlComprimento65" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlAltura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlAltura67" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlLargura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlLargura69" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlDiametro:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlDiametro71" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdMaoPropria:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdMaoPropria73" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlValorDeclarado:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlValorDeclarado75" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdAvisoRecebimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdAvisoRecebimento77" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDtCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDtCalculo79" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 81:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdEmpresa:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdEmpresa86" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDsSenha:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDsSenha88" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico90" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem92" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino94" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso96" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdFormato:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdFormato98" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlComprimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlComprimento100" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlAltura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlAltura102" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlLargura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlLargura104" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlDiametro:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlDiametro106" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdMaoPropria:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdMaoPropria108" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlValorDeclarado:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlValorDeclarado110" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdAvisoRecebimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdAvisoRecebimento112" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDtCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDtCalculo114" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 116:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdEmpresa:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdEmpresa121" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDsSenha:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDsSenha123" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico125" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem127" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino129" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso131" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdFormato:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdFormato133" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlComprimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlComprimento135" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlAltura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlAltura137" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlLargura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlLargura139" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlDiametro:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlDiametro141" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdMaoPropria:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdMaoPropria143" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlValorDeclarado:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlValorDeclarado145" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdAvisoRecebimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdAvisoRecebimento147" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 149:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdEmpresa:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdEmpresa154" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDsSenha:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDsSenha156" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico158" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem160" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino162" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso164" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdFormato:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdFormato166" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlComprimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlComprimento168" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlAltura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlAltura170" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlLargura:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlLargura172" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlDiametro:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlDiametro174" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdMaoPropria:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdMaoPropria176" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlValorDeclarado:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlValorDeclarado178" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCdAvisoRecebimento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCdAvisoRecebimento180" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDtCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDtCalculo182" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 184:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico189" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem191" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino193" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 195:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico200" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem202" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino204" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDtCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDtCalculo206" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 208:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico213" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepOrigem:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepOrigem215" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sCepDestino:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sCepDestino217" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">sDtCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="sDtCalculo219" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 221:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nCdServico:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nCdServico226" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">nVlPeso:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nVlPeso228" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">strDataCalculo:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="strDataCalculo230" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 232:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">codigoObjeto:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="codigoObjeto237" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 239:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 244:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
