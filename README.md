# Desafio DevOps & Cloud

## Criar imagem versionada:
```dockerfile
docker build -t fabiocaettano/conversao-distancia-desafio:v01 .
```

## Versão latest:
```
docker tag fabiocaettano/conversao-distancia-desafio:v01 fabiocaettano/conversao-distancia-desafio:latest
```

## Visualizar imagens:
```
docker image ls
```

## Criar o container:
```
docker container run -d -p 5000:5000 fabiocaettano/conversao-distancia-desafio:latest
```


