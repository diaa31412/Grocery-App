import 'package:flutter/material.dart';
import 'package:frontend/core/constants.dart';
import 'package:frontend/features/splash/presentation/widget/splashBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kMainColor, body: Splashbody());
  }
}
