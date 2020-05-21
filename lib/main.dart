import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Olá mundo'),
    );
  }
}