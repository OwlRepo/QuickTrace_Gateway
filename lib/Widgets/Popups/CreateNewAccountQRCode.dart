import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:quicktrace_gateway/Providers/CreateAccountProvider.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:provider/provider.dart';

class CreateNewAccountQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    final createAccountProvider = Provider.of<CreateAccountProvider>(context);
    return ContainerResponsive(
      height: MediaQuery.of(context).size.height * .80,
      width: MediaQuery.of(context).size.width,
      widthResponsive: true,
      heightResponsive: true,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 5.0,
            child: Padding(
              padding: EdgeInsetsResponsive.only(
                top: 50.0,
                left: 50.0,
                right: 50.0,
              ),
              child: PrettyQr(
                roundEdges: true,
                typeNumber: 10,
                size: 200.0,
                elementColor: Color.fromRGBO(64, 64, 64, 1),
                data: '\"Fullname\":\"${createAccountProvider.newAccountInfo[0].fullname}\",\n' +
                    '\"Address\":\"${createAccountProvider.newAccountInfo[0].address}\",\n' +
                    '\"ContactNo\":\"${createAccountProvider.newAccountInfo[0].contactNo}\",\n' +
                    '\"Password\":\"${createAccountProvider.newAccountInfo[0].password}\",\n',
              ),
            ),
          ),
          Positioned(
            top: -80.0,
            child: ContainerResponsive(
              child: TextResponsive(
                'To activate your account, go to the nearest gateway\ndevice and use it to activate your account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontFamily: 'SanFranciscoBold',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -90.0,
            child: ContainerResponsive(
              heightResponsive: true,
              height: 100.0,
              widthResponsive: true,
              width: 500.0,
              margin: EdgeInsetsResponsive.only(
                top: 100.0,
              ),
              child: RaisedButtonResponsive(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromRGBO(226, 53, 53, 1),
                child: TextResponsive(
                  'Close',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SanFranciscoRegular',
                    fontSize: 30.0,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
