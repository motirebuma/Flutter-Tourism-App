// ignore: file_names
import 'dart:async';

import 'package:alobawa/screens/catagories/Eastern.dart';
import 'package:alobawa/screens/catagories/Northern.dart';
import 'package:alobawa/screens/catagories/Southern.dart';
import 'package:alobawa/screens/catagories/Western.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetDiscover.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../lang/localization_checker.dart';
import '../routes/route.dart' as route;
import 'Addis.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<String> _image = [
    'assets/catagory/addis/addis.jpg',
    'assets/catagory/south/omovalley.jpg',
    'assets/catagory/south/nechsar.jpg',
    'assets/catagory/north/alnegash.jpg',
    'assets/catagory/north/lalibela.jpg',
  ];
  final List<String> _title = [
    'Addis Abeba',
    'Omo Valley',
    'Nechsar',
    'Al-Negash',
    'Lalibela'
  ];
  final List<String> _description = [
    'Addis Abeba is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    'Omo Valley is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    'Nechsar is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    'Al-Negash is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    'Lalibela is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
  ];

  @override
  void initState() {
    super.initState();
    // Set up a timer that will change the content every 3 seconds
    Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _image.length;
      });
    });
  }

  Widget build(BuildContext context) {
    List<Widget> catagoryWidgets = [];

    // catagoryWidgets.add(widgetCatagoryBox().placeBox('assets/places/aa.jpg', c, route);
    // catagories
    // * Addis Ababa
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/catagory/addis/addis.jpg', 'Addis Ababa', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Addis()),
      );
    }));
    //! The North
    catagoryWidgets.add(
        WidgetCategoryBox().placeBox('assets/places/north.jpg', 'Northern', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TheNorth()),
      );
    }));
    catagoryWidgets.add(
        WidgetCategoryBox().placeBox('assets/places/south.jpg', 'Southern', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TheSouth()),
      );
    }));
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/places/east.jpg', 'Nature of East', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TheEast()),
      );
    }));
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/places/east.jpg', 'Afar Triangle', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TheEast()),
      );
    }));
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/places/coffee.jpeg', 'Western', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TheWest()),
      );
    }));

    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),

      appBar: AppBar(
        backgroundColor: const Color(0xff1c1c1c),
        // backgroundColor: Colors.white,
        // backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Color(0xffd27405),
        // title: const Text('Home'),
        // centerTitle: true,
        // title: WidgetDiscoverBox().discoverBox(_title[_currentIndex],
        //     _image[_currentIndex], _description[_currentIndex], () {}),
        toolbarHeight: 270,
        flexibleSpace: WidgetDiscoverBox().discoverBox(_title[_currentIndex],
            _image[_currentIndex], _description[_currentIndex], () {}),
        leading: Column(
          children: [
            Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 35,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      // drawer
      drawer: Theme(
        data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Color.fromARGB(139, 0, 0, 0),
        ),
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            // padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 150,
              ),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.calendar,
                  color: Color(0xffd27405),
                  size: 18,
                ),
                title: const Text(
                  'Ethiopian Calendar',
                  style: TextStyle(
                    color: Color(0xffd27405),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, route.calendar);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.edit_calendar_sharp,
                  color: Color(0xffd27405),
                  size: 18,
                ),
                title: const Text(
                  'Calender Conversion',
                  style: TextStyle(
                    color: Color(0xffd27405),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, route.calendar);
                },
              ),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.rotate,
                    color: Color(0xffd27405),
                    size: 18,
                  ),
                  title: const Text(
                    'Currency Exchange',
                    style: TextStyle(
                      color: Color(0xffd27405),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, route.currency);
                  }),
              ListTile(
                leading: const Icon(
                  Icons.language_sharp,
                  color: Color(0xffd27405),
                  size: 18,
                ),
                title: Text(
                  'change_language'.tr(),
                  style: TextStyle(
                    color: Color(0xffd27405),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  LocalizationChecker.changeLanguge(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Color(0xffd27405),
                  size: 18,
                ),
                title: Text(
                  'about'.tr(),
                  style: const TextStyle(
                    color: Color(0xffd27405),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   // width: MediaQuery.of(context).size.width,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         WidgetDiscoverBox().discoverBox(
          //             'test',
          //             'assets/catagory/south/omovalley.jpg',
          //             'hello friend, hello friend thats lame',
          //             () {}),
          //         WidgetDiscoverBox().discoverBox(
          //             'test',
          //             'assets/catagory/south/omo.jpg',
          //             'hello friend, hello friend thats lame',
          //             () {}),
          //         WidgetDiscoverBox().discoverBox(
          //             'test',
          //             'assets/catagory/south/omovalley.jpg',
          //             'hello friend, hello friend thats lame',
          //             () {})
          //       ],
          //     ),
          //   ),
          // ),
          // const Text(
          //   'Top Rated',
          //   style: TextStyle(
          //       color: Color(0xffd27405),
          //       fontFamily: 'Poppins',
          //       fontWeight: FontWeight.w500,
          //       fontSize: 24),
          //   textAlign: TextAlign.left,
          // ),
          // WidgetDiscoverBox().discoverBox(_title[_currentIndex],
          //     _image[_currentIndex], _description[_currentIndex], () {}),
          const Text(
            'Discover Ethiopia',
            style: TextStyle(
                color: Color(0xffd27405),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
          Expanded(
            // child: GridView.builder(
            //   itemCount: catagoryWidgets.length,
            //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 300.0, // Maximum width for larger items
            //     mainAxisSpacing: 10.0, // Spacing between rows
            //     crossAxisSpacing: 10.0, // Spacing between columns
            //     childAspectRatio: 1.0, // Width/Height ratio
            //   ),
            //   itemBuilder: (context, index) {
            //     if (index % 2 == 0) {
            //       // Even index, use the larger item size
            //       return SizedBox(
            //         height: 400.0,
            //         child: catagoryWidgets[index],
            //       );
            //     } else {
            //       // Odd index, use the smaller item size
            //       return SizedBox(
            //         height: 200.0,
            //         child: catagoryWidgets[index],
            //       );
            //     }
            //   },
            // ),
            child: GridView.builder(
              itemCount: catagoryWidgets.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
                // crossAxisSpacing: 0,
                mainAxisSpacing: 2,

                /// Spacing between rows
                // crossAxisSpacing: 10.0, // Spacing between columns
                childAspectRatio: 1.4, // Width/Height rat
              ),
              itemBuilder: (context, index) {
                return catagoryWidgets[index];
              },
            ),
            // child: StaggeredGridView.countBuilder(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 8,
            //   mainAxisSpacing: 8,
            //   itemCount: catagoryWidgets.length,
            //   staggeredTileBuilder: (index) {
            //     if (index == 0) {
            //       return StaggeredTile.fit(1);
            //     } else {
            //       return StaggeredTile.extent(
            //           1, 2 * MediaQuery.of(context).size.width / 3);
            //     }
            //   },
            //   itemBuilder: (context, index) => catagoryWidgets[index],
            // ),
          ),
        ],
      ),
    );
  }
}
