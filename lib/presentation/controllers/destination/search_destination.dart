import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_feild_prefix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDestinationScreen extends StatefulWidget{

  @override
  _SearchDestinationScreen createState() => _SearchDestinationScreen();
}

class _SearchDestinationScreen extends State<SearchDestinationScreen>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Search your destination",
          isShowIconSort: true,
          isRowAppBar: true,
          buttonHandle: (){
            Navigator.of(context).pop();
          }
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFieldPrefixWidget(handleChangeEvent: (){
              print("HIHI");
            },
              messageFormField: "Search your destination", floatingLabelBehavior: FloatingLabelBehavior.always,
            ),

            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Row(
                children: [
                  
                  Container(
                    height: 20,
                    margin: const EdgeInsets.only(right: 20),
                    child: Image.asset(IconCustom.iconCurrentLocation, fit: BoxFit.cover,),
                  ), 
                  
                  Expanded(child: Text("Search nearby destination", style: TextStyle(fontSize: FontSizes.s15, fontWeight: FontWeight.normal)))
                  
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Expanded(child: EvaluateButtonWidget(
                    buttonLabel: "Search",
                    buttonHandle: (){
                      Navigator.of(context).pop();
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}