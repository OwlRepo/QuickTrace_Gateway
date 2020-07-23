import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Headers extends StatelessWidget {
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
        left: 30.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContainerResponsive(
            padding: EdgeInsetsResponsive.only(top: 60.0),
            child: TextResponsive(
              'SIGN UP',
              style: TextStyle(
                color: Color.fromRGBO(226, 53, 53, 1),
                fontSize: 100.0,
                fontFamily: 'SanFranciscoBold',
              ),
            ),
          ),
          ContainerResponsive(
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
