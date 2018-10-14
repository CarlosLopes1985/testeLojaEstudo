use workshop1;


registro1={ id:1 ,data : Date(),
            codigo:100,nome:"livroDeitelC",preco: 100 };
registro2={ id:2 ,data : Date(), 
           codigo:101,nome:"livroJava",preco: 150 };

           

db.cesta.insert(registro1);
db.cesta.insert(registro2);


db.cesta.find();
db.cesta.find().pretty();

--apagar a tabela
--db.cesta.drop();
--db.dropDatabase();

create database lojaArtesanato;

use lojaArtesanato;

create table itemPedido(
	idVenda int primary key auto_increment,
	idProduto int not null, 
	idCliente int not null,
	enderecoEntrega int not null
);

create table produto(
	idProduto int primary key auto_increment,
	nome varchar(50) unique,
	preco double,
	quantidadeEstoque int,
	imagem varchar(100)
);

create table pedido(
	idPedido int primary key auto_increment,
	dataPedido date
);

insert into produto values(null,"livroJavaOracle",200,10,"img/1.jpg");
insert into produto values(null,"livroDeitel",200,10,"img/2.jpg");
insert into produto values(null,"livroJS",200,10,"img/3.jpg");
insert into produto values(null,"livroFrintEnd",200,10,"img/4.jpg");
insert into produto values(null,"livroJaspion",200,10,"img/5.jpg");




