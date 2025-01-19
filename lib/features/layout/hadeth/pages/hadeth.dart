import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constant/app_assets.dart';
import 'package:islami/features/layout/hadeth/widgets/hadith_item_card.dart';

import '../../../../models/sura_model.dart';

List<String> hadethList = [];
String title = "";

class Hadeth extends StatefulWidget {
  Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final List<SuraModel> items = [
      SuraModel(
          id: 1, nameAr: "الفاتحة", nameEn: "Al-Fatihah", versesNumber: "7"),
      SuraModel(
          id: 2, nameAr: "البقرة", nameEn: "Al-Baqarah", versesNumber: "286"),
      SuraModel(
          id: 3, nameAr: "آل عمران", nameEn: "Aali Imran", versesNumber: "200"),
      SuraModel(
          id: 4, nameAr: "النساء", nameEn: "An-Nisa", versesNumber: "176"),
      SuraModel(
          id: 5, nameAr: "المائدة", nameEn: "Al-Maidah", versesNumber: "120"),
      SuraModel(
          id: 6, nameAr: "الأنعام", nameEn: "Al-An'am", versesNumber: "165"),
      SuraModel(
          id: 7, nameAr: "الأعراف", nameEn: "Al-A'raf", versesNumber: "206"),
      SuraModel(
          id: 8, nameAr: "الأنفال", nameEn: "Al-Anfal", versesNumber: "75"),
      SuraModel(
          id: 9, nameAr: "التوبة", nameEn: "At-Tawbah", versesNumber: "129"),
      SuraModel(id: 10, nameAr: "يونس", nameEn: "Yunus", versesNumber: "109"),
      SuraModel(id: 11, nameAr: "هود", nameEn: "Hud", versesNumber: "123"),
      SuraModel(id: 12, nameAr: "يوسف", nameEn: "Yusuf", versesNumber: "111"),
      SuraModel(id: 13, nameAr: "الرعد", nameEn: "Ar-Ra'd", versesNumber: "43"),
      SuraModel(
          id: 14, nameAr: "إبراهيم", nameEn: "Ibrahim", versesNumber: "52"),
      SuraModel(id: 15, nameAr: "الحجر", nameEn: "Al-Hijr", versesNumber: "99"),
      SuraModel(
          id: 16, nameAr: "النحل", nameEn: "An-Nahl", versesNumber: "128"),
      SuraModel(
          id: 17, nameAr: "الإسراء", nameEn: "Al-Isra", versesNumber: "111"),
      SuraModel(
          id: 18, nameAr: "الكهف", nameEn: "Al-Kahf", versesNumber: "110"),
      SuraModel(id: 19, nameAr: "مريم", nameEn: "Maryam", versesNumber: "59"),
      SuraModel(id: 20, nameAr: "طه", nameEn: "Taha", versesNumber: "135"),
      SuraModel(
          id: 21, nameAr: "الأنبياء", nameEn: "Al-Anbiya", versesNumber: "112"),
      SuraModel(id: 22, nameAr: "الحج", nameEn: "Al-Hajj", versesNumber: "78"),
      SuraModel(
          id: 23,
          nameAr: "المؤمنون",
          nameEn: "Al-Mu'minun",
          versesNumber: "118"),
      SuraModel(id: 24, nameAr: "النور", nameEn: "An-Nur", versesNumber: "64"),
      SuraModel(
          id: 25, nameAr: "الفرقان", nameEn: "Al-Furqan", versesNumber: "77"),
      SuraModel(
          id: 26,
          nameAr: "الشعراء",
          nameEn: "Ash-Shu'ara",
          versesNumber: "227"),
      SuraModel(id: 27, nameAr: "النمل", nameEn: "An-Naml", versesNumber: "55"),
      SuraModel(
          id: 28, nameAr: "القصص", nameEn: "Al-Qasas", versesNumber: "88"),
      SuraModel(
          id: 29, nameAr: "العنكبوت", nameEn: "Al-Ankabut", versesNumber: "69"),
      SuraModel(id: 30, nameAr: "الروم", nameEn: "Ar-Rum", versesNumber: "60"),
      SuraModel(id: 31, nameAr: "لقمان", nameEn: "Luqman", versesNumber: "34"),
      SuraModel(
          id: 32, nameAr: "السجدة", nameEn: "As-Sajda", versesNumber: "30"),
      SuraModel(
          id: 33, nameAr: "الأحزاب", nameEn: "Al-Ahzab", versesNumber: "73"),
      SuraModel(id: 34, nameAr: "سبأ", nameEn: "Saba", versesNumber: "54"),
      SuraModel(id: 35, nameAr: "فاطر", nameEn: "Fatir", versesNumber: "45"),
      SuraModel(id: 36, nameAr: "يس", nameEn: "Ya-Sin", versesNumber: "83"),
      SuraModel(
          id: 37, nameAr: "الصافات", nameEn: "As-Saffat", versesNumber: "182"),
      SuraModel(id: 38, nameAr: "ص", nameEn: "Sad", versesNumber: "88"),
      SuraModel(
          id: 39, nameAr: "الزمر", nameEn: "Az-Zumar", versesNumber: "75"),
      SuraModel(id: 40, nameAr: "غافر", nameEn: "Ghafir", versesNumber: "85"),
      SuraModel(id: 41, nameAr: "فصلت", nameEn: "Fussilat", versesNumber: "54"),
      SuraModel(
          id: 42, nameAr: "الشورى", nameEn: "Ash-Shura", versesNumber: "53"),
      SuraModel(
          id: 43, nameAr: "الزخرف", nameEn: "Az-Zukhruf", versesNumber: "89"),
      SuraModel(
          id: 44, nameAr: "الدخان", nameEn: "Ad-Dukhan", versesNumber: "59"),
      SuraModel(
          id: 45, nameAr: "الجاثية", nameEn: "Al-Jathiya", versesNumber: "37"),
      SuraModel(
          id: 46, nameAr: "الأحقاف", nameEn: "Al-Ahqaf", versesNumber: "35"),
      SuraModel(id: 47, nameAr: "محمد", nameEn: "Muhammad", versesNumber: "38"),
      SuraModel(id: 48, nameAr: "الفتح", nameEn: "Al-Fath", versesNumber: "29"),
      SuraModel(
          id: 49, nameAr: "الحجرات", nameEn: "Al-Hujurat", versesNumber: "18"),
      SuraModel(id: 50, nameAr: "ق", nameEn: "Qaf", versesNumber: "45"),
      SuraModel(
          id: 51,
          nameAr: "الذاريات",
          nameEn: "Adh-Dhariyat",
          versesNumber: "60"),
      SuraModel(id: 52, nameAr: "الطور", nameEn: "At-Tur", versesNumber: "49"),
      SuraModel(id: 53, nameAr: "النجم", nameEn: "An-Najm", versesNumber: "62"),
      SuraModel(
          id: 54, nameAr: "القمر", nameEn: "Al-Qamar", versesNumber: "55"),
      SuraModel(
          id: 55, nameAr: "الرحمن", nameEn: "Ar-Rahman", versesNumber: "78"),
      SuraModel(
          id: 56, nameAr: "الواقعة", nameEn: "Al-Waqi'a", versesNumber: "96"),
      SuraModel(
          id: 57, nameAr: "الحديد", nameEn: "Al-Hadid", versesNumber: "29"),
      SuraModel(
          id: 58,
          nameAr: "المجادلة",
          nameEn: "Al-Mujadila",
          versesNumber: "22"),
      SuraModel(
          id: 59, nameAr: "الحشر", nameEn: "Al-Hashr", versesNumber: "24"),
      SuraModel(
          id: 60,
          nameAr: "الممتحنة",
          nameEn: "Al-Mumtahina",
          versesNumber: "13"),
      SuraModel(id: 61, nameAr: "الصف", nameEn: "As-Saff", versesNumber: "14"),
      SuraModel(
          id: 62, nameAr: "الجمعة", nameEn: "Al-Jumu'ah", versesNumber: "11"),
      SuraModel(
          id: 63,
          nameAr: "المنافقون",
          nameEn: "Al-Munafiqun",
          versesNumber: "11"),
      SuraModel(
          id: 64, nameAr: "التغابن", nameEn: "At-Taghabun", versesNumber: "18"),
      SuraModel(
          id: 65, nameAr: "الطلاق", nameEn: "At-Talaq", versesNumber: "12"),
      SuraModel(
          id: 66, nameAr: "التحريم", nameEn: "At-Tahrim", versesNumber: "12"),
      SuraModel(id: 67, nameAr: "الملك", nameEn: "Al-Mulk", versesNumber: "30"),
      SuraModel(
          id: 68, nameAr: "القلم", nameEn: "Al-Qalam", versesNumber: "52"),
      SuraModel(
          id: 69, nameAr: "الحاقة", nameEn: "Al-Haqqah", versesNumber: "52"),
      SuraModel(
          id: 70, nameAr: "المعارج", nameEn: "Al-Ma'arij", versesNumber: "44"),
      SuraModel(id: 71, nameAr: "نوح", nameEn: "Nuh", versesNumber: "28"),
      SuraModel(id: 72, nameAr: "الجن", nameEn: "Al-Jinn", versesNumber: "28"),
      SuraModel(
          id: 73, nameAr: "المزمل", nameEn: "Al-Muzzammil", versesNumber: "20"),
      SuraModel(
          id: 74, nameAr: "المدثر", nameEn: "Al-Muddathir", versesNumber: "56"),
      SuraModel(
          id: 75, nameAr: "القيامة", nameEn: "Al-Qiyama", versesNumber: "40"),
      SuraModel(
          id: 76, nameAr: "الإنسان", nameEn: "Al-Insan", versesNumber: "31"),
      SuraModel(
          id: 77,
          nameAr: "المرسلات",
          nameEn: "Al-Mursalat",
          versesNumber: "50"),
      SuraModel(id: 78, nameAr: "النبأ", nameEn: "An-Naba", versesNumber: "40"),
      SuraModel(
          id: 79, nameAr: "النازعات", nameEn: "An-Nazi'at", versesNumber: "46"),
      SuraModel(id: 80, nameAr: "عبس", nameEn: "Abasa", versesNumber: "42"),
      SuraModel(
          id: 81, nameAr: "التكوير", nameEn: "At-Takwir", versesNumber: "29"),
      SuraModel(
          id: 82, nameAr: "الإنفطار", nameEn: "Al-Infitar", versesNumber: "19"),
      SuraModel(
          id: 83,
          nameAr: "المطففين",
          nameEn: "Al-Mutaffifin",
          versesNumber: "36"),
      SuraModel(
          id: 84,
          nameAr: "الإنشقاق",
          nameEn: "Al-Inshiqaq",
          versesNumber: "25"),
      SuraModel(
          id: 85, nameAr: "البروج", nameEn: "Al-Buruj", versesNumber: "22"),
      SuraModel(
          id: 86, nameAr: "الطارق", nameEn: "At-Tariq", versesNumber: "17"),
      SuraModel(
          id: 87, nameAr: "الأعلى", nameEn: "Al-A'la", versesNumber: "19"),
      SuraModel(
          id: 88,
          nameAr: "الغاشية",
          nameEn: "Al-Ghashiyah",
          versesNumber: "26"),
      SuraModel(id: 89, nameAr: "الفجر", nameEn: "Al-Fajr", versesNumber: "30"),
      SuraModel(
          id: 90, nameAr: "البلد", nameEn: "Al-Balad", versesNumber: "20"),
      SuraModel(
          id: 91, nameAr: "الشمس", nameEn: "Ash-Shams", versesNumber: "15"),
      SuraModel(id: 92, nameAr: "الليل", nameEn: "Al-Layl", versesNumber: "21"),
      SuraModel(
          id: 93, nameAr: "الضحى", nameEn: "Adh-Dhuha", versesNumber: "11"),
      SuraModel(
          id: 94, nameAr: "الشرح", nameEn: "Ash-Sharh", versesNumber: "8"),
      SuraModel(id: 95, nameAr: "التين", nameEn: "At-Tin", versesNumber: "8"),
      SuraModel(id: 96, nameAr: "العلق", nameEn: "Al-Alaq", versesNumber: "19"),
      SuraModel(id: 97, nameAr: "القدر", nameEn: "Al-Qadr", versesNumber: "5"),
      SuraModel(
          id: 98, nameAr: "البينة", nameEn: "Al-Bayyina", versesNumber: "8"),
      SuraModel(
          id: 99, nameAr: "الزلزلة", nameEn: "Az-Zalzalah", versesNumber: "8"),
      SuraModel(
          id: 100, nameAr: "العاديات", nameEn: "Al-Adiyat", versesNumber: "11"),
      SuraModel(
          id: 101, nameAr: "القارعة", nameEn: "Al-Qari'ah", versesNumber: "11"),
      SuraModel(
          id: 102, nameAr: "التكاثر", nameEn: "At-Takathur", versesNumber: "8"),
      SuraModel(id: 103, nameAr: "العصر", nameEn: "Al-Asr", versesNumber: "3"),
      SuraModel(
          id: 104, nameAr: "الهمزة", nameEn: "Al-Humazah", versesNumber: "9"),
      SuraModel(id: 105, nameAr: "الفيل", nameEn: "Al-Fil", versesNumber: "5"),
      SuraModel(id: 106, nameAr: "قريش", nameEn: "Quraish", versesNumber: "4"),
      SuraModel(
          id: 107, nameAr: "الماعون", nameEn: "Al-Ma'un", versesNumber: "7"),
      SuraModel(
          id: 108, nameAr: "الكوثر", nameEn: "Al-Kawthar", versesNumber: "3"),
      SuraModel(
          id: 109, nameAr: "الكافرون", nameEn: "Al-Kafirun", versesNumber: "6"),
      SuraModel(id: 110, nameAr: "النصر", nameEn: "An-Nasr", versesNumber: "3"),
      SuraModel(
          id: 111, nameAr: "المسد", nameEn: "Al-Masad", versesNumber: "5"),
      SuraModel(
          id: 112, nameAr: "الإخلاص", nameEn: "Al-Ikhlas", versesNumber: "4"),
      SuraModel(
          id: 113, nameAr: "الفلق", nameEn: "Al-Falaq", versesNumber: "5"),
      SuraModel(id: 114, nameAr: "الناس", nameEn: "An-Nas", versesNumber: "6"),
    ];
    var size = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadethBG,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.writtenIslami,
            height: size * 0.25,
          ),
          Expanded(
            child: CarouselSlider(
              items: items.map(
                (e) {
                  loadData();
                  return HadithItemCard(
                    hadithTitle: title,
                    hadith: hadethList,
                  );
                },
              ).toList(),
              options: CarouselOptions(
                height: size * 0.8,
                aspectRatio: 0.8,
                viewportFraction: 0.70,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index + 1;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  loadData() async {
    String content =
        await rootBundle.loadString("assets/files/Hadeeth/h$currentIndex.txt");

    List<String> parts = content.split('\n');
    title = parts[0];
    hadethList = parts.sublist(1);
    setState() {}
    ;
  }
}
