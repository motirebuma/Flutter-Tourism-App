import 'package:alobawa/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:alobawa/screens/menu/calendar.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/welcome.dart';

import '../routes/route.dart' as route;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Icon(Icons.send), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      //floating action button location to left

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.redAccent,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 90),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.print,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        // centerTitle: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/appbar.png',
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    showMenu(
                      context: context,
                      color: Colors.black87.withOpacity(0.8),
                      position: RelativeRect.fromLTRB(
                        0,
                        kToolbarHeight,
                        // MediaQuery.of(context).size.width - 50.0,
                        MediaQuery.of(context).size.width * 0.5,
                        0,
                      ),
                      items: [
                        PopupMenuItem(
                          child: Row(),
                        ),
                        PopupMenuItem(
                          value: 1,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  FaIcon(
                                    FontAwesomeIcons.calendar,
                                    color: Color(0xffd27405),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Ethiopian Calander',
                                    style: TextStyle(
                                      color: Color(0xffd27405),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.edit_calendar_sharp,
                                    color: Color(0xffd27405),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Calander Conversion',
                                    style: TextStyle(
                                      color: Color(0xffd27405),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  FaIcon(
                                    FontAwesomeIcons.rotate,
                                    color: Color(0xffd27405),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Currency Exchange',
                                    style: TextStyle(
                                      color: Color(0xffd27405),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.language_sharp,
                                    color: Color(0xffd27405),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Change Language',
                                    style: TextStyle(
                                      color: Color(0xffd27405),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.info,
                                    color: Color(0xffd27405),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'About',
                                    style: TextStyle(
                                      color: Color(0xffd27405),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // const PopupMenuItem(
                        //   child: Expanded(
                        //     child: SizedBox(
                        //       height: 700,
                        //     ),
                        //   ),
                        //   // value: 4,
                        // ),
                      ],
                    ).then((value) {
                      switch (value) {
                        case 1:
                          Navigator.pushNamed(context, route.calendar);
                          break;
                        case 2:
                          Navigator.pushNamed(context, route.calenderConverter);
                          break;
                        case 3:
                          Navigator.pushNamed(context, route.currency);
                          break;
                        case 4:
                          Navigator.pushNamed(context, route.home_page);
                          break;
                        case 5:
                          Navigator.pushNamed(context, route.about);
                          break;
                      }
                    });
                  },
                  icon: Icon(Icons.menu),
                  color: Color(0xffd27405),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  child: const Text(
                    'Find your favorite place',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffd27405),
                      fontFamily: 'Poppins',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      // body
      body: Container(
        color: Colors.white,
        child: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/bg.png'),
          //     fit: BoxFit.cover,
          //   ),
          //   color: Colors.white,
          // ),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(2.0),
            children: <Widget>[
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // addis abeba
                  // placeBox('assets/places/aa.jpg',
                  // 'Addis Abeba and its surrounding', Addis()),
                  // Northern
                  // placeBox('assets/places/north.jpg', 'Historic North', Park()),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // southern
                  // placeBox(
                  // 'assets/places/southern.jpg', 'Cultural South', Addis()),
                  // eastern
                  // placeBox(
                  // 'assets/places/eastern.png', 'Nature of East', Addis()),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // placeBox(
                  // 'assets/places/southern.jpg', 'Cultural South', Addis()),
                  // placeBox(
                  // 'assets/places/eastern.png', 'Nature of East', Addis()),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // placeBox(
                  // 'assets/places/north.jpg', 'Cultural South', Addis()),
                  // placeBox(
                  // 'assets/places/southern.jpg', 'Nature of East', Addis()),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // placeBox(
                  // 'assets/places/north.jpg', 'Cultural South', Addis()),
                  // placeBox(
                  // 'assets/places/southern.jpg', 'Nature of East', Addis()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
