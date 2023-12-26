import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/more_screen/container_group.dart';
import 'package:netflix/view/more_screen/usernamelist.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle stylelist = TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.72,
        color: ColorConstant.mainWhite);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserNameList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstant.mainWhite,
                  size: 12,
                ),
                SizedBox(width: 10),
                Text("Manage Profiles", style: stylelist),
              ],
            ),
            ContainerGroup(),
            Row(
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.check,
                  color: ColorConstant.mainWhite,
                  size: 33,
                ),
                SizedBox(width: 10),
                Text(
                  "My List",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.72,
                      color: ColorConstant.mainWhite),
                )
              ],
            ),
            Container(
              height: 1,
              color: Color(0xff424242),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("App Settings", style: stylelist),
                  Text("Account", style: stylelist),
                  Text("Help", style: stylelist),
                  Text("Sign Out", style: stylelist),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
