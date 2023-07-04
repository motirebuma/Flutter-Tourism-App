import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetDiscoveryBody.dart';
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
        'assets/catagory/north/lalibela.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/lalibela.jpg',
              'Lalibela',
              89,
              88,
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Axum',
        'assets/catagory/north/axum.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/axum.jpg',
              'Axum',
              89,
              88,
              'axum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
              '+25194745436'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Gondar',
        'assets/catagory/north/gonder.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Al-Nagash',
        'assets/catagory/north/alnegash.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Lake Tana',
        'assets/catagory/north/tana.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Semen Mountains',
        'assets/catagory/north/semenmountain.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Gheralta',
        'assets/catagory/north/gheralta.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
        () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      null;
    }));
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('The North'),
        backgroundColor: const Color(0xff1c1c1c),
        foregroundColor: const Color(0xffd27504),
        elevation: 0,
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
