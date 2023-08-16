Esse projeto está com uma aplicação para gerar senhas aleatórias desenvolvido em python. 
O Dockerfile foi criado utilizando multstage e seguindo o conceito de Distroless que seria uma imagem mais segura, nesse exemplo estamos utilizando a imagem fornecida pela Chainguard.

Para executar o contêiner, siga estas etapas:

Certifique-se de ter o Docker instalado em seu sistema.

Precisa de um segundo container rodando com o Redis.
docker run --name redis -d redis

Puxe a imagem do Docker do Docker Hub:
docker pull anderdull/linuxtips-giropops-senhas:3.0

Execute o contêiner com o seguinte comando:

docker run -d -p <port>:5000 --name <container_name> --link <redis_container> anderdull/linuxtips-giropops-senhas:3.0

Substitua <port>pelo número da porta que você deseja mapear para a porta 5000 do contêiner.
Substitua <container_name> por um nome para o contêiner.
Substitua <redis_container> pelo nome do contêiner Redis para vincular a funcionalidade específica.
O contêiner agora estará em execução e pronto para gerar senhas aleatórias. Você pode acessar a API do gerador de senhas em http://localhost:<port>/.
