import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class LinkMore extends StatelessWidget {
  const LinkMore({super.key, required this.imagepath, required this.indexNum});
  final List<String> imagepath;
  final int indexNum;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 36,
        height: 33.6,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagepath[indexNum]),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 40,
        child: VerticalDivider(
          width: 70,
          thickness: 1,
          color: Colors.grey,
        ),
      )
    ]);
  }
}

class MoreDots extends StatelessWidget {
  const MoreDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.more_horiz,
          size: 37,
          color: ColorConstant.mainWhite,
        ),
        Text(
          "More",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.72,
              color: ColorConstant.mainWhite),
        )
      ],
    );
  }
}
