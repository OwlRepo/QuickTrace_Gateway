import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quicktrace_gateway/Pages/LoginPage.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );

    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: ContainerResponsive(
        heightResponsive: true,
        widthResponsive: true,
        child: Center(
          child: Image.asset(
            'assets/Images/LogoName.png',
            height: 250.0,
            width: 250.0,
          ),
        ),
      ),
    );
  }
}
