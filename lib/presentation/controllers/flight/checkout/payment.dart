import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/card_credit_add.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/confirm_screen.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/stepper/stepper_widget.dart';
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


                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            child: DisplayFormValueWidget(
                              valueForm: "Mini Market",
                              iconUrl: IconCustom.iconMarket,
                              backGroundStackColor: ColorCustom.atomicTangerine,
                            ),
                          ),

                          Container(
                            height: height * 0.2,
                            decoration: const BoxDecoration(
                                color: ColorCustom.colorWhite,
                                borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
                            ),
                            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width * 0.11,
                                      padding: const EdgeInsets.all(15),
                                      margin: EdgeInsets.symmetric(vertical: height * 0.03),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusImagePortrait)),
                                          color: ColorCustom.froly.withOpacity(0.2)
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image.asset(IconCustom.iconCreditCard),
                                      ),
                                    ),
                                    const SizedBox(width: 25),

                                    Expanded(
                                        flex:  5,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            Text("Credit / Debit Card",
                                                style: const TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.bold, color: Colors.black),
                                                textAlign: TextAlign.left,
                                                overflow: TextOverflow.clip)

                                          ],
                                        )),
                                  ],
                                ),

                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardCreditScreen()));
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        height: MediaQuery.of(context).size.height * 0.065,
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusHeader)),
                                            color: ColorCustom.hawkesBlue.withOpacity(0.7)),
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(right: 10),
                                                child: Icon(Icons.add_circle_rounded, size: width * 0.13, color: ColorCustom.colorWhite,)),

                                            Expanded(
                                                child: Text("Add Card",
                                                  style: const TextStyle(fontSize: FontSizes.s15, fontWeight: FontWeight.bold, color: ColorCustom.mediumPurple),))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            child: DisplayFormValueWidget(
                              valueForm: "Bank Transfer",
                              iconUrl: IconCustom.iconMuseum,
                              backGroundStackColor: ColorCustom.puertoRico,
                            ),
                          ),


                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            child: Row(
                              children: [
                                Expanded(child: EvaluateButtonWidget(
                                  buttonLabel: "Done",
                                  buttonHandle: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConfirmScreen()));
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

