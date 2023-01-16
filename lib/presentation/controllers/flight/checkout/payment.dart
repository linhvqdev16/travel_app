import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_item/flight_item_screen.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_screen.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/stepper/stepper_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class FlightPaymentScreen extends StatefulWidget{

  FlightPaymentScreen({Key? key}) : super(key: key);

  @override
  _FlightPaymentScreen createState() => _FlightPaymentScreen();
}

class _FlightPaymentScreen extends State<FlightPaymentScreen>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: SizedBox(height: 0),
        ),
        backgroundColor: ColorCustom.anthensGray,
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
                    buttonHandle: (){
                      Navigator.of(context).pop();
                    },
                  )),
              Container(
                margin: EdgeInsets.only(top: height * 0.25),
                child: Column(
                  children: [
                    Expanded(child:  SingleChildScrollView(
                      child: Column(
                        children: [

                          Container(
                              height: 100,
                              child: StepperWidget()),


                          FlightItemScreen(isShowQRRCode: true),


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
                                        Expanded(child: Text("1 Passenger",
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
                                        Expanded(child: Text("Insurance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: FontSizes.s14,
                                              color: ColorCustom.doveGrayColor),
                                          textAlign: TextAlign.left,)),

                                        Expanded(child: Text("-",
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
                            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            child: Row(
                              children: [
                                Expanded(child: EvaluateButtonWidget(
                                  buttonLabel: "Pay Now",
                                  buttonHandle: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlightScreen()));
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
        ));
  }
}

