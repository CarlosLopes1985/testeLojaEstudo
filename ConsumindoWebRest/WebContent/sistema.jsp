<!DOCTYPE html >
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
</head>
<body>
<!-- Nav bar cabeçalho da página Inicio -->
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Varejão do artesanato</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
	
		<input type="checkbox" id="chk"> <label for="chk" class="menu-icon">&#9776;</label>
		<div class="bg"></div>
		<nav class="menu" id="principal">
			<ul>
				<li><a href="" class="voltar">Voltar</a></li>
				<li><a href="">Home</a></li>
				<li><a href="">Fórum</a></li>
				<li><a href="">Cursos<span>+</span></a></li>
				<li><a href="">Sobre</a></li>
				<li><a href="">Contato<span>+</span></a></li>
			</ul>
		</nav>
	</nav>
    
    
    
    <!-- Nav bar cabeçalho da página Fim -->
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">Produtos</a></li>
			<li><a href="#tabs-2">Cliente</a></li>
			<li><a href="#tabs-3">Relacionamento</a></li>
		</ul>
		<div id="tabs-1">
			<form method="post" action="Controller" name="myForm">
				<table border="0" style="background-color: #ddd">
					<thead>
						<tr>
							<td width="50px"><b>Id</b></td>
							<td width="150px"><b>Nome</b></td>
							<td width="150px"><b>Preco</b></td>
							<td width="150px"><b>Imagem</b></td>

							<td width="50px"><b>Compra</b></td>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${mb.listaExterna}" var="lista"
							varStatus="index">
							<tr>
								<td width="50px">${lista.idProduto}</td>
								<td width="150px">${lista.nome}</td>
								<td width="150px">${lista.preco}</td>
								<td width="150px"><img src="${lista.imagem}" width="80px"
									height="80px"></td>
								<td width="50px"><input type="checkbox" id="compra"
									name="compra" value="${lista}" /></td>
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
		</div>
		<div id="tabs-2">Parte de Cliente</div>
		<div id="tabs-3">Relacionamento</div>
	</div>
</body>
<script>
 $(document).ready(function(){
 $("#tabs").tabs();
 });
</script>
</html>