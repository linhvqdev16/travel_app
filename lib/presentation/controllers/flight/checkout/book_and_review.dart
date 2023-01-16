import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/payment.dart';
import 'package:base_flutter_app/presentation/controllers/contact/contact_detail.dart';
import 'package:base_flutter_app/presentation/controllers/flight/checkout/payment.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_item/flight_item_screen.dart';
import 'package:base_flutter_app/presentation/controllers/flight/list_seat_passengers/list_seat_passengers.dart';
import 'package:base_flutter_app/presentation/controllers/promotion/promotions_add.dart';
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



                          FlightItemScreen(),

                          ButtonCardWidget(
                            labelButton: "Add Contact",
                            iconUrl: IconCustom.iconUser,
                            iconColor: ColorCustom.activeIndicationColor,
                            titleButton: "Contact Details",
                            backgroundColorIcon: ColorCustom.activeIndicationColor,
                            buttonHandle: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactDetailScreen()));
                            },
                          ),

                          ButtonCardWidget(
                            labelButton: "Passengers & Seats",
                            iconUrl: IconCustom.iconSeat,
                            iconColor: ColorCustom.froly,
                            titleButton: "Add Passenger",
                            widget: ListSeatPassengersWidget(),
                            backgroundColorIcon: ColorCustom.froly,
                            buttonHandle: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactDetailScreen(label: "Add Passenger",)));
                            },
                          ),

                          ButtonCardWidget(
                            labelButton: "Add Promo Code",
                            iconUrl: IconCustom.iconDiscount,
                            iconColor: ColorCustom.puertoRico,
                            titleButton: "Promo Code",
                            backgroundColorIcon: ColorCustom.puertoRico,
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlightPaymentScreen()));
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

