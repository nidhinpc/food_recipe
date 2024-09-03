import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

class customvideocard extends StatelessWidget {
  const customvideocard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                height: 28,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorConstants.lightBlack.withOpacity(.3),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorConstants.mainWhite,
                      size: 14,
                    ),
                    Text(
                      " 4,5",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: ColorConstants.mainWhite,
                child: Icon(Icons.bookmark_outline),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
            child: Icon(
              Icons.play_arrow,
              color: ColorConstants.mainWhite,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                height: 28,
                width: 58,
                child: Text(
                  "15:10",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.lightBlack.withOpacity(.3))),
          ),
        ],
      ),
    );
  }
}
