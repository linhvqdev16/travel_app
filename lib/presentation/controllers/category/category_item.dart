import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_screen.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotels_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/font_sizes.dart';
import '../../../constants/radius.dart';

class CategoryItemWidget extends StatefulWidget{

  CategoryModel? categoryModel;

  int? position;

  int? lengthList;

  CategoryItemWidget({Key? key, this.categoryModel, this.position, this.lengthList}) : super(key: key);

  @override
  _CategoryItemWidget createState() => _CategoryItemWidget();
}

class _CategoryItemWidget extends State<CategoryItemWidget>{

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
             if((widget.position ?? 0) == 0){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelListScreen()));
             } else if((widget.position ?? 0) == 1){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlightScreen()));
             }
          },
          child: Container(
            margin:  EdgeInsets.only(top: 10, bottom: 10, left: (widget.position ?? 0) == 0 ?  0 : width * 0.03, right: ((widget.position ?? 0) == (widget.lengthList ?? 0)  ?  0 : width * 0.03)),
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: width * 0.09),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusImagePortrait)),
                color: (widget.categoryModel?.color ?? ColorCustom.anthensGray).withOpacity(0.2)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(widget.categoryModel?.iconUrl ?? "", height: 30,),
            ),
          )
        ),

        Text(widget.categoryModel?.label ?? "", style: const TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: Colors.black,))
      ],
    );
  }

}