import 'package:devetechnologies_qr/models/scan_model.dart';
import 'package:flutter/material.dart';

class ScannProvider extends ChangeNotifier {
  late ScanModel scanValue = ScanModel();

  Future<void> setValueScanner(String value) async {
    scanValue = ScanModel(valor: value);
    notifyListeners();
  }
}
