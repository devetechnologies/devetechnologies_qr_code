import 'package:devetechnologies_qr/providers/menu_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNaavigationBar extends StatelessWidget {
  const CustomNaavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _menuprovider = Provider.of<MenuProvider>(context);
    int _selectMenuValue = _menuprovider.seleMenu;
    return BottomNavigationBar(
        onTap: (value) => _menuprovider.seleMenu = value,
        currentIndex: _selectMenuValue,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.history_sharp), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
        ]);
  }
}
