import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';

class RecentSura extends StatelessWidget {
  final String nameArabic;
  final String nameEnglish;
  final String versesNumber;

  const RecentSura({
    super.key,
    required this.nameArabic,
    required this.nameEnglish,
    required this.versesNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(22)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    nameEnglish,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    nameArabic,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "${versesNumber} verse",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(AppAssets.recentIMG)
        ],
      ),
    );
  }
}
