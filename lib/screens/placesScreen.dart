import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../widgets/WidgetDestinationBox.dart';
import '../widgets/WidgetDestinationBox.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Amazon', 'assets/wal.jpg', 'lorem ipsum sdfjl sdf', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Somewhere',
        'assets/places/addis.jpg',
        'Lalibela is a town in the Amhara region of northern Ethiopia. It\'s known for its distinctive rock-cut churches dating from the 12th and 13th centuries, which are pilgrimage sites for Coptic Christians.',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Lalibela',
        'assets/places/north.jpg',
        'Lalibela is a town in the Amhara region of northern Ethiopia. It\'s known for its distinctive rock-cut churches dating from the 12th and 13th centuries, which are pilgrimage sites for Coptic Christians.',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Amazon',
        'assets/wal.jpg',
        'Lalibela is a town in the Amhara region of northern Ethiopia. It\'s known for its distinctive rock-cut churches dating from the 12th and 13th centuries, which are pilgrimage sites for Coptic Christians.',
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
        title: Text('Northern'),
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
