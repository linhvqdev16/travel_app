import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotel_filter/filter_common/filter_common_screen.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/rating/rating_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelFilterScreen extends StatefulWidget {
  HotelFilterScreen({Key? key}) : super(key: key);

  @override
  _HotelFilterScreen createState() => _HotelFilterScreen();
}

class _HotelFilterScreen extends State<HotelFilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(10, 300);

  List<RatingModel> listRatingModel = [];
  
  List<FilterCommonModel> listFilterModelCommon1 = [];

  List<FilterCommonModel> listFilterModelCommon2 = [];

  List<FilterCommonModel> listFilterModelCommon3 = [];

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: true));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: true));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));
    listRatingModel.add(new RatingModel(iconUrl: IconCustom.iconStar, isRated: false));

    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Wifi", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Digital TV", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Parking Area", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Swimming Pool", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Currency Exchange", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Restaurant", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "Car Rental", isSelected: false));
    listFilterModelCommon1.add(new FilterCommonModel(iconUrl: IconCustom.iconStar, labelItem: "24-hour Front Desk", isSelected: false));

    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Hostels", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Resorts", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Hotels", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Villas", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Guest Houses", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Homestays", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Apartments", isSelected: false));
    listFilterModelCommon2.add(new FilterCommonModel(iconUrl: null, labelItem: "Others", isSelected: false));

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
                    values: _currentRangeValues,
                    max: 3000,
                    activeColor: ColorCustom.indigoPurple,
                    inactiveColor: ColorCustom.hawkesBlue,
                    divisions: 10,
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
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Hotel Class",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: FontSizes.s14),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        height: 30,
                        child: RatingListWidget(
                            listRating: listRatingModel),
                      )
                    ],
                  ))
                ],
              ),
            ),

            DisplayFormValueWidget(
              valueForm: "Facilities",
              iconUrl: IconCustom.iconWifi,
              backGroundStackColor: ColorCustom.atomicTangerine,
              handlerClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterCommonScreen(
                  isCheckbox: true,
                  labelAppText: "Facilities",
                  list: listFilterModelCommon1,
                )));
              },
            ),

            DisplayFormValueWidget(
              valueForm: "Property Type",
              iconUrl: IconCustom.iconSkyScraper,
              backGroundStackColor: ColorCustom.froly,
              handlerClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterCommonScreen(
                  isCheckbox: true,
                  labelAppText: "Property type",
                  list: listFilterModelCommon2,
                )));
              },
            ),

            DisplayFormValueWidget(
              valueForm: "Sort By",
              iconUrl: IconCustom.iconSoreBy,
              backGroundStackColor: ColorCustom.puertoRico,
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
