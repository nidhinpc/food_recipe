import 'package:flutter/material.dart';
import 'package:food_recipe/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  final data;
  final double? height;
  final double? width;

  void Function()? onButtonPressed;
  CustomButton({
    this.height,
    this.width,
    required this.data,
    this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.PRIMARY_COLOR),
        child: Center(
          child: Text(
            data,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
