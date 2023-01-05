import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/icons.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget{

  Function()? buttonHandle;

  String? labelAppBar;

  String? contentAppBar;

  bool? isRowAppBar;

  bool? isShowIconSort;

  AppBarWidget({Key? key, this.buttonHandle, this.labelAppBar, this.contentAppBar, this.isRowAppBar, this.isShowIconSort}) : super(key: key);

  @override
  _AppBarWidget createState() => _AppBarWidget();
}

class _AppBarWidget extends State<AppBarWidget>{

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AppBar(
      backgroundColor: ColorCustom.pageModelBackgroundColor,
      elevation: 0,
      leading: Container(),
      flexibleSpace:  Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(RadiusCustom.radiusHeader)),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  ColorCustom.mediumPurple,
                  ColorCustom.indigoPurple
                ]
            ),
            image: DecorationImage(image: AssetImage(ImagesCustom.ovalImageHeader), fit: BoxFit.fill),
        ),
        child: (widget.isRowAppBar ?? false) ?
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(IconCustom.iconBack),
                    onPressed: widget.buttonHandle,
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Text(widget.labelAppBar ?? "",
                        style: const TextStyle(
                            fontSize: FontSizes.s22,
                            fontWeight: FontWeight.bold,
                            color: ColorCustom.colorWhite
                        )),
                  ),

                  (widget.isShowIconSort ?? false) ? Container() : IconButton(
                    icon: Image.asset(IconCustom.iconSort),
                    onPressed: widget.buttonHandle,
                  ),

                ],
              ),
            ):  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(padding: EdgeInsets.only(top: height * 0.13, left: 32),
            child: IconButton(
              icon: Image.asset(IconCustom.iconBack),
              onPressed: widget.buttonHandle,
            )),

            Padding(padding: EdgeInsets.only(bottom: 0),
            child: Align(
              alignment: Alignment.center,
              child: Text(widget.labelAppBar ?? "",
                  style: const TextStyle(
                      fontSize: FontSizes.s18,
                      fontWeight: FontWeight.bold,
                      color: ColorCustom.colorWhite
                  )),
            )

            ),

            Padding(padding: EdgeInsets.only(bottom: 13),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(widget.contentAppBar ?? "",
                      style: const TextStyle(
                          fontSize: FontSizes.s12,
                          fontWeight: FontWeight.normal,
                          color: ColorCustom.colorWhite
                      )),
                )

            )
          ],
        ),
      ),

    );
  }

}