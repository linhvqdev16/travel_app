import 'package:base_flutter_app/application/models/catgory_model.dart';
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
    return GridView.builder(
        itemCount: widget.list?.length ?? 0,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisExtent: 2
        ),
        itemBuilder: (context, position){
          return CategoryItemWidget(categoryModel: widget.list?[position]);
        },
    );
  }
}