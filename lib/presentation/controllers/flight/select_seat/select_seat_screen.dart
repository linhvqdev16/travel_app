import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:base_flutter_app/presentation/controllers/flight/checkout/book_and_review.dart';
import 'package:base_flutter_app/presentation/controllers/flight/select_seat/seat_view/list_row_number.dart';
import 'package:base_flutter_app/presentation/controllers/flight/select_seat/seat_view/list_seat_view.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectSeatScreen extends StatefulWidget {
  SelectSeatScreen({Key? key}) : super(key: key);

  @override
  _SelectSeatScreen createState() => _SelectSeatScreen();
}

class _SelectSeatScreen extends State<SelectSeatScreen> {
  List<String> listStr = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    listStr = ["A", "b", "c", "d", "e", "f"];
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(
          height: 0,
        ),
      ),
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Expanded(
                child: EvaluateButtonWidget(
              buttonLabel: "Process",
              buttonHandle: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlightBookAndReviewScreen()));
              },
            ))
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                height: height * 0.35,
                child: AppBarWidget(
                  labelAppBar: "Search Seat",
                  isRowAppBar: true,
                  isShowIconSort: true,
                  buttonHandle: () {
                    Navigator.of(context).pop();
                  },
                )),
            Positioned(
                left: 10,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(RadiusCustom.radiusInputFormField))),
                  margin: EdgeInsets.symmetric(
                      vertical: height * 0.4, horizontal: 10),
                  color: ColorCustom.colorWhite,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.09,
                            padding: const EdgeInsets.all(6),
                            margin: EdgeInsets.symmetric(
                                vertical: height * 0.03, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    RadiusCustom.radiusInputFormField)),
                                color:
                                    (ColorCustom.puertoRico).withOpacity(0.2)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(IconCustom.iconSeat),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Seat",
                                    style: TextStyle(
                                        color: ColorCustom
                                            .deActiveIndicationColor)),
                                SizedBox(height: 10),
                                Text("5A",
                                    style: TextStyle(
                                        color: ColorCustom.indigoPurple,
                                        fontSize: FontSizes.s15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Economy Class",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizes.s14),
                          )
                        ],
                      ),
                      Container(
                        width: width * 0.2,
                        padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                        margin: EdgeInsets.only(
                            top: height * 0.01,
                            right: 20,
                            left: 20,
                            bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                RadiusCustom.radiusImagePortrait)),
                            color: (ColorCustom.mediumPurple).withOpacity(0.2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("240",
                              style: TextStyle(
                                  fontSize: FontSizes.s16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorCustom.indigoPurple)),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: height * 0.2,
                right: 5,
                child: Container(
                  width: width * 0.6,
                  child: Stack(
                    children: [
                      Image.asset(
                        ImagesCustom.imageSeat,
                      ),
                      Positioned(
                          top: height * 0.15,
                          right: width * 0.1,
                          child: Image.asset(ImagesCustom.imageFirstSeat)),
                      Positioned(
                        top: height * 0.33,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: width * 0.6,
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Bussiness Class",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: FontSizes.s14),
                                    ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 3),
                                    width: width * 0.2,
                                    height: height * 0.22,
                                    child:
                                        ListSeatViewScreen(listString: listStr),
                                  ),
                                  Container(
                                    width: width * 0.1,
                                    height: height * 0.22,
                                    child: ListRowNumberScreen(
                                        listStr: (listStr.length / 2).round()),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 3),
                                    width: width * 0.2,
                                    height: height * 0.22,
                                    child:
                                        ListSeatViewScreen(listString: listStr),
                                  )
                                ],
                              ),
                              Container(
                                width: width * 0.6,
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      "Economy Class",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: FontSizes.s14),
                                    ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 3),
                                    width: width * 0.2,
                                    height: height * 0.3,
                                    child:
                                        ListSeatViewScreen(listString: listStr),
                                  ),
                                  Container(
                                    width: width * 0.1,
                                    height: height * 0.3,
                                    child: ListRowNumberScreen(
                                        listStr: (listStr.length / 2).round()),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.symmetric(horizontal: 3),
                                    width: width * 0.2,
                                    height: height * 0.3,
                                    child:
                                        ListSeatViewScreen(listString: listStr),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
              top: height * 0.7,
              left: width * 0.1,
              child: Column(
                children: [
                  Text("SYB",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizes.s22,
                          color: ColorCustom.indigoPurple)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Image.asset(
                      IconCustom.iconFlight,
                      color: ColorCustom.indigoPurple,
                    ),
                  ),
                  Text("JKT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizes.s22,
                          color: ColorCustom.indigoPurple)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
