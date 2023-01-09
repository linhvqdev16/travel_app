import 'package:base_flutter_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class RatingListWidget extends StatefulWidget {
  List<RatingModel>? listRating;

  RatingListWidget({Key? key, this.listRating}) : super(key: key);

  @override
  _RatingListWidget createState() => _RatingListWidget();
}

class _RatingListWidget extends State<RatingListWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.listRating?.length ?? 0,
        itemBuilder: (context, position) {
          return _buildRatingItem(widget.listRating![position], width, position);
        });
  }

  Widget _buildRatingItem(RatingModel item, double width, int index) {
    return GestureDetector(
      onTap: () {
        item.isRated = (item.isRated ?? false) ? false : true;
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.only(right:  width * 0.035,  left: index == 0 ? 0 :  width * 0.035),
        child: Image.asset(item.iconUrl ?? "",
            color: (item.isRated ?? false)
                ? ColorCustom.yellowColor
                : ColorCustom.doveGrayColor
        ),
      ),
    );
  }
}

class RatingModel {
  String? iconUrl;

  bool? isRated;

  RatingModel({this.iconUrl, this.isRated});
}
