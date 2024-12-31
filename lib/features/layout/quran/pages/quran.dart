import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout/quran/widgets/sura_number_widget.dart';
import 'package:islami/features/layout/quran/widgets/sure_recenet.dart';

class Quran extends StatelessWidget {
  static const String routeName = '/quran';

  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBG),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.miniLogo),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.secondaryColor.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                hintText: "Sura Name",
                hintStyle: const TextStyle(
                  color: AppColors.whiteTitleColor,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ImageIcon(
                    AssetImage(
                      AppAssets.quranICN,
                    ),
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              cursorColor: AppColors.whiteColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "Most Recently",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.whiteTitleColor,
              ),
            ),
          ),
          SizedBox(
            height: 155,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => const RecentSura(
                nameArabic: 'الفاتحه',
                nameEnglish: 'Al-Fatiha',
                versesNumber: '7',
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "Suras List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.whiteTitleColor,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const SuraNumberWidget(
                suraNumber: '7',
                suraNameAR: 'الفاتحه',
                suraNameEn: 'Al-Fatiha',
                suraId: '1',
              ),
              separatorBuilder: (context, index) {
                return const Divider(
                  endIndent: 60,
                  indent: 60,
                );
              },
              itemCount: 8,
            ),
          )
        ],
      ),
    );
  }
}
