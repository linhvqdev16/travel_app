import 'package:base_flutter_app/presentation/controllers/flight/flight_booking/flight_booking_detail.dart';
import 'package:flutter/cupertino.dart';

class ListFlightBookingScreen extends StatefulWidget{

  int? numberOfFlight;

  ListFlightBookingScreen({Key? key, this.numberOfFlight}) : super(key: key);

  @override
  _ListFlightBookingScreen createState() => _ListFlightBookingScreen();
}

class _ListFlightBookingScreen extends State<ListFlightBookingScreen>{

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: widget.numberOfFlight ?? 1,
       shrinkWrap: true,
       physics: const NeverScrollableScrollPhysics(),
       scrollDirection: Axis.vertical,
       itemBuilder: (context, position){
         return FlightBookingDetail(position: position, isList: true,);
       },
     );
  }


}