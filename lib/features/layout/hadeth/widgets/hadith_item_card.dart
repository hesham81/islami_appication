import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';

class HadithItemCard extends StatelessWidget {
  final String hadithTitle;

  final List<String> hadith;

  const HadithItemCard({
    super.key,
    required this.hadithTitle,
    required this.hadith,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadithItemBackgroundObject,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                hadithTitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  hadith.join('\n'),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
