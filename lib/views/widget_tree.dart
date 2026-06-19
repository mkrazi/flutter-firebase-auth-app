import 'package:flutter/material.dart';
import 'package:myapp_/data/notifier.dart';
import 'package:myapp_/views/pages/home_page.dart';
import 'package:myapp_/views/pages/settings_page.dart';
import 'package:myapp_/views/widget/navbar_widget.dart';
import 'package:myapp_/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), profilePage()];

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, selectedIndex, child) {
          return pages[selectedIndex];
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
