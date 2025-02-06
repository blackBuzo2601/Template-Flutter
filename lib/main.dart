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
              child: SingleChildScrollView(
                child: Column(
                  //COLUMNA HIJA DEL CONTENEDOR RAIZ (BODY)
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7, right: 7),
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      //Seccion TOP 10
                      width: double.infinity,
                      height: 430,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Top 10 en Kaelus esta semana >>",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "sans-serif",
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              //Cada container aqui es una pelicula unica
                              children: [
                                SingleMovie(
                                  tituloPelicula: "Ahsoka Tano",
                                  estrellas: "10",
                                  rutaPelicula: "assets/ahsoka.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Avatar",
                                  estrellas: "7",
                                  rutaPelicula: "assets/avatar.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Avengers Inf...",
                                  estrellas: "10",
                                  rutaPelicula: "assets/avengers.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Batman: El C...",
                                  estrellas: "7.5",
                                  rutaPelicula: "assets/batman.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Los Increíbles",
                                  estrellas: "10",
                                  rutaPelicula: "assets/increibles.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "The Mandal...",
                                  estrellas: "10",
                                  rutaPelicula: "assets/mandalorian.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Super Mario...",
                                  estrellas: "10",
                                  rutaPelicula: "assets/mario.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "MoonKnight",
                                  estrellas: "7",
                                  rutaPelicula: "assets/moon.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Spiderman ",
                                  estrellas: "10",
                                  rutaPelicula: "assets/spiderman.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Spiderman 3",
                                  estrellas: "10",
                                  rutaPelicula: "assets/spiderman3.jpg",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.only(top: 10),
                      //Seccion TOP 10
                      width: double.infinity,
                      height: 470,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.justify,
                            "Añadidos recientemente >>",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "sans-serif",
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Nuevas películas cada semana",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Times New Roman",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SingleMovie(
                                  tituloPelicula: "Star Wars III",
                                  estrellas: "10",
                                  rutaPelicula: "assets/starwars.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Stranger Thi...",
                                  estrellas: "8",
                                  rutaPelicula: "assets/stranger.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Titanic",
                                  estrellas: "10",
                                  rutaPelicula: "assets/titanic.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Toy Story 3",
                                  estrellas: "8",
                                  rutaPelicula: "assets/toystory.jpg",
                                ),
                                SingleMovie(
                                  tituloPelicula: "Venom",
                                  estrellas: "6",
                                  rutaPelicula: "assets/venom.jpg",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.only(top: 10),
                      //Seccion TOP 10
                      width: double.infinity,
                      height: 470,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.justify,
                            "Favoritos de los seguidores ♡",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "sans-serif",
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SingleMovie(
                                    tituloPelicula: "TheLastOfUs",
                                    estrellas: "10",
                                    rutaPelicula: "assets/tlou.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Spiderman 3",
                                    estrellas: "10",
                                    rutaPelicula: "assets/spiderman3.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Ahsoka Tano",
                                    estrellas: "8",
                                    rutaPelicula: "assets/ahsoka.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Super Mario...",
                                    estrellas: "10",
                                    rutaPelicula: "assets/mario.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Star Wars III",
                                    estrellas: "10",
                                    rutaPelicula: "assets/starwars.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Venom",
                                    estrellas: "7.5",
                                    rutaPelicula: "assets/venom.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Avatar",
                                    estrellas: "10",
                                    rutaPelicula: "assets/avatar.jpg"),
                                SingleMovie(
                                    tituloPelicula: "Titanic",
                                    estrellas: "10",
                                    rutaPelicula: "assets/titanic.jpg")
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
