import 'package:flutter/material.dart';
import 'package:food_recipe/dummy_db.dart';
import 'package:food_recipe/view/global_widget/customvideocard.dart';
import 'package:food_recipe/view/recipe_details/recipe_details.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, index) => customvideocard(
                  onCardTaped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetails(
                            profileurl: DummyDb.trendingNowList[index]
                                ["imageurl"],
                            recipetitle: DummyDb.trendingNowList[index]
                                ["tittle"],
                            image: DummyDb.trendingNowList[index]["imageurl"],
                            rating: DummyDb.trendingNowList[index]["rating"],
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
            itemCount: DummyDb.trendingNowList.length),
      ),
    );
  }
}
