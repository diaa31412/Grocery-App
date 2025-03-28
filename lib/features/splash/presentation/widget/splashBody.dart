import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frontend/core/utils/sizeConfig.dart';
import 'package:frontend/features/onBoarding/presentation/onBoarding.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Splashbody extends StatefulWidget {
  const Splashbody({super.key});

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadingAnimation = Tween<double>(
      begin: .2,
      end: 1,
    ).animate(animationController!)..addListener(() {
      setState(() {
        if (animationController!.isCompleted) {
          animationController?.repeat(reverse: true);
        }
      });
    });
    animationController?.forward();
    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: fadingAnimation!,
            builder:
                (context, _) => Opacity(
                  opacity: fadingAnimation?.value,
                  child: Text(
                    'Fruit Market',
                    style: TextStyle(
                      fontSize: 51,
                      fontWeight: FontWeight.w700,

                      color: Color(0xffffffff),
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
          ),
          SizedBox(height: 60),
          Image.asset('assets/images/123.png'),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoarding(), transition: Transition.fade);
    });
  }
}
