import 'package:flutter/material.dart';
import 'package:healthmate/presentation/settings_screen.dart';

import 'calendar_screen.dart';
import 'home_screen.dart';
class HomeNavigationBar extends StatefulWidget {
  int currentIndex;
  HomeNavigationBar({super.key, this.currentIndex = 0});


  @override
  State<HomeNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<HomeNavigationBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: widget.currentIndex,

        selectedItemColor: Colors.blue,
        //selectedLabelStyle: textTheme.caption,
        //unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => widget.currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Calendar', icon: Icon(Icons.calendar_month)),
          BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings)),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        const CalendarScreen(),
        const SettingsScreen(),

      ][widget.currentIndex],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}