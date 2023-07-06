import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetDiscoveryBody.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';
import '../../lang/localization_checker.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../lang/localization_checker.dart';

class TheWest extends StatefulWidget {
  const TheWest({super.key});

  @override
  State<TheWest> createState() => _TheWestState();
}

class _TheWestState extends State<TheWest> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox()
        .DestinationBox('jimma'.tr(), 'assets/catagory/west/jimma.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/west/jimma.jpg',
              'jimma'.tr(),
              89,
              88,
              'dis_jimma'.tr(),
              '+25194324312'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'gambella_park'.tr(), 'assets/catagory/west/gambella.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/west/gambella.jpg',
              'gambella_park'.tr(),
              89,
              88,
              'dis_gambella_park'.tr(),
              '+25194324312'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'kafa'.tr(), 'assets/catagory/west/gambella.jpg', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/west/gambella.jpg',
              'kafa'.tr(),
              89,
              88,
              'dis_kafa'.tr(),
              '+25194324312'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'chebera_churchura'.tr(), 'assets/catagory/west/chebera.png', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/west/chebera.png',
              'chebera_churchura'.tr(),
              89,
              88,
              'dis_chebera'.tr(),
              '+25194324312'),
        ),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'wonchi'.tr(), 'assets/catagory/west/chebera.png', '', () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ParkBody(
              context,
              'assets/catagory/west/chebera.png',
              'wonchi'.tr(),
              89,
              88,
              'dis_wonchi'.tr(),
              '+251943888012'),
        ),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('west'.tr()),
        backgroundColor: const Color(0xff1c1c1c),
        foregroundColor: Color(0xffd27504),
      ),
      body: GridView.builder(
        itemCount: widgetList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // 2 columns
          mainAxisSpacing: 10.0, // Spacing between rows
          // childAspectRatio: 2,
          childAspectRatio: 1.7,
          //// Width/Height rat
        ),
        itemBuilder: (context, index) {
          return widgetList[index];
        },
      ),
    );
  }
}
