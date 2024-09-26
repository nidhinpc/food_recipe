import 'package:flutter/material.dart';
import 'package:food_recipe/dummy_db.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

import 'package:food_recipe/view/global_widget/customRecipecard.dart';
import 'package:food_recipe/view/global_widget/custom_tab.dart';
import 'package:food_recipe/view/global_widget/customvideocard.dart';
import 'package:food_recipe/view/recipe_details/recipe_details.dart';

class MyprofileScreen extends StatelessWidget {
  const MyprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My profile",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [Icon(Icons.more_horiz)],
        ),
        body: Column(
          children: [
            _build_ProfileimageSection(),
            _build_dataSection(),
            Divider(),
            Custom_tab(),
            Expanded(
              child: TabBarView(
                children: [
                  _build_videocard(),
                  _buid_customRecipe(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView _build_videocard() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) => customvideocard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetails(
                        profileurl: DummyDb.trendingNowList[index]
                            ["profileurl"],
                        recipetitle: DummyDb.trendingNowList[index]["tittle"],
                        image: DummyDb.trendingNowList[index]["imageurl"],
                        rating: DummyDb.trendingNowList[index]["rating"],
                        username: DummyDb.trendingNowList[index]["username"],
                      ),
                    ));
              },
              width: double.infinity,
              rating: DummyDb.trendingNowList[index]["rating"],
              duration: DummyDb.trendingNowList[index]["duration"],
              profileurl: DummyDb.trendingNowList[index]["profileurl"],
              imageurl: DummyDb.trendingNowList[index]["imageurl"],
              username: DummyDb.trendingNowList[index]["username"],
              tittle: DummyDb.trendingNowList[index]["tittle"],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
        itemCount: DummyDb.trendingNowList.length);
  }

  ListView _buid_customRecipe() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) => CustomRecipecard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetails(
                        profileurl: DummyDb.trendingNowList[index]
                            ["profileurl"],
                        recipetitle: DummyDb.trendingNowList[index]["tittle"],
                        image: DummyDb.trendingNowList[index]["imageurl"],
                        rating: DummyDb.trendingNowList[index]["rating"],
                        username: DummyDb.trendingNowList[index]["username"],
                      ),
                    ));
              },
              width: double.infinity,
              rating: DummyDb.trendingNowList[index]["rating"],
              duration: DummyDb.trendingNowList[index]["duration"],
              profileurl: DummyDb.trendingNowList[index]["profileurl"],
              imageurl: DummyDb.trendingNowList[index]["imageurl"],
              username: DummyDb.trendingNowList[index]["username"],
              tittle: DummyDb.trendingNowList[index]["tittle"],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 236,
            ),
        itemCount: DummyDb.trendingNowList.length);
  }

  Widget _build_dataSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Recipe",
                style: TextStyle(color: ColorConstants.lightGrey, fontSize: 12),
              ),
              Text(
                "3",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Text(
                "Videos",
                style: TextStyle(color: ColorConstants.lightGrey, fontSize: 12),
              ),
              Text(
                "13",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(color: ColorConstants.lightGrey, fontSize: 12),
              ),
              Text(
                "14K",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(color: ColorConstants.lightGrey, fontSize: 12),
              ),
              Text(
                "120",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _build_ProfileimageSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              Container(
                width: 107,
                height: 36,
                child: Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorConstants.PRIMARY_COLOR, width: 1),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Alessandra Blair",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack),
              )),
          SizedBox(
            height: 12,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Hello world I’m Alessandra Blair,\nI’m from Italy 🇮🇹 I love cooking so much!",
                style: TextStyle(color: ColorConstants.lightGrey, fontSize: 14),
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
