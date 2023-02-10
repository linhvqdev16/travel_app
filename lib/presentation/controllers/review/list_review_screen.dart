import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListReviewScreen extends StatefulWidget{

  ListReviewScreen({Key? key}) : super(key: key);

  @override
  _ListReviewScreen createState() => _ListReviewScreen();
}

class _ListReviewScreen extends State<ListReviewScreen>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(height: 0),
      ),
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: height * 0.3,
            child: AppBarWidget(
              labelAppBar: "Reviews",
              isRowAppBar: true,
            ),
          ),

          Positioned(
              top: height * 0.2,
              child: _buildCommonReview())

        ],
      ),
    );
  }

  Widget _buildCommonReview(){
    return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField)),
        ),
        color: ColorCustom.colorWhite,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
          children: [

            Column(
              children: [
                Text("4.9", style: TextStyle(fontWeight: FontWeight.bold, fontSize: FontSizes.s18, color: Colors.yellow)),
                Text("of", style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s16)),
                Text("( 9876 Reviews )", style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s14, color: ColorCustom.doveGrayColor)),
              ],
            ),

            // Column(
            //   children: [
            //
            //   ],
            // )
          ],
      )),
    );
  }

}