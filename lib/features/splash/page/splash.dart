import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/constant/app_assets.dart';

import '../../on_boarding/on_boarding.dart';

class Splash extends StatefulWidget {
  static const String routeName = "/splash";
  static const Duration duration = Duration(milliseconds: 1750);

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Splash.duration, () {
      Navigator.of(context).pushReplacementNamed(OnBoarding.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.splashBackground,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(AppAssets.header),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FadeInDown(
              duration: Splash.duration,
              child: Image.asset(
                AppAssets.lamp,
                height: height * 0.3358369098712446,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: height * 0.4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FadeInLeft(
                duration: Splash.duration,
                child: Image.asset(
                  AppAssets.leftShape,
                  height: height * 0.2006437768240343,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.5),
            child: Align(
              alignment: Alignment.centerRight,
              child: FadeInRight(
                duration: Splash.duration,
                child: Image.asset(
                  AppAssets.rightShape,
                  height: height * 0.2317596566523605,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ZoomIn(
              duration: Splash.duration,
              child: Image.asset(
                AppAssets.logo,
                height: height * 0.2489270386266094,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: Splash.duration,
                child: Image.asset(
                  AppAssets.brand,
                  height: height * 0.1158798283261803,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
