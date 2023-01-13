import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/flight/flight_category/flight_category_detail.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotel_filter/filter_common/filter_common_screen.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/rating/rating_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightFilterScreen extends StatefulWidget {
  FlightFilterScreen({Key? key}) : super(key: key);

  @override
  _FlightFilterScreen createState() => _FlightFilterScreen();
}

class _FlightFilterScreen extends State<FlightFilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(0, 24);

  RangeValues _currentRangeValues1 = const RangeValues(10, 300);

  List<RatingModel> listRatingModel = [];

  List<FilterCommonModel> listFilterModelCommon1 = [];

  List<FilterCommonModel> listFilterModelCommon2 = [];

  List<FilterCommonModel> listFilterModelCommon3 = [];

  int indexSelected = 0;

  @override
  void initState(){
    super.initState();

    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Wifi", isSelected: false, isShowIcon: true));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Baggage", isSelected: false,isShowIcon: true));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Power / USB Port", isSelected: false, isShowIcon: true));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "In-Flight Meal", isSelected: false, isShowIcon: true));


    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Earliest Departure", isSelected: false, isShowIcon: false));
    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Latest Departure", isSelected: false, isShowIcon: false));
    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Earliest Arrive", isSelected: false, isShowIcon: false));
    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Latest Arrive", isSelected: false, isShowIcon: false));
    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Shortest Duration", isSelected: false, isShowIcon: false));

    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Lowest Price", isSelected: false, isShowIcon: false));
    listFilterModelCommon3.add(new FilterCommonModel(iconUrl: "", labelItem: "Highest popularity", isSelected: false, isShowIcon: false));
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();

    listRatingModel = [];
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: true));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: true));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [

            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const SizedBox(
                width: 70,
                child: Divider(thickness: 5),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Choose Your Filter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: FontSizes.s16),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Transit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: FontSizes.s14),
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            indexSelected = 0;
                            setState(() {});
                          },
                          child: FlightCategoryDetail(
                              label: "Direct",
                              isSelected: indexSelected == 0 ? true : false),
                        )),
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            indexSelected = 1;
                            setState(() {});
                          },
                          child: FlightCategoryDetail(
                              label: "1 Transit",
                              isSelected: indexSelected == 1 ? true : false),
                        )),
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            indexSelected = 2;
                            setState(() {});
                          },
                          child: FlightCategoryDetail(
                              label: "2+ Transits",
                              isSelected: indexSelected == 2 ? true : false),
                        )),
                  ],
                )),


            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Transit Duration",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: FontSizes.s14),
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SliderTheme(
                  data: SliderThemeData(trackHeight: 0.5),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    max: 24,
                    activeColor: ColorCustom.indigoPurple,
                    inactiveColor: ColorCustom.hawkesBlue,
                    divisions: 1,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                )),

            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Budget",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: FontSizes.s14),
                      ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SliderTheme(
                  data: SliderThemeData(trackHeight: 0.5),
                  child: RangeSlider(
                    values: _currentRangeValues1,
                    max: 3000,
                    activeColor: ColorCustom.indigoPurple,
                    inactiveColor: ColorCustom.hawkesBlue,
                    divisions: 10,
                    labels: RangeLabels(
                      _currentRangeValues1.start.round().toString(),
                      _currentRangeValues1.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues1 = values;
                      });
                    },
                  ),
                )),

            DisplayFormValueWidget(
              valueForm: "Facilities",
              iconUrl: IconCustom.iconWifi,
              backGroundStackColor: ColorCustom.atomicTangerine,
              handlerClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterCommonScreen(
                  isCheckbox: true,
                  labelAppText: "Facilities",
                  list: listFilterModelCommon1,
                  labelButton: "Done",

                )));
              },
            ),

            DisplayFormValueWidget(
              valueForm: "Sort By",
              iconUrl: IconCustom.iconSoreBy,
              backGroundStackColor: ColorCustom.puertoRico,
              handlerClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterCommonScreen(
                  isCheckbox: false,
                  labelAppText: "Sort by",
                  list: listFilterModelCommon3,
                  labelButton: "Apply",
                )));
              },
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(child: EvaluateButtonWidget(
                    buttonLabel: "Apply",
                    buttonHandle: (){
                      Navigator.of(context).pop();
                    },
                  ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(child: EvaluateButtonWidget(
                    buttonLabel: "Reset",
                    buttonHandle: (){
                      Navigator.of(context).pop();
                    },
                    buttonLabelColor: ColorCustom.indigoPurple,
                    opacity: 0.1,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
