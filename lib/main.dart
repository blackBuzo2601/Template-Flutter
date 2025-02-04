import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//mainApp está heredando de alguna clase nombrada StateLessWidget (sin estado),
//lo que indicia que no podemos hacer ninguna funcion que cambien los datos
class MainApp extends StatelessWidget {
  //la siguiente linea de codigo, es el constructor, puesto que tiene EL MISMO NOMBRE DE LA CLASE
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: Container(
              width: double.infinity,
              height: 80,
              color: Colors.orange,
            ),
            appBar: AppBar(
              backgroundColor: Colors.orange,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    height: 150,
                    child: Text(
                      "01",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 99, 99, 99),
                          fontWeight: FontWeight.normal,
                          fontSize: 100),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 275,
                      child: Image.asset("assets/imagen.PNG")),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    width: double.infinity,
                    height: 227,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 116, 116, 116)),
                          "Te gusta programar. Te gusta jugar videojuegos. Ers un estudiante capaz. Tu puedes",
                          textAlign: TextAlign.justify,
                        ),
                        Container(
                          width: 250,
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 87, 196, 210),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "NEXT",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
