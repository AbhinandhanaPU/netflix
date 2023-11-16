import 'package:flutter/material.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class UserNameList extends StatefulWidget {
  const UserNameList({super.key});

  @override
  State<UserNameList> createState() => _UserNameListState();
}

class _UserNameListState extends State<UserNameList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          DataBase.userProfileList.length + 1,
          (index) {
            return index == DataBase.userProfileList.length
                ? Container(
                    height: 58,
                    width: 63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(
                        color: Color(0xff8C8787),
                      ),
                    ),
                    child: Icon(Icons.add, color: Color(0xffC4C4C4), size: 35),
                  )
                : InkWell(
                    onTap: () {
                      currentIndex = index;
                      setState(() {});
                    },
                    child: currentIndex == index
                        ? Container(
                            height: 90.38,
                            width: 73,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  DataBase.userProfileList[index]["imageurl"],
                                ),
                                Text(DataBase.userProfileList[index]["name"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.35,
                                        color: ColorConstant.mainWhite))
                              ],
                            ),
                          )
                        : Container(
                            height: 79,
                            width: 65.29,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  DataBase.userProfileList[index]["imageurl"],
                                ),
                                Text(DataBase.userProfileList[index]["name"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.35,
                                        color: ColorConstant.mainWhite))
                              ],
                            ),
                          ),
                  );
          },
        ),
      ),
    );
  }
}
