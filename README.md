
# Projeto de Testes de API Marvel Comics

Este projeto tem o objetivo de realizar testes de API utilizando Ruby, Cucumber e HTTParty para interagir com a API da Marvel Comics.

![Ícone do Ruby](https://raw.githubusercontent.com/github/explore/main/topics/ruby/ruby.png)

## Requisitos

- Ruby (versão 3.0 ou superior)
- Docker (opcional, para execução em contêiner)

## Configuração do Ambiente

1. **Instalação de Dependências**

   Antes de executar os testes, é necessário instalar as dependências do projeto. Execute o comando abaixo no terminal:

   ```bash
   bundle install
   ```

   Isso instalará todas as gems necessárias, incluindo Cucumber e HTTParty.

2. **Configuração da Chave da API da Marvel**

   Você precisará obter uma chave de API da Marvel Comics para autenticação. Siga as instruções em [http://developer.marvel.com/](http://developer.marvel.com/) para obter a sua chave.

   Em seguida, atualize a variável `@api_key` no arquivo `comics_steps.rb` com a sua chave.

3. **Autenticação para Aplicações no Lado do Servidor**
  
  Aplicações no lado do servidor devem enviar dois parâmetros adicionais além do parâmetro apikey:

    ts - um registro de data/hora (ou outra string longa que pode mudar a cada requisição)
    hash - um digest MD5 do parâmetro ts, sua chave privada e sua chave pública (ex: md5(ts+chavePrivada+chavePública))
  
  Por exemplo, um usuário com uma chave pública "1234" e uma chave privada "abcd" poderia construir uma chamada válida da seguinte forma: http://gateway.marvel.com/v1/public/comics?ts=1&apikey=1234&hash=ffd275c5130566a2916217b101f26150 (o valor do hash é o digest MD5 de 1abcd1234).

  Para gerar o MD5 você pode acessar https://cryptii.com/pipes/md5-hash e passar suas informações conforme ilustrado acima.



## Executando os Testes

Para rodar os testes, você pode usar o comando:

```bash
cucumber
```

Isso iniciará a execução dos cenários de teste definidos no diretório `features`.

## Analisando a Execução dos Testes

Ao final da execução dos testes, um relatório será gerado na pasta `report`. Abra e analise a execução.


# Autor


`Gustavo Thizon Waterkemper (https://www.linkedin.com/in/gustavo-thizon/)`

