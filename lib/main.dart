import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questinario.dart';
import './resultado.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Azul', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Coelho', 'nota': 5},
        {'texto': 'Gato', 'nota': 3},
        {'texto': 'Leão', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é a sua comida favorita?',
      'respostas': [
        {'texto': 'Macarrão', 'nota': 10},
        {'texto': 'Pizza', 'nota': 5},
        {'texto': 'Lanche', 'nota': 3},
        {'texto': 'Panqueca','nota': 1},
      ]
    }
  ];

  void _responder() {
    setState(() {
      if (temPerguntaSelecionada) {
        _perguntaSelecionada++;
      }
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
