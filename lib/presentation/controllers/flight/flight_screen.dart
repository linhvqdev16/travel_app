import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_booking/flight_booking_detail.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_booking/list_flight_booking.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightScreen extends StatefulWidget{

  FlightScreen({Key? key}) : super(key: key);

  @override
  _FlightScreen createState() => _FlightScreen();
}

class _FlightScreen extends State<FlightScreen>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
   return Scaffold(
     backgroundColor: ColorCustom.pageModelBackgroundColor,
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(height * 0.3),
       child: AppBarWidget(
         labelAppBar: "Book Your Flight",
         isRowAppBar: true,
         isShowIconSort: true,
         buttonHandle: (){
           Navigator.of(context).pop();
         },
       ),
     ),
     body: Container(
       margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
       child: SingleChildScrollView(
         child: Column(
           children: [
             FlightBookingDetail(isRoundTrip: true),

             Container(
               margin: const EdgeInsets.symmetric(vertical: 25),
               child: Row(
                 children: [
                   Expanded(
                       child: EvaluateButtonWidget(
                     buttonLabel: "Search",
                     buttonHandle: (){

                     },
                   ))
                 ],
               ),
             )
           ],
         ),
       ),
     ),
   );
  }


}