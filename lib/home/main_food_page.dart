import 'package:first_app/home/food_page_body.dart';
import 'package:first_app/utils/colors.dart';
import 'package:first_app/utils/dimensions.dart';
import 'package:first_app/widgets/big_text.dart';
import 'package:first_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFoodPage extends StatefulWidget {
  MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("height" + Get.context!.height.toString());
    print("width" + Get.context!.width.toString());
    return Scaffold(
      body: Column(
        children: [
          // page header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height40, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "India",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(text: "Howrah", color: Colors.black54),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: Dimensions.height45,
                    height: Dimensions.width45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                  )
                ],
              ),
            ),
          ),
          // page body
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}
