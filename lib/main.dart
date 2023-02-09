import 'package:devetechnologies_qr/providers/menu_providers.dart';
import 'package:devetechnologies_qr/providers/scann_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MenuProvider()),
        ChangeNotifierProvider(create: (_) => ScannProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QR Scanner',
          initialRoute: 'home',
          routes: {'home': (_) => const HomeScreen()},
          theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
                  secondary: Colors.teal[600], primary: Colors.teal[300])),
          home: const HomeScreen()),
    );
  }
}
