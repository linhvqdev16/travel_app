import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/book_and_review.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetailScreen extends StatefulWidget{

  ContactDetailScreen({Key? key}) : super(key: key);

  @override
  _ContactDetailScreen createState() => _ContactDetailScreen();
}

class _ContactDetailScreen extends State<ContactDetailScreen>{


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Contact Details",
          isRowAppBar: true,
          isShowIconSort: true,
          buttonHandle: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFieldWidget(handleChangeEvent: (){
              print("HIHI");
            },
              labelFromField: "Name", messageFormField: "Enter name", floatingLabelBehavior: FloatingLabelBehavior.always,
              colorMessage: Colors.black,
              colorLabel: ColorCustom.doveGrayColor,
            ),

            TextFormFieldWidget(handleChangeEvent: (){
              print("HIHI");
            },
              labelFromField: "Phone Number", messageFormField: "Enter phone number", floatingLabelBehavior: FloatingLabelBehavior.always,
              colorMessage: Colors.black,
              colorLabel: ColorCustom.doveGrayColor,
            ),

            TextFormFieldWidget(handleChangeEvent: (){
              print("HIHI");
            },
              labelFromField: "Email", messageFormField: "Enter email", floatingLabelBehavior: FloatingLabelBehavior.always,
              colorMessage: Colors.black,
              colorLabel: ColorCustom.doveGrayColor,
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Expanded(child: EvaluateButtonWidget(
                    buttonLabel: "Done",
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
