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

  void onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
        dividerColor: Color.fromARGB(255, 3, 3, 39),
        canvasColor: Color.fromARGB(255, 3, 3, 39),
      ), child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
          elevation: 6,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "home outlined"),
            BottomNavigationBarItem(
                icon: Icon(Icons.thermostat_outlined),
                label: "thermostat outlined"),
            BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb_outline),
                label: "lightbulb outline"),
            BottomNavigationBarItem(
                icon: Icon(Icons.king_bed_outlined), label: "bed outlined"),
          ],
          iconSize: 20,
          selectedIconTheme: const IconThemeData(size: 30),
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue,
          onTap: onTapItem,
          
        ),),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeMonitoring(),
          ClimateControl(),
          HomeControl(),
          Bedroom(),
        ],
        sizing: StackFit.expand,
      ),
    );
  }
}
