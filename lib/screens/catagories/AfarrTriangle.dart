import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';

class TheAfarTriangle extends StatefulWidget {
  const TheAfarTriangle({super.key});

  @override
  State<TheAfarTriangle> createState() => _TheAfarTriangleState();
}

class _TheAfarTriangleState extends State<TheAfarTriangle> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Awash Park',
        'assets/wal.jpg',
        'lorem ipsum sdfjl sdf the awash park omow mnamn mnam', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Danakil Depration',
        'assets/places/addis.jpg',
        'teh danadkl depraf djde jdfke ladfj ad eifj lsief moes fdke sdkfdkfj efsjlsa fjlasjf hefea fdsje sdfjlasjfe heaf fdsajk aef',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Hadar',
        'assets/places/north.jpg',
        'hadar is something even i dont know sjfefsa ieafebut f sdfjeia but its here to take ',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Alalobed Hotspring',
        'assets/wal.jpg',
        'Alalobed Hotspring desf isdf ee sometimes afje am high to cry fdjesfe hello friend',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('The Afar Triangle'),
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
          childAspectRatio: 2, // Width/Height rat
        ),
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );
  }
}
