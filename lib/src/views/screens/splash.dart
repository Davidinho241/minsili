import 'package:flutter/material.dart';
import 'package:minsili/src/helpers/navigation.dart';
import 'package:minsili/src/utils/themes.dart';
import 'package:minsili/src/utils/sizes.dart';

class SplashscreenUI extends StatefulWidget {
  @override
  _SplashscreenUIState createState() => _SplashscreenUIState();
}

class _SplashscreenUIState extends State<SplashscreenUI> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {
      openRemovePage(context, null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(gradient: customGradient()),
        child: Center(
          child: Image.asset(
            "assets/images/icons/logo-septimalux.png",
            height: Sizes.s450,
          ),
        ),
      ),
    );
  }
}
