import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Padding(
                padding: EdgeInsets.only(right: USizes.defaultSpace,left: USizes.defaultSpace,top: USizes.defaultSpace),
                child: Column(

                  children: [
                    Lottie.asset(UImages.onboarding1Animation),
                    Text(UTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,),
                    Text(UTexts.onBoardingSubTitle1,
                      style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,)
                  ],
                ),
              ),
              Lottie.asset(UImages.onboarding2Animation),
              Lottie.asset(UImages.onboarding3Animation)
            ],
          )
        ],
      ),
    );
  }

}