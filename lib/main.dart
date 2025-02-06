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
              backgroundColor: Colors.green,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromARGB(255, 136, 178, 213),
              child: Column(
                children: [
                  Text("hola"),
                  Text("hola"),
                  Text("hola"),
                ],
              ),
            )));
  }
}
