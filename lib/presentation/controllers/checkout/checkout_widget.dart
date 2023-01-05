import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/presentation/controllers/select_room/room_info_item.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:base_flutter_app/presentation/widgets/button_card/button_card_widget.dart';
import 'package:flutter/material.dart';

class CheckoutWidget extends StatefulWidget{

  CheckoutWidget({Key? key}) : super(key: key);

  @override
  _CheckoutWidget createState() => _CheckoutWidget();
}

class _CheckoutWidget extends State<CheckoutWidget>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: SizedBox(height: 0),
        ),
        backgroundColor: ColorCustom.anthensGray,
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                  height: height * 0.35,
                  child: AppBarWidget(
                    labelAppBar: "Checkout",
                    isRowAppBar: true,
                    isShowIconSort: true,
                  )),
              Container(
                margin: EdgeInsets.only(top: height * 0.25),
                child: Column(
                  children: [
                    Expanded(child:  SingleChildScrollView(
                      child: Column(
                        children: [
                          RoomItemCardWidget(),

                          ButtonCardWidget(
                            labelButton: "Test",
                            iconUrl: IconCustom.iconRestaurant,
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

