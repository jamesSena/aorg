import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,//tirando a indicação de debug
      theme: ThemeData(
        primarySwatch: Colors.deepPurple ,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/aog-white.png", 
            height: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Álcool ou Gasolina",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"
            ),
          ), 
          SizedBox(
            height: 20,
          ),
        ], 
        
      ),
    );
  }
}