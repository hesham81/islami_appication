import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout/hadeth/pages/hadeth.dart';
import 'package:islami/features/layout/quran/pages/quran.dart';
import 'package:islami/features/layout/radio/pages/radio.dart';

import '../../sebha/pages/sebha.dart';
import '../../time/pages/times.dart';

class QuranHome extends StatefulWidget {
  static const String routeName = '/quran_home';

  const QuranHome({super.key});

  @override
  State<QuranHome> createState() => _QuranHomeState();
}

class _QuranHomeState extends State<QuranHome> {
  int selectedIndex = 0;
  var pages = [
    const Quran(),
    Hadeth(),
    const Sebha(),
    const RadioScreen(),
    const Times(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: (selectedIndex == 0)
                      ? AppColors.secondaryColor.withOpacity(0.5)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(66)),
              child: const ImageIcon(
                AssetImage(AppAssets.quranICN),
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: (selectedIndex == 1)
                      ? AppColors.secondaryColor.withOpacity(0.5)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(66)),
              child: const ImageIcon(
                AssetImage(AppAssets.hadethICN),
              ),
            ),
            label: 'Hadeth',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: (selectedIndex == 2)
                      ? AppColors.secondaryColor.withOpacity(0.5)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(66)),
              child: const ImageIcon(
                AssetImage(AppAssets.sebhaICN),
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: (selectedIndex == 3)
                      ? AppColors.secondaryColor.withOpacity(0.5)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(66)),
              child: const ImageIcon(
                AssetImage(AppAssets.radioICN),
              ),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: (selectedIndex == 4)
                      ? AppColors.secondaryColor.withOpacity(0.5)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(66)),
              child: const ImageIcon(
                AssetImage(AppAssets.timesICN),
              ),
            ),
            label: 'Times',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.whiteColor,
        backgroundColor: AppColors.primaryColor,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
      ),
      body: pages[selectedIndex],
    );
  }
}
