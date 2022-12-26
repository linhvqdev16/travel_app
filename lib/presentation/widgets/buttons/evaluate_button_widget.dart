import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EvaluateButtonWidget extends StatefulWidget {

  Function()? buttonHandle;

  String? buttonLabel;

  EvaluateButtonWidget({Key? key, this.buttonHandle, this.buttonLabel}) : super(key: key);

  @override
  _EvaluateButtonWidget createState() => _EvaluateButtonWidget();
}

class _EvaluateButtonWidget extends State<EvaluateButtonWidget>{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(right: 25),
      padding: const EdgeInsets.symmetric(horizontal: 44),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton)),
        gradient: LinearGradient(colors: [
          ColorCustom.mediumPurple,
          ColorCustom.indigoPurple
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        )
      ),
      child: TextButton(
        child: Text(widget.buttonLabel ?? "", style: const TextStyle(color: ColorCustom.colorWhite, fontWeight: FontWeight.bold),),
        onPressed: widget.buttonHandle,
      ),
    ); 
  }
}