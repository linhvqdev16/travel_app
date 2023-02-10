import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/booking/search_by_guest_room/search_by_guest_room.dart';
import 'package:base_flutter_app/presentation/controllers/booking/search_by_selected_date/search_by_selected_date.dart';
import 'package:base_flutter_app/presentation/controllers/destination/search_destination.dart';
import 'package:base_flutter_app/presentation/controllers/review/list_review_screen.dart';
import 'package:base_flutter_app/presentation/controllers/select_room/select_room_widget.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget{

  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreen createState() => _BookingScreen();
}

class _BookingScreen extends State<BookingScreen>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(height * 0.3),
         child: AppBarWidget(
           labelAppBar: "Hotel Booking",
           contentAppBar: "Choose your favorite hotel and enjoy the service",
             buttonHandle: (){
               Navigator.of(context).pop();
             }),
       ),
       backgroundColor: ColorCustom.anthensGray,
       body: LayoutScreen(
         child: SingleChildScrollView(
           child: Column(
             children: [
               DisplayFormValueWidget(
                 labelForm: "Destination",
                 valueForm: "South Korea",
                 iconUrl: IconCustom.iconLocation,
                 backGroundStackColor: ColorCustom.atomicTangerine,
                 handlerClick: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchDestinationScreen()));
                 },
               ),

               DisplayFormValueWidget(
                 labelForm: "Select Date",
                 valueForm: "13 Feb - 18 Feb 2021",
                 iconUrl: IconCustom.iconCalender,
                 backGroundStackColor: ColorCustom.froly,
                 handlerClick: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
                 },
               ),

               DisplayFormValueWidget(
                 labelForm: "Guest and Room",
                 valueForm: "2 Guest, 1 Room",
                 iconUrl: IconCustom.iconBedroom,
                 backGroundStackColor: ColorCustom.puertoRico,
                 handlerClick: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchByGuestRoom()));
                 },
               ),

               DisplayFormValueWidget(
                 valueForm: "Reviews",
                 iconUrl: IconCustom.iconBedroom,
                 backGroundStackColor: ColorCustom.puertoRico,
                 handlerClick: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListReviewScreen()));
                 },
               ),

               Container(
                 margin: const EdgeInsets.only(top: 25),
                 child: Row(
                   children: [
                     Expanded(child: EvaluateButtonWidget(
                       buttonLabel: "Search",
                       buttonHandle: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectRoomWidget()));
                       },
                     ))
                   ],
                 ),
               )
             ],
           ),
         ),
       )
     );
  }



}