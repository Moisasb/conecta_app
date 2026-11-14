# Conecta App — Consumo de API com Flutter

Aplicativo de estudo desenvolvido com Flutter para praticar requisições HTTP e exibição de dados recebidos de um serviço externo.

## Objetivo

Entender o fluxo de uma integração mobile: realizar uma requisição à internet, verificar o resultado, converter o JSON em dados Dart e preparar a interface para apresentar as informações.

## Funcionalidades e conceitos identificados

- Consulta de publicações no serviço JSONPlaceholder.
- Requisição HTTP GET usando o pacote `http`.
- Conversão da resposta JSON com `jsonDecode`.
- Tratamento de falhas HTTP.
- Definição de tempo limite para a requisição.
- Exemplo adicional com lista local de publicações e construção de cards com ListView.

## Organização

O projeto possui uma implementação principal em `lib/main.dart` e uma versão de exercício em `lib/aula1.dart`, com dados locais para praticar a construção de listas.

## Tecnologias

- Dart
- Flutter
- Material Design 3
- Pacote http
- JSON
- Future e programação assíncrona

## Como executar

```bash
flutter pub get
flutter run
```

Para testar a consulta externa, é necessário acesso à internet. O endereço consultado no código é o endpoint de posts do JSONPlaceholder.

## Aprendizados

O projeto trabalha programação assíncrona com Future, consumo de API REST, leitura de JSON e apresentação de coleções em componentes Flutter.

## Repositório

[github.com/Moisasb/conecta_app](https://github.com/Moisasb/conecta_app)
