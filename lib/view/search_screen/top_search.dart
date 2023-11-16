import 'package:flutter/material.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class TopSearch extends StatelessWidget {
  const TopSearch({super.key, required this.indexNum});
  final int indexNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: double.infinity,
      color: ColorConstant.mainGrey,
      child: Stack(
        children: [
          Container(
            width: 146,
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              DataBase.topSearch[indexNum]["imageurl"],
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            left: 160,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                DataBase.topSearch[indexNum]["name"],
                style: TextStyle(
                    fontSize: 14.72,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.mainWhite),
              ),
            ),
          ),
          Positioned.fill(
            right: 20,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.play_circle_outline,
                  size: 28, color: ColorConstant.mainWhite),
            ),
          )
        ],
      ),
    );
  }
}
