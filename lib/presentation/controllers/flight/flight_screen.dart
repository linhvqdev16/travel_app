import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_booking/flight_booking_detail.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_booking/list_flight_booking.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_category/flight_category_detail.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_category/flight_category_list.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightScreen extends StatefulWidget {
  FlightScreen({Key? key}) : super(key: key);

  @override
  _FlightScreen createState() => _FlightScreen();
}

class _FlightScreen extends State<FlightScreen> {
  List<CategoryFlightModel> list = [];

  int indexSelected = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    list.add(new CategoryFlightModel(label: "One way"));
    list.add(new CategoryFlightModel(label: "Round Trip"));
    list.add(new CategoryFlightModel(label: "Multi-City"));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Book Your Flight",
          isRowAppBar: true,
          isShowIconSort: true,
          buttonHandle: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      indexSelected = 0;
                      setState(() {});
                    },
                    child: FlightCategoryDetail(
                        label: "One way",
                        isSelected: indexSelected == 0 ? true : false),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      indexSelected = 1;
                      setState(() {});
                    },
                    child: FlightCategoryDetail(
                        label: "Round Trip",
                        isSelected: indexSelected == 1 ? true : false),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      indexSelected = 2;
                      setState(() {});
                    },
                    child: FlightCategoryDetail(
                        label: "Multi-City",
                        isSelected: indexSelected == 2 ? true : false),
                  )),
                ],
              ),
              (indexSelected == 0 || indexSelected == 1)
                  ? FlightBookingDetail(
                      isRoundTrip: indexSelected == 0 ? false : true)
                  : ListFlightBookingScreen(numberOfFlight: 2),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: EvaluateButtonWidget(
                      buttonLabel: "Search",
                      buttonHandle: () {},
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
