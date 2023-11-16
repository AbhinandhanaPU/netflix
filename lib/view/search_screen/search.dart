import 'package:flutter/material.dart';
import 'package:netflix/utils/data_base/db.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/search_screen/top_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.mainBlack,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                cursorColor: ColorConstant.mainWhite,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: ColorConstant.mainGrey,
                  prefixIcon:
                      Icon(Icons.search, size: 24, color: Color(0xffC4C4C4)),
                  suffixIcon:
                      Icon(Icons.mic, size: 24, color: Color(0xffC4C4C4)),
                  hintText: "Search for a show, movie, genre, e.t.c.",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.21,
                      color: Color(0xffC4C4C4)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Top Searches",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26.75,
                      color: ColorConstant.mainWhite),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  // shrinkWrap: true,
                  // physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(height: 5),
                  itemCount: DataBase.topSearch.length,
                  itemBuilder: (context, index) {
                    return TopSearch(indexNum: index);
                  },
                ),
              )
            ],
          )),
    );
  }
}
