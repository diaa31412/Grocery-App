import 'package:flutter/material.dart';
import 'package:frontend/features/onBoarding/presentation/widget/boardingBody.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BoardingBody());
  }
}
