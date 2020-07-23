import 'package:flutter/material.dart';
import 'package:quicktrace_gateway/Pages/HomePage.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AccountActions extends StatelessWidget {
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
        left: 60.0,
        right: 60.0,
        bottom: 80.0,
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 30.0,
                  ),
                  child: TextResponsive(
                    'Login',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'SanFranciscoBold',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(64, 64, 64, 1),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: ContainerResponsive(
                  padding: EdgeInsetsResponsive.only(
                    top: 20.0,
                    left: 80.0,
                    right: 80.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'SanFranciscoRegular',
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'SanFranciscoRegular',
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  color: Color.fromRGBO(226, 53, 53, 1),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: TextResponsive(
                    'Submit',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: 'SanFranciscoRegular',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
