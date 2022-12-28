import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  Widget? widget;

  HomeScreen({Key? key, this.widget}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: true,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(),
          ),
          body: widget.widget,
        ));
  }


}