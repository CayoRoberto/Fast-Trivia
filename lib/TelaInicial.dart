import 'dart:developer';

import 'package:fast_trivia/CadastrarUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {

  bool esconderSenha = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff0273bc),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xffa87ed8),Color(0xff0273bc)]
            )
            //border: Border.all(width: 3, color: Colors.amber),
            /*
              image: DecorationImage(
                  image: AssetImage("imagens/background.png"),
                fit: BoxFit.cover
              ),

             */
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Image.asset(("imagens/fast_trivia.png"))
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
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
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: esconderSenha,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Senha:",
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
              ElevatedButton(
                onPressed: (){

                },
                child: Text(
                  "Entrar",
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
                      "Esqueceu a sua senha?",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed:(){

                  }
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextButton(
                    child: Text(
                      "CADASTRE-SE",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CadastrarUsuario()
                            )
                        );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
