import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget{

  ForgetPasswordScreen({Key? key}): super(key: key);

  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();

}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen>{

  bool isObscureText = true;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorCustom.anthensGray,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Forgot Password",
          contentAppBar: "You’ll get messages soon on your e-mail address",
          buttonHandle: (){
            Navigator.of(context).pop();
          }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFieldWidget(handleChangeEvent: (){
              print("HIHI");
            },
              labelFromField: "Email", messageFormField: "Enter email", floatingLabelBehavior: FloatingLabelBehavior.always,
            ),

            Row(
              children: [
                Expanded(child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25 , 0 , 20),
                    child: EvaluateButtonWidget(
                      buttonLabel: "Login",
                      buttonHandle: (){
                        print("HIHI");
                      },
                    )))
              ],
            ),


          ],
        ),
      ),
    );
  }

  void handlerObscureTextButton(bool? value){
    isObscureText = value ?? false;
    setState(() {});
  }



}