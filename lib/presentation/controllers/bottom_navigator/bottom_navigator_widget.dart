import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatefulWidget{

  BottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigatorWidget createState() => _BottomNavigatorWidget();
}

class _BottomNavigatorWidget extends State<BottomNavigatorWidget>{
  
  List<NavigatorItem> list = []; 
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    list.add(new NavigatorItem(label: "Home", iconUrl: IconCustom.iconHome, widget: HomePageScreen()));
    list.add(new NavigatorItem(label: "Favorite", iconUrl: IconCustom.iconHeart, widget: HomePageScreen()));
    list.add(new NavigatorItem(label: "Contact", iconUrl: IconCustom.iconBriefcase, widget: HomePageScreen()));
    list.add(new NavigatorItem(label: "Account", iconUrl: IconCustom.iconUser, widget: HomePageScreen()));

  }
  
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: list.length,
         shrinkWrap: true,
         physics: const NeverScrollableScrollPhysics(),
         itemBuilder: (context, position){
           return Container();
           ///TODO: Process navigator app bar
         }
     );
  }

  // Widget _buildNavigatorItem(){
  //   return BottomNavigationBar(
  //
  //   );
  // }

}

class NavigatorItem{
  
  String? label; 
  
  String? iconUrl; 
  
  Widget? widget; 
  
  NavigatorItem({
    this.label, 
    this.iconUrl, 
    this.widget
}); 
  
}