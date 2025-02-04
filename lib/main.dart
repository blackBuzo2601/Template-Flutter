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
              backgroundColor: Colors.black,
            ),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Color.fromARGB(255, 140, 170, 222),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: 200, height: 200, color: Colors.orange)
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
