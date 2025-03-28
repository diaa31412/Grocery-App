import 'package:flutter/material.dart';
import 'package:frontend/core/constants.dart';
import 'package:frontend/core/utils/sizeConfig.dart';

class CustomButton extends StatelessWidget {
  final String tex;
  const CustomButton({super.key, required this.tex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          tex,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,

            color: Color(0xffffffff),
            fontFamily: 'Poppins',
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
