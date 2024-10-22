import 'package:abushakir/abushakir.dart';
import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/Destination.dart';
import 'package:alobawa/screens/catagories/Eastern.dart';
import 'package:alobawa/screens/catagories/Northern.dart';
import 'package:alobawa/screens/catagories/Southern.dart';
import 'package:alobawa/screens/catagories/Western.dart';
import 'package:alobawa/screens/menu/calendar.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:alobawa/screens/placesScreen.dart';
import 'package:alobawa/screens/welcome.dart';
import 'package:alobawa/widgets/WidgetCatagoryBox.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../routes/route.dart' as route;

class OldHomeScreen extends StatefulWidget {
  const OldHomeScreen({super.key});

  @override
  State<OldHomeScreen> createState() => _OldHomeScreenState();
}

class _OldHomeScreenState extends State<OldHomeScreen> {
  // catagoryWidgets.add(Text('Widget 1'));

  @override
  Widget build(BuildContext context) {
    // Catagory widgets
    List<Widget> catagoryWidgets = [];

    // catagoryWidgets.add(widgetCatagoryBox().placeBox('assets/places/aa.jpg', c, route);
    // catagories
    // * Addis Ababa
    catagoryWidgets.add(WidgetCategoryBox().placeBox(
        'assets/places/addis.jpg', 'Addis Ababa and its surrounding', () {
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
        .placeBox('assets/places/coffee.jpeg', 'Western', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TheWest()),
      );
    }));
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/places/coffee.jpeg', 'The Coffee Routes', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Addis()),
      );
    }));
    catagoryWidgets.add(WidgetCategoryBox()
        .placeBox('assets/places/southern.jpg', 'Addis Ababa', () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    }));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        backgroundColor: Color(0xffd27405),
        onPressed: () {
          //code to execute on button press
          OldHomeScreen();
        },
        child: Icon(
          Icons.home,
          color: Color(0xff1c1c1c),
        ), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      //floating action button location to left

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Color(0xff1c1c1c),
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 90),
              child: IconButton(
                icon: Icon(
                  Icons.calendar_month,
                  color: Color(0xffd27405),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, route.calendar);
                },
              ),
            ),
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.moneyBillTrendUp,
                color: Color(0xffd27405),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, route.currency);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 200,
        // centerTitle: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/appbar.png',
            fit: BoxFit.cover,
          ),
        ),
        automaticallyImplyLeading: false,
        //
        title: Column(
          children: [
            Row(
              children: [
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xffd27405),
                        size: 35,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
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
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          // Set the transparency here
          canvasColor: Color.fromARGB(139, 0, 0, 0),
        ),
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
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
                title: const Text(
                  'Change Language',
                  style: TextStyle(
                    color: Color(0xffd27405),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Color(0xffd27405),
                  size: 18,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(
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
      body: GridView.builder(
        itemCount: catagoryWidgets.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
        ),
        itemBuilder: (context, index) {
          return catagoryWidgets[index];
        },
      ),
    );
  }
}
