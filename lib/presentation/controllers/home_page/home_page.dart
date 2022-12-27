import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/presentation/controllers/category/category_list_widget.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/home_page_appbar.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget{

  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen>{
  
  List<CategoryModel> list = [];
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    list.add(new CategoryModel(label: "Hotels"));
    list.add(new CategoryModel(label: "Flights"));
    list.add(new CategoryModel(label: "All"));
  }
  
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
         body: SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(
                 height: height * 0.3,
                 child: HomePageAppBarWidget(
                   labelAppBar: "Hi, James !",
                   contentAppBar: "Where are you going next?",
                 ),
               ),

               const SizedBox(height: 31),

               Container(
                 height: height * 0.5,
                 child: Center(
                   child: CategoryListWidget(list: list),
                 ),
               )
               
             ],
           ),
         )
         ),
       );
  }

}