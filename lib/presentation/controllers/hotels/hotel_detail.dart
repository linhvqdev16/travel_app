import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelDetailScreen extends StatefulWidget {
  HotelDetailScreen({Key? key}) : super(key: key);

  @override
  _HotelDetailScreen createState() => _HotelDetailScreen();
}

class _HotelDetailScreen extends State<HotelDetailScreen> {
  List<String> listImage = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    listImage.add(ImagesCustom.onBoardImage1);
    listImage.add(ImagesCustom.onBoardImage2);
    listImage.add(ImagesCustom.onBoardImage3);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            CarouselSlider(
                items: listImage
                    .map((item) => Container(
                        height: height,
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          height: height,
                          width: width,
                        ))))
                    .toList(),
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                )),
            Positioned(
                top: height * 0.15,
                left: 25,
                child: IconButton(
                  icon: Image.asset(IconCustom.iconBack),
                  onPressed: () {},
                )),
            Positioned(
                top: height * 0.15,
                right: 25,
                child: IconButton(
                  icon: Image.asset(IconCustom.iconHeartWithBorder),
                  onPressed: () {},
                )),
            DraggableScrollableSheet(
              maxChildSize: 0.6,
              minChildSize: 0.1,
              initialChildSize: 0.1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(RadiusCustom.radiusHeader),
                          topLeft: Radius.circular(RadiusCustom.radiusHeader)),
                      color: ColorCustom.colorWhite),
                  child: ListView.builder(
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return _buildInfoHotel();
                      }),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoHotel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(
                "Grand Luxury’s",
                style: TextStyle(
                    fontSize: FontSizes.s18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              )),
              Expanded(
                  child: RichText(
                      textAlign: TextAlign.right,
                      text: const TextSpan(
                          text: "143",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: FontSizes.s15,
                              color: Colors.black),
                          children: [
                            TextSpan(
                                text: " / night",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: FontSizes.s14,
                                    color: ColorCustom.doveGrayColor))
                          ]))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(IconCustom.iconLocation),
                ),
                Expanded(
                    child: Text("Seoul, South Korea",
                        style: TextStyle(
                            fontSize: FontSizes.s14,
                            fontWeight: FontWeight.normal,
                            color: ColorCustom.doveGrayColor)))
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 15),
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
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(IconCustom.iconStar),
                ),
                Expanded(
                    child: RichText(
                        text: const TextSpan(
                            text: "4.2/5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizes.s15,
                                color: Colors.black),
                            children: [
                      TextSpan(
                          text: " (2456 reviews)",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: FontSizes.s14,
                              color: ColorCustom.doveGrayColor))
                    ]))),
                Expanded(
                    child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorCustom.indigoPurple,
                        fontSize: FontSizes.s14),
                    textAlign: TextAlign.right,
                  ),
                )),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 15),
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
            padding: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "Information",
                  style: TextStyle(
                      fontSize: FontSizes.s16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      "You will find every comfort because many of the services that the hotel offers for travellers and of course the hotel is very comfortable.",
                      style: TextStyle(
                          fontSize: FontSizes.s14, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor, height: 1.3),
                      textAlign: TextAlign.left
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
