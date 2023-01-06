import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromotionScreen extends StatefulWidget{

  PromotionScreen({Key? key}) : super(key: key);

  @override
  _PromotionScreen createState() => _PromotionScreen();
}

class _PromotionScreen extends State<PromotionScreen>{


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Promotion Code",
          isRowAppBar: true,
          isShowIconSort: true,
          buttonHandle: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(25, 5 , 5, 5),
              margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton)),
                color: ColorCustom.colorWhite
              ),
              child: Row(
                children: [
                  Expanded(child: Text("Coupon Code", style: TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),)),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton)),
                        color: ColorCustom.indigoPurple.withOpacity(0.5)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Add Code", style: TextStyle(fontWeight: FontWeight.bold, color: ColorCustom.indigoPurple),),
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Expanded(child: EvaluateButtonWidget(
                    buttonLabel: "Done",
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
