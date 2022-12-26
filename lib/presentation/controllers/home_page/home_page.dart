import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/home_page_appbar.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:base_flutter_app/presentation/widgets/text_field_widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget{

  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen>{
  @override
  Widget build(BuildContext context) {
   var height = MediaQuery.of(context).size.height;
   return SafeArea(
       bottom: true,
       child: Scaffold(
         appBar: PreferredSize(
           preferredSize: const Size.fromHeight(0),
             child: Container(),
         ),
         body: Stack(
           children: [

             SizedBox(
               height: height * 0.3,
               child: HomePageAppBarWidget(
                 labelAppBar: "Hi, James !",
                 contentAppBar: "Where are you going next?",
               ),
             ),

           ],
         )
         ),
       );
  }

}