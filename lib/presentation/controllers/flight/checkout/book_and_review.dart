import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/payment.dart';
import 'package:base_flutter_app/presentation/controllers/contact/contact_detail.dart';
import 'package:base_flutter_app/presentation/controllers/promotion/promotions_add.dart';
import 'package:base_flutter_app/presentation/controllers/select_room/room_info_item.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/button_card/button_card_widget.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/stepper/stepper_widget.dart';
import 'package:flutter/material.dart';

class FlightBookAndReviewScreen extends StatefulWidget{

  FlightBookAndReviewScreen({Key? key}) : super(key: key);

  @override
  _FlightBookAndReviewScreen createState() => _FlightBookAndReviewScreen();
}

class _FlightBookAndReviewScreen extends State<FlightBookAndReviewScreen>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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



                          RoomItemCardWidget(),

                          ButtonCardWidget(
                            labelButton: "Add Contact",
                            iconUrl: IconCustom.iconUser,
                            iconColor: ColorCustom.indigoPurple,
                            titleButton: "Contact Details",
                            backgroundColorIcon: ColorCustom.mediumPurple,
                            buttonHandle: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactDetailScreen()));
                            },
                          ),

                          ButtonCardWidget(
                            labelButton: "Add Promo Code",
                            iconUrl: IconCustom.iconDiscount,
                            iconColor: ColorCustom.atomicTangerine,
                            titleButton: "Promo Code",
                            backgroundColorIcon: ColorCustom.atomicTangerine,
                            buttonHandle: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PromotionScreen()));
                            },
                          ),


                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            child: Row(
                              children: [
                                Expanded(child: EvaluateButtonWidget(
                                  buttonLabel: "Payment",
                                  buttonHandle: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentScreen()));
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

