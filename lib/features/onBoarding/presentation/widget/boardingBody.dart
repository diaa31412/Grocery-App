import 'package:flutter/material.dart';
import 'package:frontend/core/utils/sizeConfig.dart';
import 'package:frontend/core/widgets/customButton.dart';
import 'package:frontend/features/onBoarding/presentation/widget/customPageView.dart';

class BoardingBody extends StatefulWidget {
  const BoardingBody({super.key});

  @override
  State<BoardingBody> createState() => _BoardingBodyState();
}

class _BoardingBodyState extends State<BoardingBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomButton(tex: "Next"),
        ),
      ],
    );
  }
}
