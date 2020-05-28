import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;

      if (_perguntaSelecionada >= perguntas.length) {
        _perguntaSelecionada = 0;
      }
    });
  }

  @override 
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Azul', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Cachorro', 'Coelho', 'Gato', 'Leão']
      },
      {
        'texto': 'Qual é a sua comida favorita?',
        'respostas': ['Macarrão', 'Pizza', 'Lanche', 'Panqueca']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            new Resposta(perguntas[_perguntaSelecionada]['respostas']['0'], _responder),
            new Resposta(perguntas[_perguntaSelecionada]['respostas']['1'], _responder),
            new Resposta(perguntas[_perguntaSelecionada]['respostas']['2'], _responder),
            new Resposta(perguntas[_perguntaSelecionada]['respostas']['3'], _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }

}