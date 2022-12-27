import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatefulWidget{

  CategoryModel? categoryModel;

  CategoryItemWidget({Key? key, this.categoryModel}) : super(key: key);

  @override
  _CategoryItemWidget createState() => _CategoryItemWidget();
}

class _CategoryItemWidget extends State<CategoryItemWidget>{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 32),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusImagePortrait)),
            color: ColorCustom.activeIndicationColor
          ),
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(ImagesCustom.portraitImageHeader, height: 30,),
          ),
        ),

        Expanded(child: Text(widget.categoryModel?.label ?? "", style: const TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: Colors.black45)))
      ],
    );
  }

}