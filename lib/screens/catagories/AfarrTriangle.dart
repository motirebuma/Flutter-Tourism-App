import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetDiscoveryBody.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../lang/localization_checker.dart';

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
        'awash_doho'.tr(), 'assets/catagory/afar/afar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/afar/afar.jpg',
              'awash_doho'.tr(),
              89,
              88,
              'dis_awash_doho'.tr(),
              '+25194745400'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'denakil'.tr(), 'assets/catagory/afar/afar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/afar/afar.jpg',
              'denakil'.tr(),
              89,
              88,
              'dis_denakil'.tr(),
              '+251947212200'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox()
        .DestinationBox('hadar'.tr(), 'assets/catagory/afar/afar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/afar/afar.jpg',
              'hadar'.tr(),
              89,
              88,
              'dis_hadar'.tr(),
              '+25194324300'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'alalobed'.tr(), 'assets/catagory/afar/afar.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/afar/afar.jpg',
              'alalobed'.tr(),
              89,
              88,
              'dis_alalobed'.tr(),
              '+25194324312'),
        ),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('afar'.tr()),
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
