import 'package:flutter/material.dart';
import 'package:food_recipe/dummy_db.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

import 'package:food_recipe/view/global_widget/custom_buttom.dart';
import 'package:food_recipe/view/global_widget/ingridient_box.dart';

class RecipeDetails extends StatelessWidget {
  String recipetitle;
  String image;
  String rating;
  String profileurl;
  String username;
  // String ingimage;
  // String ingname;
  // String inggram;

  RecipeDetails(
      {required this.recipetitle,
      required this.rating,
      required this.image,
      required this.profileurl,
      required this.username,
      // required this.inggram,
      // required this.ingimage,
      // required this.ingname,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipetitle),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _title_Section(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Incredients",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("5 items")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 900,
                child: ListView.separated(
                  padding: EdgeInsets.all(8),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16,
                  ),
                  shrinkWrap: false,
                  itemCount: DummyDb.IngridientList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: IngridientSection(
                      haveArrow: false,
                      gram: DummyDb.IngridientList[index]["gram"],
                      image: DummyDb.IngridientList[index]["image"],
                      name: DummyDb.IngridientList[index]["name"],
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

  Column _title_Section() {
    return Column(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        height: 200,
        width: 335,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
      Row(
        children: [
          Icon(Icons.star),
          SizedBox(
            width: 5,
          ),
          Text(rating,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          SizedBox(
            width: 5,
          ),
          Text("(300 Reviews)"),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(profileurl),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            username,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          CustomButton(
            onButtonPressed: () {},
            data: "Follow",
          ),
        ],
      ),
    ]);
  }
}
