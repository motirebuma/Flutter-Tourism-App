import 'package:abushakir/abushakir.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/screens/menu/calendar.dart';
import 'package:alobawa/screens/menu/currencyConverter.dart';
import 'package:alobawa/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _currentIndex = 2;
  // final List<Widget> _pages = [
  //   HomeScreen(),
  //   CalendarPage(),
  //   HomeScreen(),
  //   Currency(),
  //   Currency(),
  // ];

  // final List<BottomNavigationBarItem> _navigationItems = [
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.home),
  //     label: 'Home',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.calendar_month),
  //     label: 'ET Calendar',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.home),
  //     label: 'Home',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.info),
  //     label: 'About',
  //   ),
  //   BottomNavigationBarItem(
  //     icon: Icon(Icons.info),
  //     label: 'Account',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      // body: return,
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   // // mouseCursor: SystemMouseCursors.grab,
      //   // // selectedFontSize: 20,
      //   // unselectedFontSize: 15,
      //   // showSelectedLabels: true,
      //   // showUnselectedLabels: true,
      //   // // // selectedIconTheme: IconThemeData(color: Colors.teal, size: 40),
      //   // unselectedItemColor: Colors.deepOrangeAccent,
      //   // // selectedItemColor: Colors.teal,
      //   // // elevation: 0,
      //   // // unselectedIconTheme: IconThemeData(
      //   // //   color: Colors.deepOrangeAccent,
      //   // // ),
      //   // backgroundColor: Colors.grey.shade300,
      //   // selectedFontSize: 15,
      //   // selectedIconTheme: const IconThemeData(color: Colors.teal, size: 20),
      //   // selectedItemColor: Colors.teal,
      //   // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      //   // !selected
      //   selectedFontSize: 15,
      //   showSelectedLabels: true,
      //   selectedItemColor: Colors.amber.shade900,
      //   // !unselected
      //   unselectedFontSize: 15,
      //   showUnselectedLabels: true,
      //   unselectedItemColor: Color(0xff1c1c1c),

      //   elevation: 0,

      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.calendar_month),
      //   label: 'Calendar',
      // ),
      //     BottomNavigationBarItem(
      //       icon: FaIcon(FontAwesomeIcons.arrowsRotate),
      //       label: 'Currency',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       label: 'camera',
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: _navigationItems,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor:
      //       Color(0xffd47405), // Set the color of the selected item
      //   unselectedItemColor:
      //       Colors.grey, // Set the color of the unselected items
      //   backgroundColor: Colors.transparent,
      // ),
    );
  }
}
