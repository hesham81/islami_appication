import 'package:flutter/material.dart';
import 'package:islami/features/on_boarding/model/on_boarding_model.dart';

import '../../../core/theme/app_colors.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel model;

  const OnBoardingItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            model.imagePath,
            height: size.height * 0.39,
          ),
          Text(
            textAlign: TextAlign.center,
            model.title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            model.desc ?? "",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          )
        ],
      ),
    );
  }
}
