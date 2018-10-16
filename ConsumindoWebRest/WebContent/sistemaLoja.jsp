<!doctype html>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<title>Cesta de Compras</title>

<script>
$(document).ready(function(){
	 //entrada 
	var produtos=[];
	var listaProdutos="";

	//saida (volto nela)
	//Inicializa a cesta
	var cesta={
		 lstprodutos : [],
		 produtosHTML : [],
		 tbody :"",
		 total :0.
	}	
	
	function iniciar(){
		url='Controle';		
		$.get(url,function(data, status){
			produtos= JSON.parse(data);
			listaProdutos="";
			montarListaProdutos(produtos);
			$(".btn1").on('click',function(){
			   adicionarAoCarrinho($(this), produtos);
			}); 			
		});
	}
	 
	function montarListaProdutos(produtos){
		$.each(produtos, function(key, value){
			//alert(produtos[key].nome);
        listaProdutos = "<tr>" +
		   	"<td class=tcodigo>"+ value.codigo + "</td>"+
		   	"<td class=timg><img height='80px' width='80px' class='imagem img-thumbnail' src='img/"+value.codigo+".jpg'"+"</td>"+
		   	"<td class=tnome>"+ value.nome + "</td>"+
		   	"<td class=tpreco>"+ value.preco + "</td>"+
			"<td><button class='btn1 btn btn-default' title='Adicionar ao carrinho'><span class='glyphicon glyphicon-plus-sign'></span> Add</button></td>"+
		   	"</tr>";          
    	$("#itens tbody").append(listaProdutos);
     	});     
	}       
	
	function adicionarAoCarrinho(botao, produtos){
	  var pcodigo = botao.parent().parent().find(".tcodigo").text();
	  var pnome = 	botao.parent().parent().find(".tnome").text();
	  var ppreco = 	botao.parent().parent().find(".tpreco").text();
	  var pimagem = botao.parent().parent().find(".tcodigo").text() + ".jpg";
		 alert(pcodigo + pnome);
	//eu vou enviar para o Servlet...	 
	cesta.lstprodutos.push({codigo : pcodigo, nome : pnome, preco : ppreco});
	 var parte='<tr><td id="codigo">' + pcodigo + '</td>'
	  + '<td><img height="80px" width="80px" class="imagem img-thumbnail" src="img/' + pimagem + '"></td>'
	  + '<td>'+ pnome +'</td>'
	  + '<td>R$'+ ppreco +'</td>'
	  + '</tr>';  
  	cesta.total += parseFloat(ppreco);
  
  	//tabela
  	cesta.produtosHTML.push(parte);
  
  	cesta.tbody= ',' + cesta.produtosHTML; 
  	//alert(cesta.tbody);
  	cesta.tbody=  cesta.tbody.split(",").join("");
 	// alert(cesta.tbody);
  	$("#total").text("Total : R$"+ cesta.total + ",00");
   	$("#cesta tbody").html(cesta.tbody);
}	
	iniciar();
	
	$("#limpar").on('click',function(){
		 cesta.produtosHTML = [];
		 $("#cesta tbody > tr").remove();
		 cesta.total =0;
		 cesta.lstprodutos = [];
		 $("#total").html("Total :R$0");
	});
	
	
	$("#enviar").on('click',function(){
		url='Controle';
		$.post(url,"produtos=" +
		 JSON.stringify(cesta.lstprodutos), function(data){
			$("#mostrafim").html(data);
		});		
	});	
});
</script>


</head>
<body>


<div class="container">
	<div class="well">
		<h3><img src="img/cart.png">&nbsp; Loja de artesanato - Cesta de Compras</h3>
	</div>
	
<div class="row">
		<div class="col-md-6 col-md-offset-1">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#produtos" data-toggle="tab">
					<i	class="fa fa-list"></i> Produtos</a></li>
				<li><a href="#carrinho" data-toggle="tab">
				<i	class="fa fa-cart-plus"></i> Carrinho</a></li>
				<li><a href="#pagamento" data-toggle="tab">
				<i	class="fa fa-credit-card"></i> Pagamento</a></li>
				</ul>
				
		<div class="tab-content">
				<div id="produtos" class="tab-pane fade in active" >				 		
					<!-- Entrada dos Dados do JSON -->
					<br>
					<div class="panel panel-info">
						<table id="itens" class="table table-striped table-hover">
							<thead>
								<tr>
									<th>Codigo</th>
									<th>Imagem</th>
									<th>Nome</th>
									<th>Preço</th>
									<th>Adicionar</th>
								</tr>
							</thead>			
							<tbody>	
								<!-- OS DADOS SERÃO INSERIDOS AQUI -->		
							</tbody>			
							<tfoot>
								<tr>
									<td colspan="5">
										<button id="limpar" class="btn btn-default">
											<span class="glyphicon glyphicon-trash"></span> 
											Limpar Carrinho</button>
									</td>
								</tr>
							</tfoot>
						</table>		
					</div><!--  FECHA PANEL INFO -->
				</div><!-- FECHA DIV TAB PRODUTOS -->
				
				
				
				
				<div id="carrinho" class="tab-pane fade" >	<br>						
					<!-- Saida conforme voce for clicando em Adicionar -->
					<div class="panel panel-info">
						<table id="cesta" class="table table-striped table-hover">
						  <thead>
						     <tr>
						        <td>Codigo</td>
						        <td>Img</td>
						        <td>Nome</td>
						        <td>Preco</td>
						     </tr>
						  </thead>
						  <tbody>
						  </tbody>
						  <tfoot>
						  <tr>
						   <td colspan="4">
						    <button id="limpar" class="btn btn-default" title="limpa o carrinho">
						    	<span class="glyphicon glyphicon-remove-sign"></span>
						    	 Limpar Carrinho</button>
						    
						   </td> 
						  </tr>  
						  </tfoot>
						 </table>
				</div><!-- FECHA TAB CARRINHO -->
			</div><!-- FECHA TAB CONTENT -->
		</div><!-- FECHA TAB CONTENT -->
	</div><!--  FECHA COLUNA -->
	
	<div class="col-md-3 col-md-offset-1">		
		<div class="panel panel-default">	
			<div class="panel-heading">
			<i class="fa fa-cart-arrow-down"></i>
				 Total das Compras:
			</div>	
			<div class="panel-body">			
				 <div id="total" style="font-size:16pt" class="text-right"></div>
				 <button id="enviar" class="btn btn-default">
				 	<i class="fa fa-paper-plane"></i>
				  Enviar</button>
				 <div id="mostrafim"></div>
			</div>
		 </div>
	</div>	
	
		<div class="col-md-3 col-md-offset-1">		
		<div class="panel panel-default">	
			<div class="panel-heading">
			<i class="fa fa-cart-arrow-down"></i>
				  Frete:
			</div>	
			<div class="panel-body">			
				 <div id="total" style="font-size:16pt" class="text-right"></div>
				 <input type="text" name="cep"/>
				 <br/>
				 <br/>
				 <button id="enviar" class="btn btn-default">
				 	<i class="fa fa-paper-plane"></i>
				  Calcular</button>
				 <div id="mostrafim"></div>
			</div>
		 </div>
	</div>		
	
	
</div><!-- FECHA ROW -->		 
</div><!-- FECHA CONTAINER --> 
</body>
</html>
