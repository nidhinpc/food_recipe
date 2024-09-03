import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // # section 1 - title
            _titleSection(),
            // # section 2 - trending now
            _trendingNowSection(),
            //# section 3 - video player
            customvideocard(),
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                "Treding Now 🔥",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes \nfor cooking",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.lightGrey,
              ),
              hintText: "Search recipes",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: ColorConstants.lightGrey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstants.lightGrey)),
            ),
          ),
        ),
      ],
    );
  }
}
