import 'package:devetechnologies_qr/providers/scann_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButtom extends StatelessWidget {
  final ScannProvider scannProvider;
  const ScanButtom({Key? key, required this.scannProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        scanningQR(context, scannProvider);
      },
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }

  Future<void> scanningQR(
      BuildContext context, ScannProvider scannProvider) async {
    String barcode;
    try {
      barcode = await FlutterBarcodeScanner.scanBarcode(
          '#6fcf25', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcode = 'Failed reading barCode';
    }
    if (barcode == '-1') {
      return;
    }
    final newScann = await scannProvider.setValueScanner(barcode);
  }
}
