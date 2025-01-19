import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

import '../../../../core/constant/app_assets.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 33;
  double angle = 0;
  List<String> list = ["سبحان الله", "الحمدلله", "لا اله الا ألله"];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.sebhaBG),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.writtenIslami,
          ),
          Text(
            textAlign: TextAlign.center,
            list[index],
            style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor),
          ),
          GestureDetector(
            onTap: () {
              if (counter > 0) {
                counter--;
                angle -= 5;
              } else {
                index = (index <= list.length - 1) ? index + 1 : 0;
                counter = 33;
              }
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      AppAssets.sebha,
                    ),
                  ),
                  Text(
                    counter.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
