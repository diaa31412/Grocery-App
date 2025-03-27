import 'package:flutter/material.dart';
import 'package:frontend/features/splash/presentation/widget/splashBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff69A03A), body: Splashbody());
  }
}
