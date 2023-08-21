import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: ElevatedButton(
                onPressed: (){},
                child: Text(
                    "Iniciar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36
                )
                ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff7ebee7),
                padding: EdgeInsets.all(10)

              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: ElevatedButton(
              onPressed: (){

              },
              child: Text(
                  "Gabarito",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36
                  )
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff7ebee7),
                  padding: EdgeInsets.all(10)

              ),

            ),
          )
        ],
      ),
    );
  }
}
