import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatefulWidget{

  Function()? handlerOnPressed;

  String? labelButton;

  FlatButtonWidget({Key? key, this.handlerOnPressed, this.labelButton}) : super(key: key);

  @override
  _FlatButtonWidget createState() => _FlatButtonWidget();
}

class _FlatButtonWidget extends State<FlatButtonWidget>{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.handlerOnPressed,
      child: Text( widget.labelButton ?? "",
                   style: const TextStyle( fontSize: FontSizes.s14,
                                           fontWeight: FontWeight.bold,
                                           color: ColorCustom.mineShaft)),
    );
  }


}