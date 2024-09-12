import 'package:coffeeshop/navigationbar.dart';
import 'package:flutter/material.dart';

import 'coffees.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
          scrollDirection: Axis.vertical,
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 535,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("resimler/bigcoffee.png"), fit:BoxFit.fill,
                  )
              ),
              child: Stack(
                  clipBehavior: Clip.none,
                  children:[
                    Positioned(
                      height: 1000,
                      top: 534,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 800,
                        color: Colors.black,
                        child:Stack(
                          clipBehavior: Clip.none,
                          children:[
                            Positioned(
                              top:-100,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 73),
                                child: Column(
                                  children: [
                                    Text("Coffee so good,",style:TextStyle(fontSize:40,color: Colors.white),textAlign: TextAlign.center,
                                    ),
                                    Text("your taste buds",style:TextStyle(fontSize:40,color: Colors.white),textAlign: TextAlign.center,
                                    ),
                                    Text("will love it.",style:TextStyle(fontSize:40,color: Colors.white),textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Stack(
                    clipBehavior: Clip.none,
                    children:[
                      Positioned(
                        bottom: -10,
                        left: 140,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BarMenu()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(198, 124, 78, 1),
                            onPrimary: Colors.white,
                          ),
                          child: Text("Get Started"),
                        ),
                      ),]
                ),
              ),
            ),

          ]

      ),
    );
  }
}