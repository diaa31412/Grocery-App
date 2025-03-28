import 'package:flutter/material.dart';
import 'package:frontend/core/utils/sizeConfig.dart';
import 'package:frontend/core/widgets/spaceWidget.dart';

class PageViewItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? image;
  const PageViewItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizintalBox(value: 20),

        SizedBox(
          height: SizeConfig.defaultSize! * 30,
          width: SizeConfig.defaultSize! * 40,
          child: Image.asset(image!),
        ),
        HorizintalBox(value: 3),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        HorizintalBox(value: 1),
        Text(
          subTitle!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
