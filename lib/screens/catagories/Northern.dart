import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetDiscoveryBody.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../lang/localization_checker.dart';

class TheNorth extends StatefulWidget {
  const TheNorth({super.key});

  @override
  State<TheNorth> createState() => _TheNorthState();
}

class _TheNorthState extends State<TheNorth> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox('lalibela'.tr(),
        'assets/catagory/north/lalibela.jpg', 'dis_lalibela'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/lalibela.jpg',
              'lalibela'.tr(),
              89,
              88,
              'dis_lalibela'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'axum'.tr(), 'assets/catagory/north/lalibela.jpg', 'dis_axum'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/axum.jpg',
              'axum'.tr(),
              89,
              88,
              'dis_axum'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Gondar'.tr(), 'assets/catagory/north/lalibela.jpg', 'dis_gondar'.tr(),
        () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/gonder.jpg',
              'Gondar'.tr(),
              89,
              88,
              'dis_gondar'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox('alnegash'.tr(),
        'assets/catagory/north/lalibela.jpg', 'dis_alnegash'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/alnegash.jpg',
              'alnegash'.tr(),
              89,
              88,
              'dis_alnegash'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'tana'.tr(), 'assets/catagory/north/tana.jpg', 'dis_tana'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/tana.jpg',
              'alnegash'.tr(),
              89,
              88,
              'dis_tana'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'seimen_mountains'.tr(),
        'assets/catagory/north/semenmountain.jpg',
        'dis_seimen_mountains'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/semenmountain.jpg',
              'alnegash'.tr(),
              89,
              88,
              'dis_seimen_mountains'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox('gheralta'.tr(),
        'assets/catagory/north/gheralta.jpg', 'dis_gheralta'.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/gheralta.jpg',
              'gheralta'.tr(),
              89,
              88,
              'dis_gheralta'.tr(),
              '+25194745436'),
        ),
      );
      // null;
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
