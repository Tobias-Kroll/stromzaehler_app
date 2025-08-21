import 'dart:math';

import 'package:flutter/material.dart';


//--------------------------------------------------------------------------
void main() {
  runApp(const MyApp()); //Einstiegspunkt der App
}
//--------------------------------------------------------------------------

//--------------------------------------------------------------------------
// 2) My App - Root-Widget der App
//    - Baut das Grundgerüst (MaterialApp)
//    - Legt globales Theme fest
//    - Entscheidet welches Widget die Startseite ist (home)
//-------------------------------------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,
          //brightness: Brightness.light,
        //)
      //),
      home : const MyHomePage(),
    );
  }
}
//---------------------------------------------------------------
// 3) MyHomePage - eine einzelne Seite der App
//    - StatefulWidget, weil hier später Zustände geändert werden
//    - Bekommt Inhalt über State _MyHomePageState
//--------------------------------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//--------------------------------------------------------------------------
// 4) _MyHomePageState - beschreibt, wie MyHomePage aussieht
//    - Hier das UI mit Scaffold bauen
//    - Scaffold = Seiten-Layout (AppBar, Body, FloatingActionButton,....)
//--------------------------------------------------------------------------
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Background.png'),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 200,
            title: Column(
              mainAxisSize: MainAxisSize.min, // nicht die ganze Höhe füllen
              children: [

               Image.asset(
                      'assets/images/AppBarImage.png',
                      height: 100, // kleiner als 100, passt besser in die AppBar
                      width: 100,

               ),
                SizedBox(height: 10),
                const Text('Stromzähler',
                            style: TextStyle(fontSize: 25,
                                             fontWeight: FontWeight.bold,
                                             color: Color(0xFF546E7A),
                                  ),

                ),

              ],
            ),

        ),
        body: Center(


            child: Container(
              width: double.infinity, // volle Breite
              height: double.infinity, // volle Höhe
              color: Colors.transparent,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),

              child: Column(

                children: [
                  Expanded(
                  child: Container(

                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration:  BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    top: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                    left: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                    right: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),


                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 3,
                        blurRadius: 5,       // optional: macht die Kante weicher
                        offset: Offset(0, 3) // optional: verschiebt den Schatten
                    ),
                  ],
                ),
                  ),
                  ),

                  Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                        left: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                        right: BorderSide(color: Colors.lightBlue.shade200, width: 2),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),

                      boxShadow: [
                        BoxShadow(
                            color: Colors.transparent,
                            spreadRadius: 3,
                            blurRadius: 5,       // optional: macht die Kante weicher
                            offset: Offset(0, 3) // optional: verschiebt den Schatten
                        ),
                      ],
                    ),
                  ),
                  ),

                ],
              ),// same as Colors.blue[500] or Colors.blue.shade500
            ),

        ),

        // <-- echter Footer
        bottomNavigationBar: Container(
          height: 56,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: const Text('Footer', style: TextStyle(color: Colors.black)),
        ),

      ), );
  }
}