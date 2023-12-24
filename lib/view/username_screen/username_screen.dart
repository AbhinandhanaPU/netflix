import 'package:flutter/material.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';
import 'package:netflix/view/bottomnav_screen/bottonnav_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstant.mainBlack,
          centerTitle: true,
          title: SizedBox(
              height: 37.2,
              width: 138,
              child: Image.asset(ImageConstant.netflixLogo)),
          actions: [
            Icon(
              Icons.edit,
              size: 18.9,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(75),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DataBase.userProfileList.length + 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 22,
                    mainAxisExtent: 121),
                itemBuilder: (context, index) {
                  return index == DataBase.userProfileList.length
                      ? Column(children: [
                          Icon(Icons.add_circle, color: Colors.white, size: 70),
                          SizedBox(height: 10),
                          Text("Add Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorConstant.mainWhite))
                        ])
                      : InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavScreen(),
                                ));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                  DataBase.userProfileList[index]["imageurl"]),
                              SizedBox(height: 10),
                              Text(DataBase.userProfileList[index]["name"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstant.mainWhite))
                            ],
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
