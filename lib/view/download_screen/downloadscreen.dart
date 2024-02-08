import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstant.mainBlack,
          title: Text(
            "Smart Downloads",
            style: TextStyle(
                fontSize: 14.72,
                fontWeight: FontWeight.w400,
                color: ColorConstant.mainWhite),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introducing Downloads For You",
                style: TextStyle(
                    fontSize: 19.63,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.mainWhite),
              ),
              SizedBox(height: 15),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                    fontSize: 10.78,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.mainWhite),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 88.5,
                  backgroundColor: ColorConstant.mainGrey,
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () => print("Set up"),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Center(
                    child: Text(
                      "SET UP",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.86,
                          color: ColorConstant.mainWhite),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: InkWell(
                  onTap: () => print("to download"),
                  child: Container(
                    height: 33,
                    width: 239,
                    decoration: BoxDecoration(
                        color: ColorConstant.mainGrey,
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: Text(
                        "Find Something to Download",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.71,
                            color: ColorConstant.mainWhite),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
