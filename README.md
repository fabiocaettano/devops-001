# Desafio DevOps & Cloud

## Criar imagem versionada:
```dockerfile
docker build -t fabiocaettano74/conversao-distancia-desafio:v01 .
```

## Versão latest:
```
docker tag fabiocaettano74/conversao-distancia-desafio:v01 fabiocaettano74/conversao-distancia-desafio:latest
```

## Visualizar imagens:
```
docker image ls
```

## Criar o container para testar aplicação:
```
docker container run -d -p 5000:5000 fabiocaettano74/conversao-distancia-desafio:latest
```

## Checar se o container está em execução:
```
docker container ps
```

# Suber aplicação para para o docker hub:
```
docker login
docker fabiocaettano74/conversao-distancia-desafio:v01
docker push fabiocaettano74/conversao-distancia-desafio:latest
```

# Verificar erros no container^:
```
docker container logs idDoContainer
```


