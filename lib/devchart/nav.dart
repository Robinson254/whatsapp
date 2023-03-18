
import 'package:flutter/material.dart';
import 'package:whatsapp1/devchart/status.dart';

import 'calls.dart';
import 'home.dart';

class MyWhats extends StatefulWidget {
  const MyWhats({super.key});

  @override
  State<MyWhats> createState() => _MyWhatsState();
}

class _MyWhatsState extends State<MyWhats> {
  int _selectedindex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  final List<Widget> _pages=[
    HomePage(),
    MyStatus(),
    MyCalls(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange[400],
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Charts'),
          BottomNavigationBarItem(icon: Icon(Icons.donut_large_sharp),label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined),label: 'Calls'),
          
          
        ]
      ),
      body: _pages[_selectedindex],
    );
  }
}