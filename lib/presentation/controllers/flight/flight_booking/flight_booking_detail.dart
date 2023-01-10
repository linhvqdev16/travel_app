import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_form_value_widget.dart';
import 'package:base_flutter_app/presentation/widgets/display_form_value/display_from_range_value_widget.dart';
import 'package:flutter/cupertino.dart';

class FlightBookingDetail extends StatefulWidget{

  bool? isRoundTrip;

  FlightBookingDetail({Key? key, this.isRoundTrip}) : super(key: key);

  @override
  _FlightBookingDetail createState() => _FlightBookingDetail();
}

class _FlightBookingDetail extends State<FlightBookingDetail>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          child: Stack(
            children: [
              Column(
                children: [
                  DisplayFormRangeValueWidget(
                    labelForm: "From",
                    valueForm: "Jakarta",
                    iconUrl: IconCustom.iconFlight,
                    backGroundStackColor: ColorCustom.colorWhite,
                    handlerClick: (){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
                    },
                    isReverse: true,
                  ),

                  DisplayFormRangeValueWidget(
                    labelForm: "To",
                    valueForm: "Jakarta",
                    iconUrl: IconCustom.iconLocation,
                    backGroundStackColor: ColorCustom.colorWhite,
                    handlerClick: (){
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
                    },
                  ),
                ],
              ),

              Positioned(
                  top: height * 0.12,
                  right: height * 0.03,
                  child: Container(
                height: 60,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorCustom.indigoPurple.withOpacity(0.2)
                ),
                child: Align(
                  child: Image.asset(IconCustom.iconArrow),
                ),
              ))

            ],
          ),
        ),

        (widget.isRoundTrip ?? false) ? DisplayFormValueWidget(
          labelForm: "Return",
          valueForm: "Select Date",
          iconUrl: IconCustom.iconCalender,
          backGroundStackColor: ColorCustom.froly,
          handlerClick: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
          },
        ) : SizedBox(height: 0),

        DisplayFormValueWidget(
          labelForm: "Departure",
          valueForm: "Select Date",
          iconUrl: IconCustom.iconCalender,
          backGroundStackColor: ColorCustom.froly,
          handlerClick: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
          },
        ),

        DisplayFormValueWidget(
          labelForm: "Passengers",
          valueForm: "1 Passenger",
          iconUrl: IconCustom.iconUser,
          backGroundStackColor: ColorCustom.froly,
          handlerClick: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
          },
        ),

        DisplayFormValueWidget(
          labelForm: "Class",
          valueForm: "Economy",
          iconUrl: IconCustom.iconSeat,
          backGroundStackColor: ColorCustom.puertoRico,
          handlerClick: (){
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchBySelectedDate()));
          },
        ),
      ],
    );
  }
}

