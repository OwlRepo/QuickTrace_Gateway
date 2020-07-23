import 'package:flutter/material.dart';
import 'package:quicktrace_gateway/Pages/SignUpPage.dart';
import 'package:quicktrace_gateway/Pages/SignUpPage.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AccountOptions extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: RaisedButtonResponsive(
              elevation: 0.0,
              focusElevation: 0.0,
              highlightElevation: 0.0,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              color: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontFamily: 'SanFranciscoBold',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RaisedButtonResponsive(
              elevation: 0.0,
              focusElevation: 0.0,
              highlightElevation: 0.0,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              color: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                ),
                child: ContainerResponsive(
                  heightResponsive: true,
                  height: 80.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(64, 64, 64, 1),
                        Color.fromRGBO(226, 53, 53, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: TextResponsive(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontFamily: 'SanFranciscoRegular',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
