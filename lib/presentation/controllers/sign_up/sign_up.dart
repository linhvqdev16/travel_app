import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/text_button_icon_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/password_form_field.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{

  const SignUpScreen({Key? key}): super(key: key);

  @override
  _SignUpScreen createState() => _SignUpScreen();

}

class _SignUpScreen extends State<SignUpScreen>{

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
          labelAppBar: "Sign Up",
          contentAppBar: "Let’s create your account!",
          buttonHandle: (){
            FocusScope.of(context).unfocus();
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormFieldWidget(handleChangeEvent: (){
            //  print("HIHI");
            },
              labelFromField: "Name", messageFormField: "Enter name", floatingLabelBehavior: FloatingLabelBehavior.always,
            ),

            TextFormFieldWidget(handleChangeEvent: (){
              // print("HIHI");
            },
              labelFromField: "Country", messageFormField: "Enter country", floatingLabelBehavior: FloatingLabelBehavior.always,
            ),

            TextFormFieldWidget(handleChangeEvent: (){
            //  print("HIHI");
            },
              labelFromField: "Phone number", messageFormField: "Enter phone number", floatingLabelBehavior: FloatingLabelBehavior.always, textInputType: TextInputType.phone,
            ),

            PasswordFormFieldWidget(
              labelFromField: "Password",
              messageFormField: "Enter password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              obscureText: isObscureText,
              handleEventObscureText:() => handlerObscureTextButton(isObscureText ? false : true),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(25, 20 , 25 , 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: const Text("By tapping sign up you agree to the Terms and Condition and Privacy Policy of this app",
                          style:  TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.mineShaft),
                          textAlign: TextAlign.center,)),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25 , 0 , 20),
                    child: EvaluateButtonWidget(
                      buttonLabel: "Sign Up",
                      buttonHandle: (){
                    //    print("HIHI");
                      },
                    )))
              ],
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(25, 10 , 25 , 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      flex: 1,
                      child: Divider(height: 1, thickness: 0.8, color: ColorCustom.mineShaft,)),
                  Expanded(
                    flex: 1,
                    child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child:  const Text(" or sign up with ", style: TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.mineShaft))),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Divider(height: 1, thickness: 0.8, color: ColorCustom.mineShaft,))
                ],
              ),
            ),


            Container(
              padding: const EdgeInsets.fromLTRB(25, 10 , 25 , 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: ButtonIconWidget(iconUrl: IconCustom.iconGoogle, labelButton: "Google", handlerEvent: (){

                  },
                    colorLabel: ColorCustom.mineShaft,
                    backgroundColor: ColorCustom.colorWhite,
                  )),

                  const SizedBox(width: 15),

                  Expanded(child: ButtonIconWidget(iconUrl: IconCustom.iconFacebook, labelButton: "Facebook", handlerEvent: (){

                  },
                    colorLabel: ColorCustom.colorWhite,
                    backgroundColor: ColorCustom.chamBray,
                  ) )
                ],
              ),
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