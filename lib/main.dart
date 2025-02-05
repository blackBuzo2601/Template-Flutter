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
            body: Column(
              children: [
                Text("Imagenes pa"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        child: Image.network(
                          "https://media.tenor.com/UbtVks4zby0AAAAM/ghost.gif",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        child: Image.network(
                          "https://i.gifer.com/2PCh.gif",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        child: Image.network(
                          "https://i.gifer.com/wfV.gif",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        child: Image.network(
                          "https://i.gifer.com/2p4Z.gif",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
