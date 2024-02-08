import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/view/comingsoon_screen/movies_coming_soon.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstant.mainBlack,
          leading: Icon(
            Icons.circle_notifications_rounded,
            size: 19,
            color: Colors.red,
          ),
          title: Text(
            "Notifications",
            style: TextStyle(
                color: ColorConstant.mainWhite,
                fontSize: 16.91,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    height: 65,
                    width: double.infinity,
                    color: ColorConstant.mainGrey,
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 55,
                        width: 113,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          image: DecorationImage(
                              image: AssetImage(
                                DataBase.moviesList[index]["movieImage"],
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Arrival",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.72,
                                color: ColorConstant.mainWhite),
                          ),
                          Text(
                            DataBase.moviesList[index]["movieName"],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13.72,
                                color: ColorConstant.mainWhite),
                          ),
                          Text(
                            DataBase.moviesList[index]["date"],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10.51,
                                color: Colors.white54),
                          )
                        ],
                      )
                    ]),
                  );
                },
              ),
              MoviesComingSoon(),
            ],
          ),
        ),
      ),
    );
  }
}
