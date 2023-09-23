# Use uma imagem base com Ruby e Bundler
FROM ruby:3.0

# Defina o diretório de trabalho no contêiner
WORKDIR /usr/src/app

# Copie o Gemfile e o Gemfile.lock para o diretório de trabalho
COPY Gemfile Gemfile.lock ./

# Instale as dependências do projeto
RUN bundle install

# Execute o comando cucumber para rodar os testes
CMD cucumber