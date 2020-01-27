import 'package:aorg/widgets/input.widget.dart';
import 'package:aorg/widgets/loading-button.widget.dart';
import 'package:aorg/widgets/logo.widget.dart';
import 'package:aorg/widgets/submit-form.widget.dart';
import 'package:aorg/widgets/success.widget.dart';
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
          SubmitForm(
            alcCtrl: _alcCtrl,
            gasCtrl: _gasCtrl,
            submitFunc: (){},
            busy: false,
          )
        ],
              
      ),
    );
  }
}