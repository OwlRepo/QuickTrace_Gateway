import 'package:flutter/cupertino.dart';
import 'package:quicktrace_gateway/Models/BluetoothInfoModel.dart';

class DTRModel {
  final String status, name, address, contactNo, time, date;
  final List<BluetoothInfoModel> scannedDevices;

  DTRModel({
    @required this.status,
    @required this.name,
    @required this.address,
    @required this.contactNo,
    @required this.time,
    @required this.date,
    @required this.scannedDevices,
  });
}
