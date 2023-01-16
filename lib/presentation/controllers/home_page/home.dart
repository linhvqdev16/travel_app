import 'package:base_flutter_app/constants/colors.dart';
import 'package:base_flutter_app/constants/radius.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  Widget? widget;

  HomeScreen({Key? key, this.widget}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      body: widget.widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorCustom.colorWhite,
        unselectedItemColor: ColorCustom.indigoPurple.withOpacity(0.2),
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: selectedTab == 0
                  ? _selectedBottomBar(Icons.home_rounded, "Home")
                  : Icon(Icons.home_rounded),
              label: ""),
          BottomNavigationBarItem(
            icon: selectedTab == 1
                ? _selectedBottomBar(Icons.favorite_rounded, "Favorite")
                : Icon(Icons.favorite_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: selectedTab == 2
                ? _selectedBottomBar(Icons.business_center_sharp, "Work")
                : Icon(Icons.business_center_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: selectedTab == 3
                ? _selectedBottomBar(Icons.account_circle_rounded, "Account")
                : Icon(Icons.account_circle_rounded),
            label: '',
          ),
        ],
        currentIndex: selectedTab,
        selectedItemColor: ColorCustom.indigoPurple.withOpacity(0.2),
        onTap: (int? value) {
          selectedTab = value ?? 0;
          setState(() {});
        },
      ),
    );
  }

  Widget _selectedBottomBar(IconData icon, String label) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 25),
      padding: const EdgeInsets.only(top: 10, left: 8, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(RadiusCustom.radiusButton)),
          color: ColorCustom.indigoPurple.withOpacity(0.5)),
      child: Row(
        children: [
          Icon(
              icon,
              color: ColorCustom.indigoPurple
          ),
          Expanded(
              child: Text(
                label,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: ColorCustom.indigoPurple),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
