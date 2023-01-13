import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_filter/flight_filter.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_ticket/list_flight_ticket.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFlightListScreen extends StatefulWidget {
  SearchFlightListScreen({Key? key}) : super(key: key);

  
  @override
  _SearchFlightListScreen createState() => _SearchFlightListScreen();
}

class _SearchFlightListScreen extends State<SearchFlightListScreen> {
  
  List<FlightTicketModel> list = []; 
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    
    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch1, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));
    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch2, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch3, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch4, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch1, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));
    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch2, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch3, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

    list.add(new FlightTicketModel(iconUrl: IconCustom.iconFlightBranch4, departureTime: "05:21Aam", arriveTime: "08:43am", flightNo: "NNS24", price: "1610"));

  }
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(
          height: 0,
        ),
      ),
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                height: height * 0.35,
                child: AppBarWidget(
                  labelAppBar: "Search Result",
                  isRowAppBar: true,
                  buttonHandle: () {
                    Navigator.of(context).pop();
                  },
                  buttonHandlerFilter: () {
                    showBottomSheetModel(height);
                  },
                  contentAppBar: "Search Information",
                  widget: _buildTitle(width),
                  dateStr: "3 Feb, 2021",
                  numberPeople: "1 Adult",
                  typeFlight: "Economy",
                )),
            Container(
              margin: EdgeInsets.only(top: height * 0.25),
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [ListFlightTicketWidget(list: list)],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(double width) {
    return Row(
      children: [
        Text("JKT ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.s14,
                color: ColorCustom.colorWhite)),
        SizedBox(
          width: width * 0.1,
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: ColorCustom.colorWhite,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: ColorCustom.colorWhite,
            dashGapRadius: 0.0,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(right: 10, left: 10),
            child: Image.asset(IconCustom.iconFlightVertical,
                color: ColorCustom.colorWhite)),
        SizedBox(
          width: width * 0.1,
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: ColorCustom.colorWhite,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: ColorCustom.colorWhite,
            dashGapRadius: 0.0,
          ),
        ),
        Text(" JKP",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: FontSizes.s14,
                color: ColorCustom.colorWhite)),
      ],
    );
  }

  void showBottomSheetModel(double height) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        // <-- SEE HERE
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(RadiusCustom.radiusButton),
            topLeft: Radius.circular(RadiusCustom.radiusButton)),
      ),
      builder: (BuildContext context) {
        return FlightFilterScreen();
      },
    );
  }
}

class FlightTicketModel {
  String? iconUrl;

  String? departureTime;

  String? arriveTime;

  String? flightNo;

  String? price;

  FlightTicketModel(
      {this.iconUrl,
      this.departureTime,
      this.arriveTime,
      this.flightNo,
      this.price});
}
