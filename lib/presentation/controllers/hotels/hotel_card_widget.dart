import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelCardWidget extends StatefulWidget{

  HotelCardWidget({Key? key}) : super(key: key);

  @override
  _HotelCardWidget createState() => _HotelCardWidget();

}

class _HotelCardWidget extends State<HotelCardWidget>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
      ),
    );
  }

}