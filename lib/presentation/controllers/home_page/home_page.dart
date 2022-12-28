import 'package:base_flutter_app/application/models/catgory_model.dart';
import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/font_sizes.dart';
import 'package:base_flutter_app/constants/images.dart';
import 'package:base_flutter_app/presentation/controllers/category/category_list_widget.dart';
import 'package:base_flutter_app/presentation/controllers/home_page/home.dart';
import 'package:base_flutter_app/presentation/controllers/popular_destinations/popular_list_widget.dart';
import 'package:base_flutter_app/presentation/widgets/app_bar_widgets/home_page_appbar.dart';
import 'package:base_flutter_app/presentation/widgets/buttons/flat_button_widget.dart';
import 'package:base_flutter_app/presentation/widgets/common/layout_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget{

  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreen createState() => _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen>{
  
  List<CategoryModel> list = [];

  List<PopularDestination> listPopularDestination = [];
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    list.add(new CategoryModel(label: "Hotels", color: ColorCustom.atomicTangerine, iconUrl: ImagesCustom.hotelImage));
    list.add(new CategoryModel(label: "Flights", color: ColorCustom.froly, iconUrl: ImagesCustom.flightImage));
    list.add(new CategoryModel(label: "All", color: ColorCustom.puertoRico, iconUrl: ImagesCustom.hotelFlightImage));

    listPopularDestination.add(new PopularDestination(height: 150, isFavorite:  true, namePlace: "VietNam", pointRating: 5, imageUrl: ImagesCustom.imagePlace));
    listPopularDestination.add(new PopularDestination(height: 200, isFavorite:  true, namePlace: "VietNam", pointRating: 2, imageUrl: ImagesCustom.imagePlace));
    listPopularDestination.add(new PopularDestination(height: 250, isFavorite:  true, namePlace: "VietNam", pointRating: 3, imageUrl: ImagesCustom.imagePlace1));
    listPopularDestination.add(new PopularDestination(height: 300, isFavorite:  true, namePlace: "VietNam", pointRating: 2, imageUrl: ImagesCustom.imagePlace));
    listPopularDestination.add(new PopularDestination(height: 350, isFavorite:  false, namePlace: "VietNam", pointRating: 2, imageUrl: ImagesCustom.imagePlace1));
    listPopularDestination.add(new PopularDestination(height: 250, isFavorite:  false, namePlace: "VietNam", pointRating: 1, imageUrl: ImagesCustom.imagePlace));
    listPopularDestination.add(new PopularDestination(height: 200, isFavorite:  false, namePlace: "VietNam", pointRating: 3, imageUrl: ImagesCustom.imagePlace1));
    listPopularDestination.add(new PopularDestination(height: 80, isFavorite:  false, namePlace: "VietNam", pointRating: 4, imageUrl: ImagesCustom.imagePlace));
    listPopularDestination.add(new PopularDestination(height: 260, isFavorite:  false, namePlace: "VietNam", pointRating: 5, imageUrl: ImagesCustom.imagePlace1));



  }
  
  @override
  Widget build(BuildContext context) {
   var height = MediaQuery.of(context).size.height;
   return HomeScreen(
      widget: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                SizedBox(
                    height: height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    child: HomePageAppBarWidget(
                      labelAppBar: "Hi, James !",
                      contentAppBar: "Where are you going next?",
                    )
                ),
              ],
            ),

            const SizedBox(height: 31),

            LayoutScreen(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                      child: Align(
                        alignment: Alignment.center,
                        child: CategoryListWidget(list: list),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                            child: Text("Popular Destinations", style: TextStyle(fontSize: FontSizes.s17, color: ColorCustom.mineShaft, fontWeight: FontWeight.bold))),

                        Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: FlatButtonWidget(labelButton: "See all", handlerOnPressed: (){

                          }, labelColor: ColorCustom.indigoPurple),
                        ))
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(child: Column(
                          children: [
                            PopularDestinationListWidget(list: listPopularDestination),
                          ],
                        )),

                        const SizedBox(width: 25),

                        Expanded(child: Column(
                          children: [
                            PopularDestinationListWidget(list: listPopularDestination.reversed.toList()),
                          ],
                        ))
                      ],
                    )

                  ],
                )
            ),
          ],
        ),
      ),
   );
  }

}