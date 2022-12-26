import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/evaluate_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/onboard_widgets/page_model_widgets.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../../controllers/authenticate/sign_in/sign_in.dart';

class OnBoardModelWidget extends StatefulWidget{

  const OnBoardModelWidget({Key? key}) : super(key: key);

  @override
  _OnBoardModelWidget createState() => _OnBoardModelWidget();

}

class _OnBoardModelWidget extends State<OnBoardModelWidget>{


  int index = 0;

  @override
  void initState(){
    super.initState();
    index = 0;
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }

  final onBoardingPageList = [
    PageModel(
      widget: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: ColorCustom.pageModelBackgroundColor)
          ),
        child: PageModelWidget(imageUrl: ImagesCustom.onBoardImage1,
        textLabel: "Book a flight",
        textContent: "Found a flight that matches your destination and schedule? Book it instantly."),
      )
    ),

    PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: ColorCustom.pageModelBackgroundColor)
          ),
          child: PageModelWidget(imageUrl: ImagesCustom.onBoardImage2,
              textLabel: "Find a hotel room",
              textContent: "Select the day, book your room. We give you the best price."),
        )
    ),

    PageModel(
        widget: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: ColorCustom.pageModelBackgroundColor)
          ),
          child: PageModelWidget(imageUrl: ImagesCustom.onBoardImage3,
              textLabel: "Enjoy your trip",
              textContent: "Easy discovering new places and share these between your friends and travel together.."),
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: ColorCustom.pageModelBackgroundColor
        ),
      child:  Onboarding(
          pages: onBoardingPageList,
          onPageChange: (int pageIndex){
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context,  dragDistance, pagesLength, setIndex){
            return DecoratedBox(
              decoration: BoxDecoration(
                color: ColorCustom.pageModelBackgroundColor,
                border: Border.all(width: 1.0, color: ColorCustom.pageModelBackgroundColor),
              ),
              child: ColoredBox(
                color: ColorCustom.pageModelBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 25, bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIndicator(
                          netDragPercent: dragDistance,
                          indicator: Indicator(
                              indicatorDesign: IndicatorDesign.polygon(
                                  polygonDesign: PolygonDesign(
                                      polygon: DesignType.polygon_circle, polygonRadius: 5, polygonSpacer: 25)),
                              activeIndicator: const ActiveIndicator(color: ColorCustom.activeIndicationColor),
                              closedIndicator: const ClosedIndicator(color: ColorCustom.deActiveIndicationColor)
                          ),
                          pagesLength: pagesLength),

                      index == pagesLength - 1 ? EvaluateButtonWidget(
                        buttonLabel: "Get Started",
                        buttonHandle : () => handleGetStartedButton(context),
                      ) :  EvaluateButtonWidget(
                        buttonLabel: "Next",
                        buttonHandle : () => handleNextButton(setIndex: setIndex, index: index + 1)
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void handleNextButton( { void Function(int)? setIndex, int? index, int? length} ){
     setIndex!(index ?? 0);
  }

  void handleGetStartedButton(BuildContext context){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignInScreen()), (route) => false);
  }


}