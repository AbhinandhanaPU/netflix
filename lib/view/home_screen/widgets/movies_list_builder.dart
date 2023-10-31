import 'package:flutter/material.dart';
import 'package:netflix/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class MoviesListBuilder extends StatelessWidget {
  const MoviesListBuilder({
    super.key,
    required this.title,
    this.height = 161,
    this.shape = BoxShape.rectangle,
    required this.imagepath,
    this.visible = false,
  });

  final String title;
  final double height;
  final BoxShape shape;
  final List<String> imagepath;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        top: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 26.75,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.mainWhite),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                DataBase.homeMovieList.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: height,
                    width: 103,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        shape: shape,
                        image: DecorationImage(
                            image: AssetImage(imagepath[index]),
                            fit: BoxFit.cover)),
                    child: Visibility(
                      visible: visible,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 37,
                              color: Color(0xff121212),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: ColorConstant.mainWhite,
                                    size: 24,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: ColorConstant.mainWhite,
                                    size: 24,
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
