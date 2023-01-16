import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSeatPassengersWidget extends StatefulWidget{

  ListSeatPassengersWidget({Key? key}) : super(key: key);

  @override
  _ListSeatPassengersWidget createState() => _ListSeatPassengersWidget();
}

class _ListSeatPassengersWidget extends State<ListSeatPassengersWidget>{

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
         physics: const NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemCount: 1,
         itemBuilder: (context, position){
           return _buildItemSeatPassenger();
         });
  }

  Widget _buildItemSeatPassenger(){
      return Row(
        children: [
          GestureDetector(
            onTap: (){

            },
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(RadiusCustom.radiusHeader)),
                  border: Border.all(width: 0.2, color: ColorCustom.froly)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    height: MediaQuery.of(context).size.width * 0.15,
                     width: MediaQuery.of(context).size.height * 0.065,
                     decoration: BoxDecoration(
                       color: ColorCustom.froly.withOpacity(0.5),
                       shape: BoxShape.circle
                     ),
                     child: Center(
                       child: Image.asset(IconCustom.iconImage, fit: BoxFit.fill,),
                     ),
                  ),
                  Text(
                    "James Christin",
                    style: const TextStyle(
                        fontSize: FontSizes.s15,
                        fontWeight: FontWeight.normal,
                        color: ColorCustom.blackColor),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton)),
                        color: ColorCustom.indigoPurple.withOpacity(0.5)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Select Seat", style: TextStyle(fontWeight: FontWeight.bold, color: ColorCustom.indigoPurple)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
  }

}