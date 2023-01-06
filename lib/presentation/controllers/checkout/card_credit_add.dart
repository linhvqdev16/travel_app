import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCreditScreen extends StatefulWidget {

  CardCreditScreen({Key? key}) : super(key: key);

  @override
  _CardCreditScreen createState() => _CardCreditScreen();

}

class _CardCreditScreen extends State<CardCreditScreen>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
   return Scaffold(
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(height * 0.3),

     ),
   );
  }

}