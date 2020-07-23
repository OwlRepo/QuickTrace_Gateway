import 'package:flutter/material.dart';
class QRDataProvider with ChangeNotifier {
  String _cameraScanResult;

  String get cameraScanResult => _cameraScanResult;

  set cameraScanResult(String values) {
    _cameraScanResult = values;
    notifyListeners();
  }
}
