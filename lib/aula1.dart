// Projeto conecta_app com internet

import 'package:flutter/material.dart';

void main() => runApp(const ConectaApp());

class ConectaApp extends StatelessWidget {
  const ConectaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conecta App',
      theme: ThemeData(colorSchemeSeed: Colors.deepOrange, useMaterial3: true),
      home: const Homepage(),
    );
  }
}

// Tela inicial da aplicação: Nesta versão não há uma mudança durante o uso

class Homepage extends StatelessWidget {
  const Homepage({super.key}); // encaminha para a chave da classe base
  // List  é uma coleção ordenada
  // Map associa as chaves e seus valores
  // String define o tipo das chaves
  // Dynamic permite tipos de valores
  // final impede a atribuição de uma nova lista
  // posts conteúdo postado na api
  final List<Map<String, dynamic>> posts = const [
    {
      'id': '1',
      'title': 'primeira publicação',
      'body': 'Conteúdo local da aula.',
    },
    {
      'id': '2',
      'title': 'Aprendendo flutter',
      'body': 'Em breve, estes dados vrião da internet.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConectaApp')),
      body: ListView.builder(
        itemCount: posts.length,
        // indica a posição inicial
        itemBuilder: (context, index) {
          final post = posts[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(child: Text('${post['id']}')),
              title: Text('${post['title']}'),
              subtitle: Text('${post['body']}'),
            ),
          );
        },
      ),
    );
  }
}
