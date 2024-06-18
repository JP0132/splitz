import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splitz/pages/onboarding/onboarding_controller.dart';
import 'package:splitz/pages/onboarding/widgets/onboarding_page_widget.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/images.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';

// First time opening the application, showcase what you can do with the app.
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Helperfunctions.isDarkMode(context);
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingWidget(
                image: CustomImages.collectingMoney,
                title: "Keep track of your expensives.",
                subText:
                    "Welcome to SPLITZ, create lists to keep track of your expensives.",
              ),
              OnBoardingWidget(
                image: CustomImages.TrackExpensives,
                title: "Breakdowns of your expenses",
                subText:
                    "View more details on your expensives, filter by tags.",
              ),
              OnBoardingWidget(
                image: CustomImages.share,
                title: "Share your lists with others!",
                subText:
                    "Invite others to view and edit your lists, for easier management.",
              ),
            ],
          ),

          //Skip button
          Positioned(
            top: Helperfunctions.getAppBarHeight(),
            right: 20,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: const Text(
                "Skip",
              ),
            ),
          ),

          // Page indicators, dot form
          Positioned(
            bottom: Helperfunctions.getBottomNavBarHeight() + 25,
            left: 20,
            child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              onDotClicked: controller.dotNavigationClick,
              effect: ExpandingDotsEffect(
                activeDotColor: isDark
                    ? CustomColours.darkPrimary
                    : CustomColours.lightPrimary,
                dotHeight: 6,
              ),
            ),
          ),
          // Next page button
          Positioned(
            right: 20,
            bottom: Helperfunctions.getBottomNavBarHeight(),
            child: ElevatedButton(
              onPressed: () => controller.nextPage(),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: isDark
                    ? CustomColours.darkPrimary
                    : CustomColours.lightPrimary,
                iconColor: isDark
                    ? CustomColours.darkOnPrimary
                    : CustomColours.lightOnPrimary,
              ),
              child: const FaIcon(FontAwesomeIcons.arrowRight),
            ),
          )
        ],
      ),
    );
  }
}
