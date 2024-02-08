import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/image_constant/image_constant.dart';
import 'package:netflix/view/home_screen/widgets/blackscreen.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(ImageConstant.netflixLogoIcon),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlackScreen(
                                  myListWeight: FontWeight.w600,
                                  myListSize: 29.68))),
                      child: Text("My List",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.2,
                              color: ColorConstant.mainWhite))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DataBase.myList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 11,
                      mainAxisSpacing: 11,
                      mainAxisExtent: 161),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage(DataBase.myList[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
