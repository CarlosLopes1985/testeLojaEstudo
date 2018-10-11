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









