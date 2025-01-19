import 'package:flutter/material.dart';

import '../../../../core/constant/app_assets.dart';

class Times extends StatelessWidget {
  const Times({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.timesBG),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
