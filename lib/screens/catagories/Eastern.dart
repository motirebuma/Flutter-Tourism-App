import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';
import '../../lang/localization_checker.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../widgets/WidgetDiscoveryBody.dart';

class TheEast extends StatefulWidget {
  const TheEast({super.key});

  @override
  State<TheEast> createState() => _TheEastState();
}

class _TheEastState extends State<TheEast> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox()
        .DestinationBox('harar'.tr(), 'assets/catagory/east/harar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/east/harar.jpg',
              'harar'.tr(),
              89,
              88,
              'dis_harar'.tr(),
              '+25194745436'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'bale_mountains'.tr(), 'assets/catagory/east/harar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/east/harar.jpg',
              'bale_mountains'.tr(),
              89,
              88,
              'dis_bale'.tr(),
              '+25194745436'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'babile'.tr(), 'assets/catagory/east/harar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/east/harar.jpg',
              'babile'.tr(),
              89,
              88,
              'dis_babile'.tr(),
              '+25194745436'),
        ),
      );
    }));
    widgetList.add(WidgetDestinationBox().DestinationBox(
        'sofumar'.tr(), 'assets/catagory/east/sofumar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/east/sofumar.jpg',
              'sofumar'.tr(),
              89,
              88,
              'dis_sofumar'.tr(),
              '+25194745436'),
        ),
      );
    }));
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('east'.tr()),
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
