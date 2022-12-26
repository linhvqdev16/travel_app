import 'package:base_flutter_app/application/services/navigator_service/navigator_service.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/authenticate/forget_password/forget_password.dart';
import 'package:base_flutter_app/presentation/controllers/authenticate/sign_up/sign_up.dart';
import 'package:base_flutter_app/presentation/controllers/home_page/home_page.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/checkbox_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/flat_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/text_button_icon_widget.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/password_form_field.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{

  SignInScreen({Key? key}): super(key: key);

  @override
  _SignInScreen createState() => _SignInScreen();

}

class _SignInScreen extends State<SignInScreen>{

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
                     labelAppBar: "LOGIN",
                     contentAppBar: "Hi, Welcome back",),
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             TextFormFieldWidget(handleChangeEvent: (){
               print("HIHI");
             },
              labelFromField: "Email", messageFormField: "Enter email", floatingLabelBehavior: FloatingLabelBehavior.always,
             ),

             PasswordFormFieldWidget(
               labelFromField: "Password",
               messageFormField: "Enter password",
               floatingLabelBehavior: FloatingLabelBehavior.always,
               obscureText: isObscureText,
               handleEventObscureText:() => handlerObscureTextButton(isObscureText ? false : true),
             ),

            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: CheckBoxButtonWidget(tile: "Remember me",
                      handlerOnChanged: (value){
                       print("HEHE");
                      },
                      isChecked: isChecked,
                  )),

                  FlatButtonWidget(labelButton: "Forgot password?",
                     handlerOnPressed: () => handlerButtonForgetPassword(context))
                ],
              ),
            ),

            Row(
              children: [
                Expanded(child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25 , 0 , 20),
                    child: EvaluateButtonWidget(
                      buttonLabel: "Login",
                      buttonHandle: () => handlerButtonSignIn(context),
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
                        child: const Text(" or login with ", style: TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.mineShaft))),
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

                 SizedBox(width: 15),

                 Expanded(child: ButtonIconWidget(iconUrl: IconCustom.iconFacebook, labelButton: "Facebook", handlerEvent: (){

                 },
                   colorLabel: ColorCustom.colorWhite,
                   backgroundColor: ColorCustom.chamBray,
                 ) )
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(25, 25, 25, 25),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(fontSize: FontSizes.s15, fontWeight: FontWeight.normal, color: ColorCustom.mineShaft),
                        children: <TextSpan>[
                          // TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                          TextSpan(text: ' Sign up',  recognizer: TapGestureRecognizer()..onTap = () => handlerButtonSignUp(context)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void handlerObscureTextButton(bool? value){
     isObscureText = value ?? false;
     setState(() {});
  }

  void handlerButtonSignUp(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }

  void handlerButtonForgetPassword(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
  }

  void handlerButtonSignIn(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePageScreen()));
  }

}