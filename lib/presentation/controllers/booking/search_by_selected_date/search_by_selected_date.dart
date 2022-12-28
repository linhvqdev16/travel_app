import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:base_flutter_app/presentation/widgets/selected_date/selected_date_range_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SearchBySelectedDate extends StatefulWidget{

  SearchBySelectedDate({Key? key}) : super(key: key);

  @override
  _SearchBySelectedDate createState() => _SearchBySelectedDate();
}

class _SearchBySelectedDate extends State<SearchBySelectedDate>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: AppBarWidget(
          labelAppBar: "Select date",
          buttonHandle: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: LayoutScreen(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: SelectedDateRangeWidget(
                  dateRangePickerView: DateRangePickerView.month,
                  dateRangePickerSelectionMode: DateRangePickerSelectionMode.range,
                ),
              ),

              Row(
              children: [
                Expanded(
                    child: EvaluateButtonWidget(
                  buttonLabel: "Select",
                  buttonHandle: (){

                  },
                ))
              ],
                ),

              Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: EvaluateButtonWidget(
                          buttonLabel: "Cancel",
                          buttonHandle: (){

                          },
                          buttonLabelColor: ColorCustom.indigoPurple,
                          opacity: 0.1,
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        )
      ),
    );
  }

}