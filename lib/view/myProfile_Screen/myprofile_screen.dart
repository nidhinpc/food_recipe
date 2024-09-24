import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';
import 'package:food_recipe/utils/constants/image_constants.dart';

class MyprofileScreen extends StatelessWidget {
  const MyprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
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
