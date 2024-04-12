import "package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingDotNavigation.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingNextButton.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "widgets/onboarding_page.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.hello,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.payment,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.deliver,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnboardingSkip(),

          ///Dot navigation smooth  page indicator
          const OnboardingDotNavigation(),

          ///Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}


