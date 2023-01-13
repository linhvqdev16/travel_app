import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:flutter/cupertino.dart';

class ListRowNumberScreen extends StatefulWidget{

  int listStr;

  ListRowNumberScreen({Key? key, required this.listStr}) : super(key: key);
  
  @override
  _ListRowNumberScreen createState() => _ListRowNumberScreen();
}

class _ListRowNumberScreen  extends State<ListRowNumberScreen>{

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: height * 0.00095
      ),
      itemCount: widget.listStr,
      itemBuilder: (context, position) {
        return _buildItem(position.toString());
      },
    );
  }

  Widget _buildItem(String value) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(value.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: FontSizes.s14),)),
    );
  }
  
}