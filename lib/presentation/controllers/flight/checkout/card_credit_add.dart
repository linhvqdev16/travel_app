import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightCardCreditScreen extends StatefulWidget {

  FlightCardCreditScreen({Key? key}) : super(key: key);

  @override
  _FlightCardCreditScreen createState() => _FlightCardCreditScreen();

}

class _FlightCardCreditScreen extends State<FlightCardCreditScreen>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
   return Scaffold(
     backgroundColor: ColorCustom.pageModelBackgroundColor,
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(height * 0.3),
       child: AppBarWidget(
         labelAppBar: "Add Card",
         isRowAppBar: true,
         isShowIconSort: true,
         buttonHandle: (){
           Navigator.of(context).pop();
         },
       ),
     ),
     body: SingleChildScrollView(
       child: Column(
         children:  [

           TextFormFieldWidget(handleChangeEvent: (){
             print("HIHI");
           },
             labelFromField: "Name", messageFormField: "James Christin", floatingLabelBehavior: FloatingLabelBehavior.always,
             colorMessage: Colors.black,
             colorLabel: ColorCustom.doveGrayColor,
           ),

           Container(
             margin: const EdgeInsets.symmetric(horizontal: 25),
             child: DisplayFormValueWidget(
               valueForm: "Mini Market",
               labelForm: "Card Number",
               iconUrl: IconCustom.iconVisa,
               backGroundStackColor: ColorCustom.atomicTangerine,
             ),
           ),

           Row(
             children: [
               Expanded(
                   child: Column(
                     children: [
                       TextFormFieldWidget(handleChangeEvent: (){
                         print("HIHI");
                       },
                         labelFromField: "Exp. Date", messageFormField: "03 / 31", floatingLabelBehavior: FloatingLabelBehavior.always,
                         colorMessage: Colors.black,
                         colorLabel: ColorCustom.doveGrayColor,
                       ),

                     ],
                   )),

               Expanded(
                   child: Column(
                     children: [
                       TextFormFieldWidget(handleChangeEvent: (){
                         print("HIHI");
                       },
                         labelFromField: "CVV", messageFormField: "432", floatingLabelBehavior: FloatingLabelBehavior.always,
                         colorMessage: Colors.black,
                         colorLabel: ColorCustom.doveGrayColor,
                       ),

                     ],
                   ))
             ],
           ),

           TextFormFieldWidget(handleChangeEvent: (){
             print("HIHI");
           },
             labelFromField: "Country", messageFormField: "Select country", floatingLabelBehavior: FloatingLabelBehavior.always,
             colorMessage: Colors.black,
             colorLabel: ColorCustom.doveGrayColor,
           ),

           Container(
             margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
             child: Row(
               children: [
                 Expanded(child: EvaluateButtonWidget(
                   buttonLabel: "Add Card",
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