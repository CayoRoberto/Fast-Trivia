import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questionario extends StatefulWidget {
  const Questionario({Key? key}) : super(key: key);

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
           // border: Border.all(width: 3, color: Colors.pink),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xffa87ed8),Color(0xff0273bc)]
            )
        ),
        child: Column(
          children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //margin: EdgeInsets.all(20),
                  height: 130.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    //color: Color(0xffa87ed8),
                    //  border: Border.all(width: 3, color: Colors.red)
                  ),
                  child: Image.asset(
                    "imagens/logotipo.png",
                  ),

                ),

                Container(
                  //margin: EdgeInsets.all(20),
                  height: 240.0,
                  width: 340.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                   // border: Border.all(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quais o menor e o maior país do mundo?",
                       // textAlign: TextAlign.center,
                      )
                    ],
                  ),

                ),
              ],
            )

          ),


            Container(

                padding: EdgeInsets.all(20),
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                //    border: Border.all(width: 3, color: Colors.green)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                      child:  ElevatedButton(
                        onPressed: (){},
                        child: Text(
                            "Vaticano e Rússia",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            minimumSize: Size(400, 40)

                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                            "Malta e Estados Unidos",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0) 
                            ),
                            minimumSize: Size(400, 40)

                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                            "São Marino e Índia",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)
                            ),
                            minimumSize: Size(400, 40)

                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                            "Mônaco e Canadá",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)
                            ),
                            minimumSize: Size(400, 40)

                        ),

                      ),
                    ),
                  ],
                )

            )
          ],
        ),
      ),
    );
  }
}
