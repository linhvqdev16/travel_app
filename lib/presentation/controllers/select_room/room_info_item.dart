import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/checkout_widget.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotel_detail.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../widgets/icon_background_widget/icon_backgroud_widget.dart';

class RoomItemCardWidget extends StatefulWidget{

  bool? isListRoom;

  RoomItemCardWidget({Key? key, this.isListRoom}) : super(key: key);

  @override
  _RoomItemCardWidget createState() => _RoomItemCardWidget();

}

class _RoomItemCardWidget extends State<RoomItemCardWidget>{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
        ),
        color: ColorCustom.colorWhite,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded( flex: 3,
                      child:  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Deluxe Room", style: TextStyle(fontSize: FontSizes.s18, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),))
                        ],
                       ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(child: Text("Room Size : 27 m2", style: TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(child: Text("Free Cancellation", style: TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),))
                        ],
                      ),
                    ],
                  )),

                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelDetailScreen()));
                    },
                    child: Container(
                      height: height * 0.1,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(ImagesCustom.imageBackgroundHotel), fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
                      ),
                    ),
                  ),)

                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [

                    IconBackGroundWidget(
                      iconUrl: IconCustom.iconWifi,
                      textLabel: "Free WiFi",
                      backgroundColor: ColorCustom.atomicTangerine,
                    ),

                    IconBackGroundWidget(
                      iconUrl: IconCustom.iconRestaurant,
                      textLabel: "Non-Refundable",
                      backgroundColor: ColorCustom.mediumPurple,
                    ),

                    IconBackGroundWidget(
                      iconUrl: IconCustom.iconExchange,
                      textLabel: "Free Breakfast",
                      backgroundColor: ColorCustom.froly,
                    ),

                    IconBackGroundWidget(
                      iconUrl: IconCustom.iconReception,
                      textLabel: "Non-Smoking",
                      backgroundColor: ColorCustom.puertoRico,
                    ),

                  ],
                ),
              ),

              const Padding(padding: EdgeInsets.only(top: 10),
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: ColorCustom.deActiveIndicationColor,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.white,
                    dashGapRadius: 0.0,
                  )),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Expanded(child: RichText(
                        text: const TextSpan(
                            text: "143 VND",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: FontSizes.s15, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: " / night",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s14, color: ColorCustom.doveGrayColor)
                              )
                            ]
                        )
                    )),

                    (widget.isListRoom ?? false) ? EvaluateButtonWidget(
                      buttonLabel: "Choose",
                      buttonHandle: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutWidget()));
                      },
                    ) :
                    const Expanded(
                        child: Text("1 room",
                                    style: TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),
                                    textAlign: TextAlign.right,
                        ))
                    ,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}