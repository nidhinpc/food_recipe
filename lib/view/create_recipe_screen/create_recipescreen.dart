import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';
import 'package:food_recipe/utils/constants/image_constants.dart';
import 'package:food_recipe/view/global_widget/custom_buttom.dart';
import 'package:food_recipe/view/global_widget/ingridient_box.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipescreen extends StatelessWidget {
  const CreateRecipescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Create recipe",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12,
                ),
                Stack(children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImageConstants.CreateRecipe))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorConstants.mainWhite,
                              radius: 16,
                              child: Icon(
                                Icons.edit,
                                color: ColorConstants.PRIMARY_COLOR,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 84,
                    top: 84,
                    right: 200,
                    left: 200,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.transparent.withOpacity(0.4),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorConstants.mainWhite,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        gapPadding: 16),
                    hintText: "name",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        gapPadding: 16),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        gapPadding: 16),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: IngridientSection(
                    gram: "01",
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                    name: "Serves",
                    haveArrow: true,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: IngridientSection(
                    gram: "45 Min",
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                    name: "Eggs",
                    haveArrow: true,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                ingridientsRow(),
                SizedBox(
                  height: 16,
                ),
                ingridientsRow(),
                SizedBox(
                  height: 16,
                ),
                ingridientsRow(),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "+",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Add new Ingredient",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  data: "Save my recipes",
                  height: 50,
                  onButtonPressed: () {},
                )
              ],
            ),
          ),
        ));
  }

  Row ingridientsRow() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 22, 2, 0), width: 2),
                  gapPadding: 16),
              hintText: "Item name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 22, 2, 1), width: 2),
                  gapPadding: 16),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 18, 1, 0), width: 2),
                  gapPadding: 16),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 19, 1, 0), width: 2),
                  gapPadding: 16),
              hintText: "Quantity",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 22, 1, 0), width: 2),
                  gapPadding: 16),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 14, 1, 0), width: 2),
                  gapPadding: 16),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        HugeIcon(
            icon: HugeIcons.strokeRoundedRemoveSquare,
            color: Color.fromARGB(255, 21, 21, 21))
      ],
    );
  }
}
