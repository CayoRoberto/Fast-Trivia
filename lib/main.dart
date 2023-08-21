import 'package:fast_trivia/CadastrarUsuario.dart';
import 'package:fast_trivia/Questionario.dart';
import 'package:fast_trivia/TelaInicial.dart';
import 'package:fast_trivia/TelaPrincipal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaInicial(),
    //home: Questionario(),
    //home: TelaPrincipal(),
    //home: CadastrarUsuario(),
  ));
}

