import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/card_credit_add.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/stepper/stepper_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatefulWidget {
  ConfirmScreen({Key? key}) : super(key: key);

  @override
  _ConfirmScreen createState() => _ConfirmScreen();
}

class _ConfirmScreen extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                height: height * 0.35,
                child: AppBarWidget(
                  labelAppBar: "Checkout",
                  isRowAppBar: true,
                  isShowIconSort: true,
                )),
            Container(
              margin: EdgeInsets.only(top: height * 0.25),
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(height: 100, child: StepperWidget()),
                            Card(
                              elevation: 0,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 25),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          RadiusCustom.radiusInputFormField))),
                              color: ColorCustom.colorWhite,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                          "Deluxe Room",
                                                          style: TextStyle(
                                                              fontSize: FontSizes
                                                                  .s18,
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              color: ColorCustom
                                                                  .doveGrayColor),
                                                        ))
                                                  ],
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: Text(
                                                          "Free Cancellation",
                                                          style: TextStyle(
                                                              fontSize: FontSizes
                                                                  .s12,
                                                              fontWeight:
                                                              FontWeight.normal,
                                                              color: ColorCustom
                                                                  .doveGrayColor),
                                                        ))
                                                  ],
                                                ),
                                                SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Container(
                                                        margin:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                        child: Image.asset(
                                                            IconCustom
                                                                .iconBedroom)),
                                                    Expanded(
                                                        child: Text(
                                                          "Free Cancellation",
                                                          style: TextStyle(
                                                              fontSize: FontSizes
                                                                  .s12,
                                                              fontWeight:
                                                              FontWeight.normal,
                                                              color: ColorCustom
                                                                  .doveGrayColor),
                                                        ))
                                                  ],
                                                ),
                                              ],
                                            )),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: height * 0.1,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImagesCustom
                                                            .imageBackgroundHotel),
                                                    fit: BoxFit.cover),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(RadiusCustom
                                                        .radiusInputFormField))),
                                          ),
                                        )
                                      ],
                                    ),

                                    const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: DottedLine(
                                          direction: Axis.horizontal,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor:
                                          ColorCustom.deActiveIndicationColor,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapColor: Colors.white,
                                          dashGapRadius: 0.0,
                                        )),

                                    Row(
                                      children: [
                                        Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: DisplayFormValueWidget(
                                                    valueForm: "Fri, 13 Feb",
                                                    labelForm: "Check-in",
                                                    iconUrl: IconCustom
                                                        .iconCheckin,
                                                    backGroundStackColor: ColorCustom
                                                        .froly,
                                                    isHalf: true,
                                                  ),
                                                ),
                                              ],
                                            )),

                                        Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: DisplayFormValueWidget(
                                                    valueForm: "Sat, 14 Feb",
                                                    labelForm: "Check-out",
                                                    iconUrl: IconCustom
                                                        .iconCheckout,
                                                    backGroundStackColor: ColorCustom
                                                        .puertoRico,
                                                    isHalf: true,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            Card(
                              elevation: 0,
                              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          RadiusCustom.radiusInputFormField))),
                              color: ColorCustom.colorWhite,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Expanded(child: Text("1 Night",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.left,)),

                                          Expanded(child: Text("245",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.right,))

                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Expanded(child: Text("Taxes and Fees",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.left,)),

                                          Expanded(child: Text("Free",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.right,))

                                        ],
                                      ),
                                    ),

                                    const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: DottedLine(
                                          direction: Axis.horizontal,
                                          lineLength: double.infinity,
                                          lineThickness: 1.0,
                                          dashLength: 4.0,
                                          dashColor:
                                          ColorCustom.deActiveIndicationColor,
                                          dashRadius: 0.0,
                                          dashGapLength: 4.0,
                                          dashGapColor: Colors.white,
                                          dashGapRadius: 0.0,
                                        )),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Expanded(child: Text("Total",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.left,)),

                                          Expanded(child: Text("245",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: FontSizes.s14,
                                                color: ColorCustom.doveGrayColor),
                                            textAlign: TextAlign.right,))

                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 25),
                              child: DisplayFormValueWidget(
                                valueForm: "Master Card",
                                labelForm: "Credit / Debit Card",
                                iconUrl: IconCustom.iconCreditCard,
                                backGroundStackColor: ColorCustom.atomicTangerine,
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                              child: Row(
                                children: [
                                  Expanded(child: EvaluateButtonWidget(
                                    buttonLabel: "Pay Now",
                                    buttonHandle: (){
                                      Navigator.of(context).pop();
                                    },
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
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
