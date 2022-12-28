import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/display_form_value/display_form_value_widget.dart';

class SearchByGuestRoom extends StatefulWidget{

  SearchByGuestRoom({Key? key}) : super(key: key);

  @override
  _SearchByGuestRoom createState() => _SearchByGuestRoom();
}

class _SearchByGuestRoom extends State<SearchByGuestRoom>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
   return Scaffold(
     backgroundColor: ColorCustom.anthensGray,
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(height * 0.3),
       child: AppBarWidget(
         labelAppBar: "Add guest and room",
         buttonHandle: (){
           Navigator.of(context).pop();
         },
       ),
     ),
     body: LayoutScreen(
       child: SingleChildScrollView(
         child: Column(
           children: [
             DisplayFormValueWidget(
               valueForm: "Guest",
               iconUrl: IconCustom.iconGroupUser,
               backGroundStackColor: ColorCustom.atomicTangerine,
               isHasHandler: true,
             ),

             DisplayFormValueWidget(
               valueForm: "Room",
               iconColor: ColorCustom.froly,
               iconUrl: IconCustom.iconBedroom,
               backGroundStackColor: ColorCustom.froly,
               isHasHandler: true,
             ),

             Row(
               children: [
                 Expanded(
                     child: EvaluateButtonWidget(
                       buttonHandle: (){

                       },
                       buttonLabel: "Done",
                     )
                 )
               ],
             )
           ],
         ),
       ),
     ),
   );
  }
}