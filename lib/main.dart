// Projeto conecta_app com internet
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const ConectaApp());

Future<List<dynamic>> buscarPosts() async {
  final uri = Uri.parse('http://jsonplaceholder.typicode.com/posts');
  final resposta = await http.get(uri).timeout(const Duration(seconds: 12));

  // 200
  if (resposta.statusCode != 200) {
    // A execução será percebida pelo FutureBuilder como erro
    throw Exception('Falha na requisição HTTP(${resposta.statusCode})');
  }

  // Transforma o JSON em dados Dart (Lista)
  return jsonDecode(resposta.body) as List<dynamic>;
}

class ConectaApp extends StatelessWidget {
  const ConectaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conecta App',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 132, 20, 245),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  final List<Map<String, dynamic>> posts = const [
    {
      'id': '1',
      'title': 'primeira publicação',
      'body': 'Conteúdo local da aula.',
    },
    {
      'id': '2',
      'title': 'Aprendendo flutter',
      'body': 'Em breve, estes dados virão da internet.',
    },
  ];

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<List<dynamic>> posts;

  @override
  void initState() {
    super.initState(); // mantém a inicialização da classe
    posts = buscarPosts(); // inicia a consulta ao abrir a tela
  } // faz a requisição quando o úsuario toca o icone de atualizar
    // o estado do flutter deve ser resconstruído.

  void atualizarPosts() {
    setState(() {
      posts = buscarPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
