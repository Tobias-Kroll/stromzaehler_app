import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EingabenSeite extends StatelessWidget {
  const EingabenSeite ({super.key});
  @override
  Widget build(BuildContext context) {
    //Statusleiste nicht mehr transparent
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
    );

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

        child:  Scaffold(
          backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Einageben"),
      ),
      body: const Center(
        child: Text("Hier kommen die Felder"),
      ),
    )
    );
  }

}

