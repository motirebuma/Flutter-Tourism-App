import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';

import '../../widgets/WidgetDestinationBox.dart';
import '../../widgets/WidgetDestinationBox.dart';

class TheWest extends StatefulWidget {
  const TheWest({super.key});

  @override
  State<TheWest> createState() => _TheWestState();
}

class _TheWestState extends State<TheWest> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Jimma',
        'assets/wal.jpg',
        'jimma is lorem ipusm the jimma man lorem ipsum man wagawan man llorem ipsum sdfjl sdf',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Gambella National Park',
        'assets/places/addis.jpg',
        'the gambella national parkf saisadf lopre fisum fasloer fasjel asjfeifea flakfjeia fejl dsjfoei jsajhfd.',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Kafa Biospher reserver',
        'assets/places/north.jpg',
        'Kafa Biospher reserver of lorem ipsum known for its man wagawan man, if we if we rule lablab wuha in every bowanbowa.',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Chebear Churchura Natioal Park',
        'assets/wal.jpg',
        'Chebear Churchura Natioal Park dsjf lorem ipsum chebera churchura national park man wagawan man.',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    widgetList.add(WidgetDestinationBox().DestinationBox(
        'Wanchi Lake',
        'assets/wal.jpg',
        'Wanchi Lake lorepsaf ljeij fakjeijf aejijd kfjei ksdjfioe fsjfoiejfkejidjfkl lkdsjfoiej kljdfoiej fskdj',
        () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OldHomeScreen()),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      appBar: AppBar(
        centerTitle: true,
        title: Text('The West'),
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
