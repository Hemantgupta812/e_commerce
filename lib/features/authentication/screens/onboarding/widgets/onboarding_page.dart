import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.animation, required this.title, required this.subTitle,
  });

  final String animation;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: USizes.defaultSpace,left: USizes.defaultSpace,top: USizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title,
            style: Theme.of(context).textTheme.headlineMedium,),
          Text(subTitle,
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}