import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar_widgets/appbar_widgets.dart';

class BookingScreen extends StatefulWidget{

  BookingScreen({Key? key}) : super(key: key);

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
       body: LayoutScreen(
         child: SingleChildScrollView(
           child: Column(
             children: [
               DisplayFormValueWidget(
                 labelForm: "Destination",
                 valueForm: "Destination",
                 iconUrl: IconCustom.iconUser,
               )
             ],
           ),
         ),
       )
     );
  }



}