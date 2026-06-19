import 'package:flutter/material.dart';
import 'package:myapp_/data/notifier.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});
  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, child) {
        return NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndexNotifier.value = index;
            });
          },
          selectedIndex: selectedIndex,
        );
      },
    );
  }
}
