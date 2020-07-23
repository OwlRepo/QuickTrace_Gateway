import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quicktrace_gateway/Providers/BluetoothProvider.dart';

class Headers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bluetoothProvider = Provider.of<BluetoothProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                await bluetoothProvider.searchForDevices();
              },
              child: Image.asset(
                'assets/Images/LogoOnly.png',
                fit: BoxFit.contain,
                height: 40.0,
                width: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
