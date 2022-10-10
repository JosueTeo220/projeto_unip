import 'package:flutter/material.dart';
import 'app_pages/main_monitoring.dart';
import 'app_pages/climate_control.dart';
import 'app_pages/home_control.dart';
import 'app_pages/bedroom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: const Color.fromARGB(255, 15, 2, 47)),
        child: BottomNavigationBar(
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "home outlined"),
            BottomNavigationBarItem(
                icon: Icon(Icons.thermostat_outlined),
                label: "thermostat outlined"),
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline),
                label: "lightbulb outline"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bed_outlined), label: "bed outlined"),
          ],
          iconSize: 20,
          selectedIconTheme: IconThemeData(size: 30),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue,
          onTap: _onTapItem,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeMonitoring(),
          HomeControl(),
          ClimateControl(),
          Bedroom(),
        ],
        sizing: StackFit.expand,
      ),
    );
  }
}
