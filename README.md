# DevOps - Teste
Acreditamos que DevOps deixou de ser tendência e passou a ser um fator de competitividade das empresas.

Aqui está o que gostaríamos de ver:

1 - Infraestrutura como Código (Terraform/CloudFormation/Chef/Ansible/Puppet)

2 - Pipeline CI/CD (CircleCI/TravisCI/GitlabCI/Jenkins/Bamboo) 

3 - Docker/Container (Dockerfile/ECS/Minikube/Kubernetes) 

4 - Monitoramento (CloudWatch/Graylog/ElasticSearch/Kibana) 

5 - Cloud (AWS/Azure/GCP) 

6 - Git (Github/Gitlab/BitBucket) 

### Para o desafio você é livre para utilizar as ferramentas que fique confortável para você.

Seu desafio é criar um pipeline para implementação da aplicação de forma automatizada e disponibilizar acesso via web.

* Recomendamos a criação de uma conta de nível gratuito(free tier) para não incorrer em custos.

## Desafio:

Estamos testando sua capacidade de implementar infraestrutura automatizada moderna, bem como conhecimentos gerais sobre administração de sistemas. Na sua solução, você deve enfatizar a legibilidade, a manutenção e as metodologias de DevOps.

1 - Criar um Dockerfile para rodar uma aplicação a sua escolha. Recomendamos o NodeJS do diretório /app.

2 - Criar um Pipeline com os passos abaixo(Checkout/Test/Deploy). Recomendamos CircleCI.

2.1 - Checkout -> Checkout do Código

2.2 - Test -> Teste com output "Fake test" ou o teste da sua aplicação.

2.3 - Deploy -> Criar um script para implementar de forma automatizada a aplicação. Deploy deve ser feito via pipeline no local 
de sua escolha. Recomendamos AWS (EC2, ECS, Fargate, Beanstalk, etc).

3 - Criar a Infraestrurura como Código. Recomendamos terraform.

4 - Disponibilizar uma URL/IP com o retorno do Aplicação "Hello World! {hostname}!".

## Envie sua solução
Crie um repositório público(recomendamos o Github). Preferimos ver um histórico de tentativa e erro do que um único push. Quando terminar, envie-nos a URL do repositório do git e URL/IP da aplicação.

### Executando aplicação em NodeJS no diretório /app.
Essa é uma aplicação NodeJS.

- `npm test` Roda o Fake test da aplicação
- `npm start` Inicia a aplicação na porta 3000
- `(http://3.226.114.13:3000/)` Site com o projeto online

## Bônus
Converter os dados da Receita Federal para CVS e dispobinilizar no local a sua escolha. Recomendamos um Bucket S3.

Dados: http://200.152.38.155/CNPJ/DADOS_ABERTOS_CNPJ_01.zip -> esta em manutenção 😞

Dados Receita: http://receita.economia.gov.br/orientacao/tributaria/cadastros/cadastro-nacional-de-pessoas-juridicas-cnpj/dados-publicos-cnpj

https://github.com/fabioserpa/CNPJ-full
