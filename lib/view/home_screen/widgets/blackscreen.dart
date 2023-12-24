import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/bottomnav_screen/bottonnav_screen.dart';
import 'package:netflix/view/home_screen/widgets/home_page.dart';
import 'package:netflix/view/home_screen/widgets/mylist_screen.dart';

class BlackScreen extends StatelessWidget {
  const BlackScreen({
    super.key,
    this.showsWeight = FontWeight.w400,
    this.showsSize = 24.68,
    this.moviesweight = FontWeight.w400,
    this.moviesSize = 24.68,
    this.myListWeight = FontWeight.w400,
    this.myListSize = 24.68,
  });
  final FontWeight showsWeight;
  final double showsSize;
  final FontWeight moviesweight;
  final double moviesSize;
  final FontWeight myListWeight;
  final double myListSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainBlack,
      body: Center(
        child: SizedBox(
          height: 200,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => BottomNavScreen(),
                      )),
                  child: Text("All",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.68,
                          color: ColorConstant.mainWhite)),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => HomePage(),
                      )),
                  child: Text("TV Shows ",
                      style: TextStyle(
                          fontWeight: showsWeight,
                          fontSize: showsSize,
                          color: ColorConstant.mainWhite)),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => HomePage(),
                      )),
                  child: Text("Movies",
                      style: TextStyle(
                          fontWeight: moviesweight,
                          fontSize: moviesSize,
                          color: ColorConstant.mainWhite)),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      DialogRoute(
                        context: context,
                        builder: (context) => MyList(),
                      )),
                  child: Text("My List",
                      style: TextStyle(
                          fontWeight: myListWeight,
                          fontSize: myListSize,
                          color: ColorConstant.mainWhite)),
                ),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              DialogRoute(
                context: context,
                builder: (context) => HomePage(),
              ));
        },
        child: Icon(
          Icons.close,
          size: 33,
        ),
        backgroundColor: ColorConstant.mainWhite,
        foregroundColor: ColorConstant.mainBlack,
      ),
    );
  }
}
