import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../lang/localization_checker.dart';
import '../../widgets/WidgetDiscoveryBody.dart';

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
        'omo_park'.tr(), 'assets/catagory/south/omo.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/south/omo.jpg',
              'omo_park'.tr(),
              89,
              88,
              'dis_omo'.tr(),
              '+25194745436'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'nechsar'.tr(), 'assets/catagory/south/nechsar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/south/nechsar.jpg',
              'nechsar'.tr(),
              89,
              88,
              'dis_nechsar'.tr(),
              '+2519470006'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'dorze'.tr(), 'assets/catagory/south/dorze.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/south/dorze.jpg',
              'dorze'.tr(),
              89,
              88,
              'dis_dorze'.tr(),
              '+2519470006'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'konso'.tr(), 'assets/catagory/south/konso.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/south/konso.jpg',
              'konso'.tr(),
              89,
              88,
              'dis_konso'.tr(),
              '+2519470006'),
        ),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('south'.tr()),
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
