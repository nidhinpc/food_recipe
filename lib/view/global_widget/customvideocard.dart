import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';
//import 'package:food_recipe/utils/constants/image_constants.dart';

class customvideocard extends StatelessWidget {
  double width;
  String rating;
  String imageurl;
  String profileurl;
  String tittle;
  void Function()? onCardTaped;
  String duration;
  String username;

  customvideocard({
    required this.width,
    required this.profileurl,
    required this.rating,
    required this.imageurl,
    required this.duration,
    required this.tittle,
    required this.username,
    super.key,
    this.onCardTaped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        height: 254,
        width: 280,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 180,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      // image: NetworkImage(
                      //     "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg"),
                      image: NetworkImage(imageurl))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                              rating,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        height: 28,
                        width: 48,
                        child: Text(
                          duration,
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tittle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 2),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    // backgroundImage: AssetImage(ImageConstants.AVATHARNIKKI),
                    backgroundImage: NetworkImage(profileurl),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    username,
                    style: TextStyle(color: ColorConstants.lightGrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
