import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_category/flight_category_list.dart';
import 'package:flutter/cupertino.dart';

class FlightCategoryDetail extends StatefulWidget{

  CategoryFlightModel? categoryModel;

  String? label;

  bool? isSelected;

  FlightCategoryDetail({Key? key, this.categoryModel, this.label, this.isSelected}) : super(key: key);

  @override
  _FlightCategoryDetail createState() => _FlightCategoryDetail();
}

class _FlightCategoryDetail extends State<FlightCategoryDetail>{
  @override
  Widget build(BuildContext context) {

   return Container(
     margin: const EdgeInsets.all(10),
     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
     decoration: BoxDecoration(
         color: (widget.isSelected ?? false) ? ColorCustom.atomicTangerine :  ColorCustom.indigoPurple.withOpacity(0.2),
         borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton))
     ),
     child: Align(
       child: Text(
         widget.label ?? "",
         style: TextStyle(fontWeight: FontWeight.bold, fontSize: FontSizes.s15, color: (widget.isSelected ?? false) ? ColorCustom.colorWhite :  ColorCustom.indigoPurple),
       ),
     ),
   );
  }

}