import 'package:flutter/material.dart';
import 'package:netflix/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class MoviesComingSoon extends StatelessWidget {
  const MoviesComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle styletext = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 11.4,
      color: ColorConstant.mainWhite,
    );
    final TextStyle styledot = TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 15.78,
      color: ColorConstant.mainWhite,
    );
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: DataBase.comingSoonList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 385,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      DataBase.comingSoonList[index]["imageurl"],
                      width: double.infinity,
                      height: 195,
                      fit: BoxFit.fill,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.notifications,
                              size: 24,
                              color: ColorConstant.mainWhite,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Remind me",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.13,
                                  color: ColorConstant.mainWhite),
                            )
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              size: 24,
                              color: ColorConstant.mainWhite,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Share",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.13,
                                  color: ColorConstant.mainWhite),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                    Text(
                      "Season 1 Coming December 14",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4,
                          color: ColorConstant.mainWhite),
                    ),
                    Text(
                      DataBase.comingSoonList[index]["name"],
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.66,
                          color: ColorConstant.mainWhite),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.14,
                          color: ColorConstant.mainWhite),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Steamy",
                          style: styletext,
                        ),
                        Text(
                          ".",
                          style: styledot,
                        ),
                        Text(
                          "Soapy",
                          style: styletext,
                        ),
                        Text(
                          ".",
                          style: styledot,
                        ),
                        Text(
                          "Slow Burn",
                          style: styletext,
                        ),
                        Text(
                          ".",
                          style: styledot,
                        ),
                        Text(
                          "Suspenseful",
                          style: styletext,
                        ),
                        Text(
                          ".",
                          style: styledot,
                        ),
                        Text(
                          "Teen",
                          style: styletext,
                        ),
                        Text(
                          ".",
                          style: styledot,
                        ),
                        Text(
                          "Mystery",
                          style: styletext,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
