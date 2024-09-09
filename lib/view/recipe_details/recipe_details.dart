import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  String recipetitle;
  String image;
  String rating;
  String profileurl;
  RecipeDetails(
      {required this.recipetitle,
      required this.rating,
      required this.image,
      required this.profileurl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipetitle),
      ),
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
            ),
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 5,
                ),
                Text(rating),
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(profileurl),
            ),
          ],
        ),
      ),
    );
  }
}
