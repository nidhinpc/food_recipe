import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

class Custom_tab extends StatelessWidget {
  const Custom_tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
          // isScrollable: true,
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
              child: Text("Recipe"),
            ),
          ]),
    );
  }
}
