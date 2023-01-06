import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/presentation/controllers/select_room/room_info_item.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class SelectRoomWidget extends StatefulWidget{

  SelectRoomWidget({Key? key}) : super(key: key);

  @override
  _SelectRoomWidget createState() => _SelectRoomWidget();
}

class _SelectRoomWidget extends State<SelectRoomWidget>{

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
                      labelAppBar: "Select Room",
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
                            ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, position) {
                                  return RoomItemCardWidget(
                                    isListRoom: true,
                                  );
                                })
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

