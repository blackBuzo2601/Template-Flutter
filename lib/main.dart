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
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.black,
                leading: Icon(
                  Icons.theaters_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  textAlign: TextAlign.end,
                  "KaelusTV Plus ",
                  style: TextStyle(
                      fontFamily: "Times New Roman",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.greenAccent,
              child: Column(
                //COLUMNA HIJA DEL CONTENEDOR RAIZ (BODY)
                children: [
                  Container(
                    //Seccion TOP 10
                    width: double.infinity,
                    height: 350,
                    color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top 10 en Kaelus esta semana",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "sans-serif",
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                height: 250,
                                color: Colors.black,
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
