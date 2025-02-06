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
              color: Colors.black,
              
            )));
  }
}

class SingleMovie extends StatelessWidget {
  final String tituloPelicula;
  final String estrellas;
  final String rutaPelicula;

  const SingleMovie({
    required this.tituloPelicula,
    required this.estrellas,
    required this.rutaPelicula,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 150,
      height: 380,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 200,
            width: double.infinity,
            child: Image.asset(
              rutaPelicula,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 100,
              color: const Color.fromARGB(255, 49, 50, 49),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color.fromARGB(255, 240, 255, 24),
                      ),
                      Text(
                        estrellas,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Times New Roman",
                            color: const Color.fromARGB(255, 153, 153, 153),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    tituloPelicula,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(247, 236, 234, 234)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(214, 93, 93, 93),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 140,
                            child: Text(
                              textAlign: TextAlign.center,
                              "Donde verla",
                              style: TextStyle(
                                  fontFamily: "serif",
                                  color: Colors.blueAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(214, 93, 93, 93),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 140,
                            child: Text(
                              textAlign: TextAlign.center,
                              "Trailer",
                              style: TextStyle(
                                  fontFamily: "serif",
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
