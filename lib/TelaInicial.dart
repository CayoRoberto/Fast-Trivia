import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9455ef),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
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

                  ),
                  obscureText: true,

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
                    primary: Color(0xff2e61ac)

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextButton(
                  child: Text(
                      "Esqueceu a sua senha?",
                    style: TextStyle(
                      color: Color(0xff2e61ac)
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
                          color: Color(0xff2e61ac)
                      ),
                    ),
                    onPressed:(){

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
