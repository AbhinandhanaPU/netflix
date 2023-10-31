import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/comingsoon_screen/comingsoon.dart';
import 'package:netflix/view/download_screen/downloadscreen.dart';
import 'package:netflix/view/home_screen/widgets/home_page.dart';
import 'package:netflix/view/more_screen/morescreen.dart';
import 'package:netflix/view/search_screen/search.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var indexNum = 0;
  List tabWidgetsList = [
    HomePage(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainBlack,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "Coming Soon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vertical_align_bottom_outlined),
            label: "Downloads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_sharp),
            label: "More",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstant.mainBlack,
        iconSize: 28,
        selectedLabelStyle:
            TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        selectedItemColor: ColorConstant.mainWhite,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
      body: tabWidgetsList.elementAt(indexNum),
    );
  }
}
