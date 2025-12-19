import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget{
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(animation: UImages.onboarding1Animation,title: UTexts.onBoardingTitle1,subTitle: UTexts.onBoardingSubTitle1,),
              OnBoardingPage(animation: UImages.onboarding2Animation,title: UTexts.onBoardingTitle12,subTitle: UTexts.onBoardingSubTitle2),
              OnBoardingPage(animation: UImages.onboarding3Animation,title: UTexts.onBoardingTitle3,subTitle: UTexts.onBoardingSubTitle3,),
            ],
          ),
          OnBoardingDotNavigation(),
          ElevatedButton(onPressed: (){}, child: Text('Next'))
        ],
      ),
    );
  }

}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight()*4,
        left: UDeviceHelper.getScreenWidth(context)/2.5,
        right: UDeviceHelper.getScreenHeight(context)/2.5 ,
        child: SmoothPageIndicator(controller: PageController(), count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0
        ),));
  }
}

