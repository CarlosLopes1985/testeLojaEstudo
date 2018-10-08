<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="mb" scope="request" class="manager.ManagerBean"></jsp:useBean>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jqu
ery-ui.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="pagPrincipal.css" />



</head>

<body>
	
	<header>
		<h4 align="right">Varejão do artesanato - Pinturas, Esculturas, Pulseiras</h4>
	</header>
	
	<input type="checkbox" id="chk"> 
		<label for="chk" class="menu-icon">&#9776;</label>
		<div class="bg"></div>
		<nav class="menu" id="principal">
			<ul>
				<li><a href="" class="voltar">Voltar</a></li>
				<li><a href="#">Home</a></li>
				<li><a href="#">Fórum</a></li>
				<li><a href="#cursos">Cursos<span>+</span></a></li>
				<li><a href="#">Sobre</a></li>
				<li><a href="#contato">Contato<span>+</span></a></li>
			</ul>
		</nav>
		
		<nav class="menu" id="cursos">
			<ul>
				<li><a href="#" class="voltar">Voltar</a></li>
				<li><a href="#">Pintura</a></li>
				<li><a href="#">Esculturas</a></li>
			
			</ul>
		
		</nav>
		
		<nav class="menu" id="contato">
			<ul>
				<li><a href="#" class="voltar">Voltar</a></li>
				<li><a href="#">Email</a></li>
				<li><a href="#">Facebook</a></li>
			
			</ul>
		
		</nav>
		
		<form method="post" action="Controller" name="myForm">
				<table>
					<thead>
					 
						<tr>
							<td width="50px" hidden="true"><b>Id</b></td>
							<td width="150px"hidden="true"><b>Nome</b></td>
							<td width="150px"hidden="true"><b>Preco</b></td>
							<td width="150px"hidden="true"><b>Imagem</b></td>

							<td width="50px" hidden="true"><b>Adicionar</b></td>
						</tr>
						 
					</thead>

					<tbody>
						<c:forEach items="${mb.listaExterna}" var="lista"
							varStatus="index">
							<tr>
								<td width="50px" hidden="true">${lista.idProduto}</td>
							</tr>	
							
							<tr>
								<td width="150px">${lista.nome}</td>
							</tr>
							
							<tr>
								<td width="150px"><img src="${lista.imagem}" width="80px"
									height="80px"></td>
							</tr>
							
							<tr>
								<td width="150px">R$ ${lista.preco}</td>
							</tr>
							
							<tr>
								<td width="50px"><input type="checkbox" id="compra"
									name="compra" value="${lista}" /> Adicionar</td>
								<!-- o que ele irá mandar é o compra -->
							</tr>
						
						</c:forEach>
					</tbody>
				</table>

				<fieldset style="width: 300px">
					<legend>Dados do Comprador</legend>
					<br />
					<label>Nome</label><br /> <input type="text" name="nome" id="nome"
						value="" size="50" /> <br />
					<label>Email</label><br /> <input type="text" name="email"
						id="email" value="" size="50" /> <br />
					<button id="btn1" type="submit">Enviar os Dados</button>
				</fieldset>
			</form>
</body>
</html>