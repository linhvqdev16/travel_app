import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSeatViewScreen extends StatefulWidget {
  List<String>? listString;

  ListSeatViewScreen({Key? key, this.listString}) : super(key: key);

  @override
  _ListSeatViewScreen createState() => _ListSeatViewScreen();
}

class _ListSeatViewScreen extends State<ListSeatViewScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: height * 0.00088
      ),
      itemCount: widget.listString?.length ?? 0,
      itemBuilder: (context, position) {
        return _buildItem(widget.listString![position]);
      },
    );
  }

  Widget _buildItem(String value) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: ColorCustom.indigoPurple.withOpacity(0.4), 
        borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusInputFormField))
      ),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(value.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: FontSizes.s14),)),
    );
  }
}
