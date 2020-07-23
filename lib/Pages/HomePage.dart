import 'package:flutter/material.dart';
import 'package:quicktrace_gateway/Widgets/HomePage/Body.dart';
import 'package:quicktrace_gateway/Widgets/HomePage/Headers.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: SafeArea(
        child: ContainerResponsive(
          heightResponsive: true,
          widthResponsive: true,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Headers(),
              ),
              Expanded(
                flex: 9,
                child: Body(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
