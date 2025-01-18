import 'package:islami/core/constant/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String? desc;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    this.desc,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      imagePath: AppAssets.norhbBekomBoarding,
      title: "Welcome To Islami App",
    ),
    OnBoardingModel(
      imagePath: AppAssets.welcomeToIslami,
      title: "Welcome To Islami ",
      desc: "We Are Very Excited To Have You In Our Community",
    ),
    OnBoardingModel(
      imagePath: AppAssets.quranBoarding,
      title: "Reading the Quran",
      desc: "Read, and your Lord is the Most Generous",
    ),
    OnBoardingModel(
      imagePath: AppAssets.bearishBoarding,
      title: "Bearish",
      desc: "Praise the name of your Lord, the Most High",
    ),
    OnBoardingModel(
      imagePath: AppAssets.radioBoarding,
      title: "Holy Quran Radio",
      desc:
          "You can listen to the Holy Quran Radio through the application for free and easily",
    ),
  ];
}
