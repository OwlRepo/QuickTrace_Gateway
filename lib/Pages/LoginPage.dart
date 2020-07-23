import 'package:flutter/material.dart';
import 'package:quicktrace_gateway/Widgets/LoginPage/AccountActions.dart';
import 'package:quicktrace_gateway/Widgets/LoginPage/AccountOptions.dart';
import 'package:quicktrace_gateway/Widgets/LoginPage/LogoName.dart';
import 'package:quicktrace_gateway/Widgets/LoginPage/Remarks.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920,
      width: 1080,
      allowFontScaling: true,
    );

    return ResponsiveWidgets.builder(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ContainerResponsive(
            height: 1920.0,
            width: 1080.0,
            heightResponsive: true,
            widthResponsive: true,
            padding: EdgeInsetsResponsive.only(
              left: 20.0,
              right: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 4,
                  child: LogoName(),
                ),
                Expanded(
                  flex: 8,
                  child: AccountActions(),
                ),
                Expanded(
                  flex: 1,
                  child: AccountOptions(),
                ),
                Expanded(
                  flex: 3,
                  child: Remarks(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
