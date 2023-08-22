import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CadastrarUsuario extends StatefulWidget {
  const CadastrarUsuario({Key? key}) : super(key: key);

  @override
  State<CadastrarUsuario> createState() => _CadastrarUsuarioState();
}

class _CadastrarUsuarioState extends State<CadastrarUsuario> {

  //pegar a informacao
  TextEditingController _nomeUsuarioController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _confirmarSenhaController = TextEditingController();


  bool esconderSenha = true;
  bool esconderSenhaConfirmar = true;
  String _msgSenha = "Verificar senhas:";
  String senhaFinalController = "";

  final formKey = GlobalKey<FormState>();
  final senhaKey = GlobalKey<FormFieldState>();

  void _verificarSenha(){
    if(_confirmarSenhaController != _senhaController){
      setState(() {
        _msgSenha = "Verificar senhas: Não correspondem";
      });

    }else{
      setState(() {
        _msgSenha = "Verificar senhas: Correspondem";
      });
    }
  }

  /*
  _recuperarBancoDados() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "fastrivia.db");
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Fast Trivia"),
      //   backgroundColor: Color(0xff2e61ac),
      // ),
      backgroundColor: Color(0xff0273bc),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            //border: Border.all(width: 3, color: Colors.amber),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffa87ed8),Color(0xff0273bc)]
              )

          ),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [

                Padding(
                    padding: EdgeInsets.only(top: 38, bottom: 15),
                    child: Text(
                      "Criar Conta",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value){
                      if(value == null || value.isEmpty){
                        return "Nome do Usuário obrigatório";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Nome do Usuário:",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value){
                      if(value == null || value.isEmpty){
                        return "E-mail obrigatório";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "E-mail:",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: esconderSenha,
                    controller: _senhaController,
                    validator: (String? value){
                      if(value == null || value.isEmpty){
                        return "Senha obrigatório";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Criar senha:",
                      suffixIcon: InkWell(
                        onTap: (){
                          log("pressed");
                          setState(() {
                            esconderSenha = !esconderSenha;
                          });
                        },
                        child: Icon(esconderSenha ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),


                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: TextFormField(
                    key: senhaKey,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: esconderSenhaConfirmar,
                    controller: _confirmarSenhaController,
                    validator: (String? value){
                      if(value == null || value.isEmpty){
                        return "Confirmar senha obrigatório";
                      }
                    },
                    decoration: InputDecoration(

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Confirmar senha:",
                      suffixIcon: InkWell(
                        onTap: (){
                          log("pressed");
                          setState(() {
                            esconderSenhaConfirmar = !esconderSenhaConfirmar;
                          });
                        },
                        child: Icon(esconderSenhaConfirmar ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    _msgSenha,
                    style: TextStyle(
                        color: Colors.amber
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    formKey.currentState?.validate();
                    print("_confirmarSenhaController " + _confirmarSenhaController.text);
                    print("_senhaController " + _senhaController.text);
                    if(_confirmarSenhaController.text != _senhaController.text){
                      setState(() {
                        _msgSenha = "Verificar senhas: Não correspondem";
                      });
                    }else{
                      senhaFinalController = _senhaController.text;
                      setState(() {
                        _msgSenha = "Verificar senhas: Correspondem";
                      });
                    }
                  },
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      primary: Color(0xff7ebee7)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextButton(
                      child: Text(
                        "Possuo cadastro",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed:(){
                        Navigator.pop(context);
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
