# Desafio DevOps & Cloud

## Docker Hub
[Link da Imagem no Docker Hub] [https://chat.deepseek.com/a/chat/s/425bd0ef-986f-44f5-bced-2b2adc996ce4]

## Comandos Docker:

1. Criar imagem versionada:
```dockerfile
docker build -t fabiocaettano74/conversao-distancia-desafio:v01 .
```

2. Versão latest:
```
docker tag fabiocaettano74/conversao-distancia-desafio:v01 fabiocaettano74/conversao-distancia-desafio:latest
```

3. Visualizar imagens:
```
docker image ls
```

4. Criar o container para testar aplicação:
```
docker container run -d -p 5000:5000 fabiocaettano74/conversao-distancia-desafio:latest
```

5. Checar se o container está em execução:
```
docker container ps
```

6. Checar container criados:
```
docker container ps -a
```

7. Subir aplicação para para o docker hub:
```
docker login
docker fabiocaettano74/conversao-distancia-desafio:v01
docker push fabiocaettano74/conversao-distancia-desafio:latest
```

8. Verificar erros no container^:
```
docker container logs idDoContainer
```

9. Deletar imagens ou container:
```
docker container rm -f idDoContainer
docker image rm -f idDaImagem
```



