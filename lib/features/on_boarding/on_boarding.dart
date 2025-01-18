import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout/quran/pages/quran_home.dart';
import 'package:islami/features/on_boarding/model/on_boarding_model.dart';
import 'package:islami/features/on_boarding/widgets/on_boarding_item.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class OnBoarding extends StatefulWidget {
  static String routeName = '/on_boarding';

  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = PageController();
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppAssets.writtenIslami,
              height: size.height * 0.25,
            ),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                itemBuilder: (context, index) => OnBoardingItem(
                  model: OnBoardingModel.onBoardingList[currentIndex],
                ),
                itemCount: OnBoardingModel.onBoardingList.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: currentIndex != 0,
                  replacement: Spacer(),
                  child: TextButton(
                    style:
                        TextButton.styleFrom(overlayColor: Colors.transparent),
                    onPressed: () {
                      controller.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                      currentIndex--;
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
                  count: OnBoardingModel.onBoardingList.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: AppColors.greyColor,
                    activeDotColor: AppColors.primaryColor,
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(overlayColor: Colors.transparent),
                  onPressed: () {
                    if (currentIndex <
                        OnBoardingModel.onBoardingList.length - 1) {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                      currentIndex++;
                    } else {
                      Navigator.pushReplacementNamed(
                          context, QuranHome.routeName);
                    }
                  },
                  child: Text(
                    (currentIndex == OnBoardingModel.onBoardingList.length - 1)
                        ? "Finish"
                        : "Next",
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
