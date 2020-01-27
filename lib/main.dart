import 'package:aorg/widget/input.widget.dart';
import 'package:aorg/widget/loading-button.widget.dart';
import 'package:aorg/widget/logo.widget.dart';
import 'package:aorg/widget/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

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
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(
            reset: (){},
            result: "Compensa Utilizar X",
          ),
          Input(
            label:"Gasolina",
            ctrl: _gasCtrl,
          ),
          Input(
            label:"Álcool",
            ctrl: _alcCtrl,
          ),
          LoadingButton(
            busy: true,
            func: (){},
            text: "CALCULAR",
            invert: false,
          ),
        ],
              
      ),
    );
  }
}