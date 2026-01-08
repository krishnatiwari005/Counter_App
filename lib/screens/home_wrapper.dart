import 'package:counter/screens/history_screen.dart';
import 'package:counter/screens/jap_screen.dart';
import 'package:counter/screens/stats_screen.dart';
import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {


  int _index=0;

  final screens =[
    JapScreen(),
    StatsScreen(),
    HistoryScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() =>_index =i),
        selectedItemColor: Colors.brown,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fingerprint_outlined),label: 'Jap'),
           BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: 'Stats'),
            BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History'),
        ],
      ),
    );
  }

}