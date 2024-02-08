import 'package:education_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Material(
      child: Container(
          width: screenSize.width,
          height: screenSize.height,
          // Con stack apilamos elements unos sobre otros
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: screenSize.width,
                    height: screenSize.height / 1.6,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: screenSize.width,
                    height: screenSize.height / 1.6,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent.shade400,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(70))),
                    child: Center(
                      // Apuntamos a nuestra ruta de imagenes, accediendo desde los assets en pubspect yaml
                      child: Image.asset(
                        "images/books.png",
                        scale: 0.8,
                      ),
                    ),
                  )
                ],
              ),
              // Cremos align para que este alineado al fondo al centro
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height / 2.66,
                  decoration: BoxDecoration(color: Colors.blueAccent.shade400),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // Creamos un paddin para espaciar elementos de los bordes del contrl
                  padding: EdgeInsets.only(top: 40, bottom: 30),
                  width: screenSize.width,
                  height: screenSize.height / 2.66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70)
                    )
                  ),
                  child: Column(
                    // Creamos una columna para ppoder agregar elements uno abajo del otro
                    children: [
                      Text(
                        "No pares de aprender",
                        style: TextStyle(
                          fontSize: 25, 
                          fontWeight: FontWeight.w600,
                          letterSpacing:1,
                          wordSpacing: 2
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Encuentra todos los cursos de las tecnologias mas nuevas en un solo lugar",
                          // Alineamos al centro  el texto
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color : Colors.black.withOpacity(0.6)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Material(
                        color : Colors.blueAccent.shade400,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric( vertical: 15 , horizontal: 80),
                            child: Text(
                              "Comenzar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22, 
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          )
    );
  }
}
