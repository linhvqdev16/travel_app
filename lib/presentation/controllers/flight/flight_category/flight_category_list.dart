import 'package:base_flutter_app/presentation/controllers/flight/flight_category/flight_category_detail.dart';
import 'package:flutter/cupertino.dart';

class ListFlightCategory extends StatefulWidget {

  List<CategoryFlightModel>? listCategoryModel;

  ListFlightCategory({Key? key, this.listCategoryModel}) : super(key: key);

  @override
  _ListFlightCategory createState() => _ListFlightCategory();
}

class _ListFlightCategory extends State<ListFlightCategory> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       scrollDirection: Axis.horizontal,
       physics: NeverScrollableScrollPhysics(),
       shrinkWrap: true,
       itemCount: widget.listCategoryModel?.length ?? 0,
       itemBuilder: (context, position){
         return FlightCategoryDetail(categoryModel: widget.listCategoryModel![position]);
       });
  }
}

class CategoryFlightModel {
  String? label;

  CategoryFlightModel({this.label});
}
