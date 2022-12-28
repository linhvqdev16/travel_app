import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/booking/booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularDestinationListWidget extends StatefulWidget{

  List<PopularDestination>? list;

  PopularDestinationListWidget({Key? key, this.list}) : super(key: key);

  @override
  _PopularDestinationListWidget createState() => _PopularDestinationListWidget();

}

class _PopularDestinationListWidget extends State<PopularDestinationListWidget>{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: widget.list?.length ?? 0,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position){
          return _buildItem(widget.list?[position], width);
        }
    );
  }

  Widget _buildItem(PopularDestination? item, double width){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingScreen()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              height: item?.height ?? 50,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusImagePortrait)),
                image: DecorationImage(image: AssetImage(item?.imageUrl ?? ImagesCustom.onBoardImage1), fit: BoxFit.cover),
                //color: ColorCustom.indigoPurple
              ),
            ),

            Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: (){
                    print("HIHI");
                    item?.isFavorite = (item.isFavorite ?? false) ? false : true;
                    setState(() {});
                  },
                  child: Image.asset(IconCustom.iconHeart, height: 20, fit: BoxFit.cover, color: (item?.isFavorite ?? false) ? ColorCustom.froly : ColorCustom.colorWhite,),
                )),

            Positioned(
                left: 10,
                bottom: 40,
                child: Text(
                  item?.namePlace ?? "LinhVQ",
                  style: const TextStyle(fontSize: FontSizes.s16, fontWeight: FontWeight.bold, color: ColorCustom.colorWhite),
                )),

            Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: width * 0.13,
                  decoration: BoxDecoration(
                      color: ColorCustom.colorWhite.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Image.asset(IconCustom.iconStar, height: 15, fit: BoxFit.cover, color: ColorCustom.yellowColor),
                      ),

                      Expanded(
                          child: Text( (item?.pointRating ?? 0).toString(),
                            style: const TextStyle(fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.colorWhite),
                            textAlign: TextAlign.right,
                          ))
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );

  }


}