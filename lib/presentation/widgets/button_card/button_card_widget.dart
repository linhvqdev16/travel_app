import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCardWidget extends StatefulWidget{

  Color? backgroundColorIcon;

  Color? backgroundColorButton;

  String? titleButton;

  String? iconUrl;

  String? labelButton;

  Function()? buttonHandle;


  ButtonCardWidget({Key? key, this.backgroundColorIcon, this.backgroundColorButton, this.titleButton, this.iconUrl, this.labelButton, this.buttonHandle}) : super(key: key);

  @override
  _ButtonCardWidget createState() => _ButtonCardWidget();
}

class _ButtonCardWidget extends State<ButtonCardWidget>{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
        ),
        color: ColorCustom.colorWhite,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusImagePortrait)),
                    color: widget.backgroundColorIcon,
                    image: DecorationImage(
                      image: AssetImage(widget.iconUrl ?? "")
                    )
                  ),
                ),

                Expanded(child: Text(widget.titleButton ?? "",
                                     style: TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.bold, color: Colors.black)))

              ],
            ),

            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField)),
                          color: ColorCustom.hawkesBlue.withOpacity(0.5)),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_rounded, size: 40,),

                          Expanded(
                              child: Text( widget.labelButton ?? "",
                                style: TextStyle(fontSize: FontSizes.s15, fontWeight: FontWeight.bold, color: ColorCustom.mediumPurple),))
                        ],
                      ),
                    ))
              ],
            )

          ],
        ),
      ),
    );
  }


}