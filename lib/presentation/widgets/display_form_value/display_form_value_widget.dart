import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:flutter/cupertino.dart';

class DisplayFormValueWidget extends StatefulWidget{

  String? iconUrl;

  String? labelForm;

  String? valueForm;
  
  Function()? handlerClick; 

  DisplayFormValueWidget({Key? key, this.iconUrl, this.labelForm, this.valueForm, this.handlerClick}) : super(key: key);

  @override
  _DisplayFormValueWidget createState() => _DisplayFormValueWidget();
}

class _DisplayFormValueWidget extends State<DisplayFormValueWidget>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.12,
      decoration: BoxDecoration(
        color: ColorCustom.anthensGray
      ),
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset(widget.iconUrl ?? ""),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Text(widget.labelForm ?? "", style: TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor), textAlign: TextAlign.center,)),
              Expanded(child: Text(widget.valueForm ?? "", style: TextStyle(fontSize: FontSizes.s12, fontWeight: FontWeight.normal, color: ColorCustom.doveGrayColor), textAlign: TextAlign.center))
            ],
          )
          
        ],
      ),
    );
  }

}