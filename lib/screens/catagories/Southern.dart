import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';

class TheSouth extends StatefulWidget {
  const TheSouth({super.key});

  @override
  State<TheSouth> createState() => _TheSouthState();
}

class _TheSouthState extends State<TheSouth> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Omo National Park',
        'assets/wal.jpg',
        'Omo National Park lorem ipsum Omo National Park sdfjl Omo National Park sdf ',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Nechsar National Park',
        'assets/places/addis.jpg',
        'nechsar National Park lorem ipsum hello friend how are you. nechsar National Park',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Dorze Village',
        'assets/places/north.jpg',
        'dorthe village is lorem ipsum village. if we win if we rule lablab wuha in every bowanbowa',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Konso Caltural landscape',
        'assets/wal.jpg',
        'Konso Caltural landscape simu rasu areft neger nw man.', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('The South'),
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
