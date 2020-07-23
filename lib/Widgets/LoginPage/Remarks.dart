import 'package:flutter/material.dart';

class Remarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Powered by:\n\n',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'SanFranciscoItalic',
                    color: Color.fromRGBO(64, 64, 64, 1),
                  ),
                ),
                TextSpan(
                  text: 'VERSA PH\n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SanFranciscoBold',
                    color: Color.fromRGBO(226, 53, 53, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
