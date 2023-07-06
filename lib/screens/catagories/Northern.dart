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

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'lalibela'.tr(), 'assets/catagory/north/lalibela.jpg', '', () {
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
        'axum'.tr(), 'assets/catagory/north/axum.jpg', ''.tr(), () {
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
        'Gondar'.tr(), 'assets/catagory/north/gonder.jpg', '', () {
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

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'alnegash'.tr(), 'assets/catagory/north/alnegash.jpg', '', () {
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
        'tana'.tr(), 'assets/catagory/north/tana.jpg', ''.tr(), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/tana.jpg',
              'tana'.tr(),
              89,
              88,
              'dis_tana'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'seimen_mountains'.tr(), 'assets/catagory/north/semenmountain.jpg', '',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/semenmountain.jpg',
              'seimen_mountains'.tr(),
              89,
              88,
              'dis_seimen_mountains'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'geraltha'.tr(), 'assets/catagory/north/gheralta.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/north/gheralta.jpg',
              'geraltha'.tr(),
              89,
              88,
              'dis_geraltha'.tr(),
              '+25194745436'),
        ),
      );
      // null;
    }));
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('north'.tr()),
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
