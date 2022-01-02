## MongoDB

#### Configurando o MongoDB via Docker

```
docker container
  run --name mongo
  -p 27017:27017
  -e MONGO_INITDB_ROOT_USERNAME=thiago
  -e MONGO_INITDB_ROOT_PASSWORD=admin
  -d
  mongo
```

#### Executando o MongoDB via Docker no meu usuário

```
docker container
  exec -it mongo
  mongo --host localhost
  -u thiago
  -p root
```

#### Adicionando uma nova colecao e já usando a collection

```
db.createCollection("herois",
use herois;
```

### Inserindo registros no banco

```
db.herois.insertMany([{ nome: "Capitão América", affiliations: "The Avengers" },
{ nome: "Homem de Ferro", affiliations: "The Avengers" },
{ nome: "Thor", affiliations: "The Avengers" },
{ nome: "Hulk", affiliations: "The Avengers" },
{ nome: "Gavião Arqueiro", affiliations: "The Avengers" },
{ nome: "Viúva Negra", affiliations: "The Avengers" },
{ nome: "Feiticeira Escarlate", affiliations: "The Avengers" },
{ nome: "Mercúrio", affiliations: "The Avengers" },
{ nome: "Visão", affiliations: "The Avengers" },
{ nome: "Patriota de Ferro", affiliations: "The Avengers" },
{ nome: "Doutor Estranho", affiliations: "The Avengers" },
{ nome: "Rocket Raccon", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Drax", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Mantis", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Senhor das Estrelas", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Nebulosa", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Capitã Marvel", affiliations: "The Avengers" },
{ nome: "Homem Aranha", affiliations: "The Avengers" },
{ nome: "Groot", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Soldado Invernal", affiliations: "The Avengers" },
{ nome: "Falcão", affiliations: "The Avengers" },
{ nome: "Pantera Negra", affiliations: "The Avengers" },
{ nome: "Homem Formiga", affiliations: "The Avengers" },
{ nome: "Vespa", affiliations: "The Avengers" },
{ nome: "Valquíria", affiliations: "The Avengers" },
{ nome: "Resgate", affiliations: "The Avengers" },
{ nome: "Wong", affiliations: "The Avengers" },
{ nome: "Okoye", affiliations: "The Avengers" },
{ nome: "Shuri", affiliations: "The Avengers" },
{ nome: "Gamora", affiliations: ["The Avengers", "Guardians of Galaxy"] },
{ nome: "Superman", affiliations: "Justice League" },
{ nome: "Batman", affiliations: "Justice League" },
{ nome: "Mulher Maravilha", affiliations: "Justice League" },
{ nome: "Flash", affiliations: "Justice League" },
{ nome: "Aquaman", affiliations: "Justice League" },
{ nome: "Ciborgue", affiliations: "Justice League" },
{ nome: "Lanterna Verde", affiliations: "Justice League" },
{ nome: "Cacador de Marte", affiliations: "Justice League" }]
```

#### Variacoes do Find

```
db.herois.find().pretty()
db.herois.count()
db.herois.findOne()
db.herois.find().sort({nome: -1})
db.herois.find().sort({nome: 1})
db.herois.find().limit(10)
db.herois.find({}, {nome: 1, _id: 0}).pretty()
```

#### Update

```
db.herois.update({ _id: ObjectId("5e10cdb42ddb69198d71a59d")},
  { $set: { idade: 30 }}
```

```
db.herois.update({ idade: 18}, { $set: { idade: 20 }}
```

#### Delete

```
db.herois.remove({ _id: ObjectId("5e10cdb42ddb69198d71a59d")},
```

#### Migrate

````
Aggregate: $unwind

````
