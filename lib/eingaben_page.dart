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
      body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),

      child: CustomScrollView(
        //controller: scrollCtrl,
        slivers: [
          SliverToBoxAdapter(
           child: Container(
             decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.black,
                 width: 2,
               ),
               borderRadius: BorderRadius.circular(12),
             ),
             //height: ,
               margin: EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 children: [
                    Text('Turnusregelung'),
                    SizedBox(height: 20,),
                    ExpansionTile(
                       title: Text('Aufklappbar'),
                      children: List.generate(
                      20,
                          (i) => ListTile(
                        leading: Icon(Icons.bolt),
                        title: Text('Eintrag $i'),
                        subtitle: Text('Detail zu Eintrag $i'),
                      ),
                    ),
                   ),
                 ],
               ),
           ),
          ),

          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 200,
            ),
          ),
         
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),

              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text('Zählerstande'),
                  SizedBox(height: 20,),
                  ExpansionTile(
                      title: Text('Aufklappbar')
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      ),
      ),
    );

  }

}

