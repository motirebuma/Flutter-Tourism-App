import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';

class TheNorth extends StatefulWidget {
  const TheNorth({super.key});

  @override
  State<TheNorth> createState() => _TheNorthState();
}

class _TheNorthState extends State<TheNorth> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

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
        'Axum',
        'assets/wal.jpg',
        'lorem ipsum sdfjl sdf axum tesrko nbre ..zimbleh taweraleh ende man?',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Gondar',
        'assets/places/addis.jpg',
        'fasil sfje fjdslfje ante , fjdslaj ejf ajfelaejf ljaelfj leja jfdlsfj eaj fleaj fdajfe sdjafle',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Al-Najash',
        'assets/wal.jpg',
        'Al-Nejash the sdflje fdsjsaejl asdf ejla fdjela kfjld fe laefljfd afjle aedjfe ldajfle aeljfel fdafje lksajfe fela jeajf',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Lake Tana',
        'assets/wal.jpg',
        'if we win if we rule lab lab wuha in every bowanbuwa, we also afford jalati for all people for free',
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
        title: Text('The North'),
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
