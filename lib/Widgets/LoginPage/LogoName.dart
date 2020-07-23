import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class LogoName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
      padding: EdgeInsetsResponsive.only(
        top: 100.0,
        bottom: 100.0,
      ),
      child: Image.asset(
        'assets/Images/LogoName.png',
        height: 250.0,
        width: 250.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
