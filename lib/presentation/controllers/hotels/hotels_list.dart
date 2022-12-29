import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/controllers/hotels/hotel_card_widget.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class HotelListScreen extends StatefulWidget{

  const HotelListScreen({Key? key}) : super(key: key);

  @override
  _HotelListScreen createState() => _HotelListScreen();
}

class _HotelListScreen extends State<HotelListScreen>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(height: 0),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                height: height * 0.35,
                child: AppBarWidget(
                  labelAppBar: "Hotels",
                  isRowAppBar: true,
                )
            ),

            Positioned(
                top: height * 0.27,
                child: HotelCardWidget()
            )
          ],
        ),
      )
    );
  }
}