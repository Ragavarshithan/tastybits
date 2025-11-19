import 'package:flutter/material.dart';
import 'package:tastybits/screen/home_screen.dart';
import 'package:tastybits/screen/notificationScreen.dart';
import 'package:tastybits/widget/customNavBar.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    NotificationScreen(),
    HomeScreen(),
    NotificationScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        shape: CircleBorder(),
        backgroundColor: Color(0xFF129575),
        child: Icon(Icons.add, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Customnavbar(selectedIndex: _currentIndex, onItemTapped: _onItemTapped,)
    );
  }
}
