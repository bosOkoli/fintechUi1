import 'package:flutter/material.dart';
import 'package:tweet_fintech/cards.dart';
import 'package:tweet_fintech/homescreen.dart';
import 'package:tweet_fintech/my_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[const HomeScreen(), const CardsScreen()];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: false,
        backgroundColor: const Color.fromARGB(255, 8, 42, 61),
        body: pages[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            backgroundColor: ColorSelect.purpleMainColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 212, 211, 211),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Icon(
                  Icons.home_rounded,
                  size: 25,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Icon(
                  Icons.credit_card_outlined,
                  size: 25,
                ),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 8, 42, 61),
                activeIcon: null,
                icon: Icon(
                  Icons.settings,
                  size: 25,
                ),
                label: 'settings',
              ),
            ],
          ),
        ));
  }
}
