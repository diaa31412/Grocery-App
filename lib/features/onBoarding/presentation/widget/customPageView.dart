import 'package:flutter/material.dart';
import 'package:frontend/features/onBoarding/presentation/widget/pageViewItem.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Exploare top orginc fruits & grap them',
          image: 'assets/images/pageview1.jpg',
        ),
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Exploare top orginc fruits & grap them',
          image: 'assets/images/pageview2.jpg',
        ),
        PageViewItem(
          title: 'E Shopping',
          subTitle: 'Exploare top orginc fruits & grap them',
          image: 'assets/images/pageview3.jpg',
        ),
      ],
    );
  }
}
