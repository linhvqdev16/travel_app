import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/category/category_item.dart';
import 'package:flutter/cupertino.dart';

class CategoryListWidget extends StatefulWidget{

  List<CategoryModel>? list;

  CategoryListWidget({Key? key, this.list}) : super(key: key);

  @override
  _CategoryListWidget createState() => _CategoryListWidget();
}

class _CategoryListWidget extends State<CategoryListWidget>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: widget.list?.length ?? 0,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, position){
        return CategoryItemWidget(categoryModel: widget.list?[position], position: position, lengthList: (widget.list == null || widget.list!.isEmpty) ? 0 :  (widget.list!.length - 1));
      },
    );
  }




}