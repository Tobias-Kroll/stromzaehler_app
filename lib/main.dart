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
      debugShowCheckedModeBanner: false,
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
//-------------------------------------
//  4.1) feste Dekoration
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Background.png'),
          fit: BoxFit.cover,
        ),
      ),
//-------------------------------------

      child: Scaffold(
        backgroundColor: Colors.transparent,

//-------------------------------------
//  4.2) Scaffold Appbar
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 200,

//-----------------------------------------------
//    4.2.1) Spalte in Appbar
          title: Column(
              mainAxisSize: MainAxisSize.min, // nicht die ganze Höhe füllen

            children: [
//---------------------------------------------------
//    4.2.1.1) Children Bild -> in Appbar Column
               Image.asset(
                      'assets/images/AppBarImage.png',
                      height: 105,
                      width: 105,
               ),
                SizedBox(height: 5),
//---------------------
//    4.2.1.2) Children Text -> in Appbar
                const Text('Stromzähler',
                            style: TextStyle(fontSize: 30,
                                             fontWeight: FontWeight.bold,
                                             color: Color(0xFF546E7A),
                                  ),
                ),
              ],
            ),
//-----------------------------------------------------
        ),
//-----------------------------------------------------
//----------------------------------------------------
//   4.3) Scaffold body
        body: Center(
//----------------------------------------------------
//   4.3.1) gesamter Body Container
          child: Container(
              width: double.infinity, // volle Breite
              height: double.infinity, // volle Höhe
              color: Colors.transparent,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//----------------------------------------------------
//    4.3.1.1 genutze Spalte im Body Conatiner
              child: Column(
                children: [
//-----------------------------------------------------
//    4.3.1.1.1 erstes Children in Spalte der genutzen Spalte im Conatiner
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
//-----------------------------------------------------
//     4.3.1.1.2 zweites Children in Spalte der genutzen Spalte im Conatiner
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
                            blurRadius: 5,
                            offset: Offset(0, 3)
                        ),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
        ),
//--------------------------------------------------------
//  4.4) Footer
        bottomNavigationBar: Container(
          height: 56,
          color: Colors.transparent,
          alignment: Alignment.center,
          child: const Text('Footer', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
//---------------------------------------------------------
// 4.5) Möglichkeit für Actionbar
//
//
//----------------------------------------------------------
}
//----------------------------------------------------------