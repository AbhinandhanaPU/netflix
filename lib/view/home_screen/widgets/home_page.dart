import 'package:flutter/material.dart';
import 'package:netflix/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';
import 'package:netflix/view/home_screen/widgets/blackscreen.dart';
import 'package:netflix/view/home_screen/widgets/movies_list_builder.dart';
import 'package:netflix/view/home_screen/widgets/mylist_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //textstyle for top tab texts
    TextStyle topTabTextStyle = TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17.2,
        color: ColorConstant.mainWhite);

    return Scaffold(
      backgroundColor: ColorConstant.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 415,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage(DataBase.homeScreen),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SafeArea(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(ImageConstant.netflixLogoIcon),
                          InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlackScreen(
                                          showsWeight: FontWeight.w600,
                                          showsSize: 29.68))),
                              child: Text("Tv Shows", style: topTabTextStyle)),
                          InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlackScreen(
                                          moviesweight: FontWeight.w600,
                                          moviesSize: 29.68))),
                              child: Text("Movies", style: topTabTextStyle)),
                          InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyList())),
                              child: Text("My List", style: topTabTextStyle)),
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Image.asset('asset/images/Group 16.png'),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "#2 in Nigeria Today",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.72,
                            color: ColorConstant.mainWhite),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.add, size: 30, color: ColorConstant.mainWhite),
                    SizedBox(height: 5),
                    Text(
                      "My List",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.64,
                          color: ColorConstant.mainWhite),
                    )
                  ],
                ),
                InkWell(
                  child: Container(
                    height: 45,
                    width: 110.63,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(5.63)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.play_arrow, size: 35),
                          Text("Play",
                              style: TextStyle(
                                  fontSize: 20.46, fontWeight: FontWeight.w600))
                        ]),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.info_outline,
                        size: 30, color: ColorConstant.mainWhite),
                    SizedBox(height: 5),
                    Text(
                      "Info",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.64,
                          color: ColorConstant.mainWhite),
                    )
                  ],
                )
              ],
            ),
            MoviesListBuilder(
              title: "Previews",
              height: 102,
              shape: BoxShape.circle,
              imagepath: DataBase.homeMovieList,
            ),
            MoviesListBuilder(
              title: "Continue Watching for Emenalo",
              imagepath: DataBase.homeMovieList,
              visible: true,
            ),
            MoviesListBuilder(
              title: "Popular on Netflix",
              imagepath: DataBase.homeMovieList,
            ),
            MoviesListBuilder(
              title: "Trending Now",
              imagepath: DataBase.homeMovieList,
            ),
          ],
        ),
      ),
    );
  }
}
