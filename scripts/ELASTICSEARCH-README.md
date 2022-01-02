## ElasticSearch

#### Configurando o ElasticSearch via Docker

```
docker container run 
  --name es 
  -d 
  -p 9200:9200 
  --restart=always 
  -e "http.host=0.0.0.0" 
  -e "transport.host=127.0.0.1" 
  docker.elastic.co/elasticsearch/elasticsearch:7.5.2
```

#### Configurando o Kibana via Docker

```
docker container run 
  --name kibana 
  -d
  --restart=always
  --link es:elasticsearch 
  -p 5601:5601 
  docker.elastic.co/kibana/kibana:7.5.2
```

#### Incluindo um registro via Kibana

```
POST catalago/_doc/
{
  "firstName": "Mauricio",
  "lastName": "Aniche",
  "createdAt": "2020-02-10",
  "skills": ["Java", "TDD", "Testes", "R"],
  "background_exp": "Computer Science",
  "state": "SP",
  "city": "Sao Paulo",
  "country": "Brazil"
}
```

#### Pagination

size: tamanho da página
from: deslocamento


