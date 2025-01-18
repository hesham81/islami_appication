import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';

class Hadeth extends StatelessWidget {
  const Hadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadethBG,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
