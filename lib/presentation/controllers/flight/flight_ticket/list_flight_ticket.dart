import 'package:base_flutter_app/presentation/controllers/flight/flight_ticket/detail_flight_ticket.dart';
import 'package:base_flutter_app/presentation/controllers/flight/search_flight/search_flight_list.dart';
import 'package:flutter/cupertino.dart';

class ListFlightTicketWidget extends StatefulWidget{

  List<FlightTicketModel>? list;

  ListFlightTicketWidget({Key? key, this.list}) : super(key: key);

  @override
  _ListFlightTicketWidget createState() => _ListFlightTicketWidget();
}

class _ListFlightTicketWidget extends State<ListFlightTicketWidget>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list?.length ?? 0,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, position){
          return FlightTicketDetailWidget(model: widget.list![position]);
        });
  }


}