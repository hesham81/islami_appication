import 'package:flutter/material.dart';

import '../../../../core/constant/app_assets.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.radioBG),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
