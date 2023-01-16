import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class FlightItemScreen extends StatefulWidget {

  bool? isShowQRRCode;

  FlightItemScreen({Key? key, this.isShowQRRCode}) : super(key: key);

  @override
  _FlightItemScreen createState() => _FlightItemScreen();
}

class _FlightItemScreen extends State<FlightItemScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                color: ColorCustom.colorWhite,
                borderRadius: BorderRadius.all(
                    Radius.circular(RadiusCustom.radiusInputFormField))),
            child: Column(
              children: [
                _buildTitle(width),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset(IconCustom.iconFlightBranch2,
                              height: 60)),
                      SizedBox(width: 15),

                      _buildTextExpand(2, "Airline", "Air Asia"),
                      _buildTextExpand(2, "Passengers", "James Christin")
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      _buildTextExpand(2, "Date", "24 Mar 2020"),
                      _buildTextExpand(1, "Gate", "24A"),
                      _buildTextExpand(1, "Flight No.", "NNS24"),
                    ],
                  ),
                ),

                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      _buildTextExpand(2, "Boarding Time", "02:39pm"),
                      _buildTextExpand(1, "Seat", "5A"),
                      _buildTextExpand(1, "Class", "Ecomomy"),

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

               widget.isShowQRRCode != null ? Column(
                 children: [
                   Container(
                     height: height * 0.15,
                     child: SfBarcodeGenerator(value: "1234 5678 90AS 6543 21CV", showValue: true, textSpacing: 12),
                   )
                 ],
               ) : Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      RichText(
                         text: const TextSpan(
                             text: "215",
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: FontSizes.s15,
                                 color: Colors.black),
                             children: [
                               TextSpan(
                                   text: "/passenger",
                                   style: TextStyle(
                                       fontWeight: FontWeight.normal,
                                       fontSize: FontSizes.s14,
                                       color: ColorCustom.doveGrayColor))
                             ])),

                     Expanded(child: Text("1 passenger",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSizes.s14,
                                  color: ColorCustom.doveGrayColor), textAlign: TextAlign.right,))
                   ],
                 ),
               )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text("JKT ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizes.s17,
                    color: ColorCustom.blackColor)),
            Text("Jakarta",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: FontSizes.s15,
                    color: ColorCustom.doveGrayColor)),
          ],
        ),
        SizedBox(
          width: width * 0.1,
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: ColorCustom.blackColor,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: ColorCustom.blackColor,
            dashGapRadius: 0.0,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            child: Image.asset(IconCustom.iconFlightVertical,
                color: ColorCustom.blackColor)),
        SizedBox(
          width: width * 0.1,
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: ColorCustom.blackColor,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: ColorCustom.blackColor,
            dashGapRadius: 0.0,
          ),
        ),
        Column(
          children: [
            Text("JKP ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizes.s17,
                    color: ColorCustom.blackColor)),
            Text("Surabaya",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: FontSizes.s15,
                    color: ColorCustom.doveGrayColor)),
          ],
        ),
      ],
    );
  }

  Widget _buildTextExpand(int flex, String title, String content){
    return Expanded(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: FontSizes.s14,
                  color: ColorCustom.doveGrayColor)),
          SizedBox(height: 10),
          Text(content,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizes.s16,
                  color: ColorCustom.blackColor)),
        ],
      ),
    );
  }
}
