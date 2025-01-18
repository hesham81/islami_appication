import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';

import '../../../../models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = '/sura_details';

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    loadData(model.id);

    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          model.nameEn,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    AppAssets.suraDetailsLeftShape,
                  ),
                ),
                Text(
                  model.nameAr,
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    AppAssets.suraDetailsRightShape,
                  ),
                ),
              ],
            ),
            // const Spacer(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text(
                  versesList[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                itemCount: versesList.length,
              ),
            ),
            Image.asset(
              AppAssets.suraDetailsGroundShape,
            )
          ],
        ),
      ),
    );
  }

  void loadData(int suraId) async {
    String content =
        await rootBundle.loadString("assets/files/Suras/${suraId}.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
