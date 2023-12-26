import 'package:flutter/material.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/more_screen/linkmore.dart';

class ContainerGroup extends StatelessWidget {
  const ContainerGroup({super.key});

  @override
  Widget build(BuildContext context) {
    // share link container
    return Container(
      width: double.infinity,
      height: 247,
      color: Color(0xff1A1A1A),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.sms_outlined,
                  color: ColorConstant.mainWhite,
                ),
                SizedBox(width: 10),
                Text(
                  "Tell friends about Netflix.",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 19.63,
                      color: ColorConstant.mainWhite),
                )
              ],
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.78,
                  color: ColorConstant.mainWhite),
            ),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.78,
                  color: Color(0xffC4C4C4),
                  decoration: TextDecoration.underline),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 37,
                  width: 247,
                  color: ColorConstant.mainBlack,
                ),
                Container(
                  height: 37,
                  width: 96,
                  decoration: BoxDecoration(
                      color: ColorConstant.mainWhite,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: Text(
                      "Copy Link",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.06,
                          color: ColorConstant.mainBlack),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                DataBase.shareList.length + 1,
                (index) => index == DataBase.shareList.length
                    ? MoreDots()
                    : LinkMore(
                        imagepath: DataBase.shareList,
                        indexNum: index,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
