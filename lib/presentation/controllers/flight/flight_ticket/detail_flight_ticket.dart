import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/search_flight/search_flight_list.dart';
import 'package:base_flutter_app/presentation/controllers/flight/select_seat/select_seat_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightTicketDetailWidget extends StatefulWidget {

  FlightTicketModel? model;

  FlightTicketDetailWidget({Key? key, this.model}) : super(key: key);

  @override
  _FlightTicketDetailWidget createState() => _FlightTicketDetailWidget();
}

class _FlightTicketDetailWidget extends State<FlightTicketDetailWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectSeatScreen()));
      },
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField)),
              color: ColorCustom.colorWhite),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    widget.model?.iconUrl ??  IconCustom.iconFlightBranch1,
                    height: height * 0.1,
                  ),
                ),
              ),


              Container(
                height: height * 0.12,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: DottedLine(
                  direction: Axis.vertical,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: ColorCustom.deActiveIndicationColor,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.white,
                  dashGapRadius: 0.0,
                ),
              ),


              Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [

                        Row(
                          children: [

                            Expanded(child: Text("Departure", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),)),

                            Expanded(child: Text("Arrive", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),))

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [

                              Expanded(child: Text( widget.model?.departureTime ?? "", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),)),

                              Expanded(child: Text( widget.model?.arriveTime ?? "", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),))

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [

                              Expanded(child: Text("Flight No.", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor),)),

                              //    Expanded(child: Text("08:43am", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),))

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [

                              Expanded(child: Text(widget.model?.flightNo ?? "", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),)),

                              Expanded(child: Text(widget.model?.price ?? "", style: TextStyle(fontSize: FontSizes.s13, fontWeight: FontWeight.bold, color: ColorCustom.doveGrayColor),))

                            ],
                          ),
                        )

                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
