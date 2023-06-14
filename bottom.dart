import 'package:flutter/material.dart';
import './home.dart';
import './profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // ignore: unused_field
  int _selectPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  // ignore: unused_field
  final List<Map<String, dynamic>> _pages = [
    {
      "page": const MyHome(),
      "Title": "Home",
    },
    {
      "page": const MyProfile(),
      "Title": "Profile",
    },
    {
      "page": const MyHome(),
      "Title": "Home",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Bottom Navigation"),
      ),*/
      body: _pages[_selectPageIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectPageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.device_unknown),
            label: "Iteams",
          ),
        ],
        onTap: _selectPage,
      ),
    );
  }
}
