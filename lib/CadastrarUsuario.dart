import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarUsuario extends StatefulWidget {
  const CadastrarUsuario({Key? key}) : super(key: key);

  @override
  State<CadastrarUsuario> createState() => _CadastrarUsuarioState();
}

class _CadastrarUsuarioState extends State<CadastrarUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Fast Trivia"),
      //   backgroundColor: Color(0xff2e61ac),
      // ),
      backgroundColor: Color(0xff03aeef),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            //border: Border.all(width: 3, color: Colors.amber),
            image: DecorationImage(
                image: AssetImage("imagens/background.png"),
                fit: BoxFit.cover
            ),
          ),
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
                    labelText: "Nome do Usuário:",
                  ),
                ),
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
                    labelText: "Criar senha:",

                  ),
                  obscureText: true,

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
                    labelText: "Confirmar senha:",

                  ),
                  obscureText: true,

                ),
              ),
              ElevatedButton(
                onPressed: (){

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
                    primary: Color(0xff2e61ac)
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
    );
  }
}
