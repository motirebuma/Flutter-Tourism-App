import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';

class TheEast extends StatefulWidget {
  const TheEast({super.key});

  @override
  State<TheEast> createState() => _TheEastState();
}

class _TheEastState extends State<TheEast> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Harar',
        'assets/wal.jpg',
        'harar the living museums bla bla bla.. good bye frined', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Bale Mountains',
        'assets/places/addis.jpg',
        'mountain the dsfjkl jdsfjle mount mount dsfdads hello mountain.. dude what is mountain i dont know:(',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Babile',
        'assets/places/north.jpg',
        'babile the mother of elephants sdfjsafjdl mnaba nw yalkew ayii..', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Sofumar Cave',
        'assets/catagory/east/sofumar.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('The East'),
        backgroundColor: const Color(0xff1c1c1c),
        foregroundColor: Color(0xffd27504),
      ),
      body: GridView.builder(
        itemCount: widgetList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // 2 columns
          // crossAxisSpacing: 0,
          mainAxisSpacing: 10.0, // Spacing between rows
          // crossAxisSpacing: 10.0, // Spacing between columns
          childAspectRatio: 1.7, // Width/Height rat
        ),
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );
  }
}
