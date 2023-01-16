import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/checkout/book_and_review.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotel_detail.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class HotelCardWidget extends StatefulWidget{

  HotelCardWidget({Key? key}) : super(key: key);

  @override
  _HotelCardWidget createState() => _HotelCardWidget();

}

class _HotelCardWidget extends State<HotelCardWidget>{
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HotelDetailScreen()));
                      },
                      child: Container(
                        height: height * 0.15,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(ImagesCustom.imageBackgroundHotel), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(RadiusCustom.radiusInputFormField),
                                                          topLeft: Radius.circular(RadiusCustom.radiusInputFormField))
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("Royal Palm Heritage", style: TextStyle(fontSize: FontSizes.s18, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),))
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                               Padding(padding: const EdgeInsets.only(right: 10), child:  Image.asset(IconCustom.iconLocation),),

                                Expanded(
                                    child: RichText(
                                  text: const TextSpan(
                                    text: "Purwokerto, Jateng - ",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s12, color: Colors.black),
                                    children: [
                                      TextSpan(
                                          text: "364 m from destination",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s11, color: ColorCustom.doveGrayColor)
                                      )
                                    ]
                                  )
                                ))
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [

                                Padding(padding: const EdgeInsets.only(right: 10), child:  Image.asset(IconCustom.iconStar),),

                                Expanded(
                                    child: RichText(
                                        text: const TextSpan(
                                            text: "4.5 ",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s12, color: Colors.black),
                                            children: [
                                              TextSpan(
                                                  text: "(32451 reviews)",  style: TextStyle(fontWeight: FontWeight.normal, fontSize: FontSizes.s11, color: ColorCustom.doveGrayColor)
                                              )
                                            ]
                                        )
                                    ))
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

                                EvaluateButtonWidget(
                                  buttonLabel: "Book a room",
                                  buttonHandle: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookAndReviewScreen()));
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

}