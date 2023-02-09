import 'package:devetechnologies_qr/components/custom_navigation_bar.dart';
import 'package:devetechnologies_qr/components/scan_button.dart';
import 'package:devetechnologies_qr/models/scan_model.dart';
import 'package:devetechnologies_qr/providers/scann_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scannProvider = Provider.of<ScannProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home QR Scanner'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.apps_outage_outlined))
        ],
      ),
      bottomNavigationBar: const CustomNaavigationBar(),
      floatingActionButton: ScanButtom(scannProvider: scannProvider),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: GestureDetector(
          child: Text(scannProvider.scanValue.valor.toString()),
          onTap: () {
            linkUrl(scannProvider.scanValue);
          },
        ),
      ),
    );
  }

  Future<void> linkUrl(ScanModel scann) async {
    print(scann.valor);
    final stringScann = scann.valor?.replaceAll('http://', '');
    final Uri toLaunch = Uri(scheme: 'http', host: stringScann);
    launchUrl(toLaunch, mode: LaunchMode.externalApplication);
  }
}
