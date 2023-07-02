import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
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
        'assets/catagory/south/omo.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Nechsar National Park',
        'assets/catagory/south/nechsar.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Dorze Village',
        'assets/catagory/south/dorze.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Konso Caltural landscape',
        'assets/catagory/south/konso.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
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
          childAspectRatio: 1.7, // Width/Height rat
        ),
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );
  }
}
