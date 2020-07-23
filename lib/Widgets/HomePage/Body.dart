import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quicktrace_gateway/Providers/BluetoothProvider.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Body extends StatelessWidget {
  Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    final bluetoothProvider = Provider.of<BluetoothProvider>(context);
    bluetoothProvider.checkBLEStatus();
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ContainerResponsive(
      padding: EdgeInsetsResponsive.only(
        left: 40.0,
        right: 40.0,
        top: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'List of devices',
                style: TextStyle(
                  color: Color.fromRGBO(64, 64, 64, 1),
                  fontFamily: 'SanFranciscoBold',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: bluetoothProvider.scanResults.toSet().toList().length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () async {
                    final String cameraScanResult = await scanner.scan();
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color.fromRGBO(226, 53, 53, 1),
                    child: ListTile(
                      leading: Icon(
                        Icons.bluetooth,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        '${bluetoothProvider.scanResults[index].deviceName}',
                        style: TextStyle(
                          fontFamily: 'SanFranciscoItalic',
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        '${bluetoothProvider.scanResults[index].deviceBLEID}',
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
