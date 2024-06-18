import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';

// Create each of the on boarding pages
class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subText,
  });

  final String image, title, subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            width: Helperfunctions.screenWidth() * 0.8,
            height: Helperfunctions.screenHeight() * 0.6,
            image,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            subText,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
