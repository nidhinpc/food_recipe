import 'package:flutter/material.dart';
import 'package:food_recipe/dummy_db.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';
import 'package:food_recipe/view/global_widget/customRecipecard.dart';
import 'package:food_recipe/view/global_widget/customvideocard.dart';
import 'package:food_recipe/view/recipe_details/recipe_details.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Saved recipes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            bottom: TabBar(
                //isScrollable: true,
                //tabAlignment: TabAlignment.start,
                labelColor: Colors.white,
                unselectedLabelColor: ColorConstants.PRIMARY_COLOR,
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorColor: Colors.red,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.PRIMARY_COLOR),
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Text(
                      "Video",
                    ),
                  ),
                  Tab(
                    child: Text("Reciepe"),
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TabBarView(
              children: [
                _buid_videoCard(),
                _buildRecipeCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildRecipeCard() {
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
              height: 16,
            ),
        itemCount: DummyDb.trendingNowList.length);
  }

  ListView _buid_videoCard() {
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
}
