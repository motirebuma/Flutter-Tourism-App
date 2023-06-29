import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/screens/mapShow.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';
// import 'package:alobawa/screens/mapTest.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../routes/route.dart' as route;

class Addis extends StatefulWidget {
  const Addis({super.key});

  @override
  State<Addis> createState() => _AddisState();
}

class _AddisState extends State<Addis> {
  // map
  // void _openMaps() async {
  //   const String mapsUrl =
  //       'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126115.11523351159!2d38.7781448!3d8.96317685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x164b85cef5ab402d%3A0x8467b6b037a24d49!2sAddis%20Ababa%2C%20Ethiopia!5e0!3m2!1sen!2snl!4v1686486644281!5m2!1sen!2snl';
  //   if (await canLaunch(mapsUrl)) {
  //     await launch(mapsUrl);
  //   } else {
  //     throw 'Could not launch $mapsUrl';
  //   }
  // }

  // Widget placeBox(String img, String name, Widget router) {
  //   return Container(
  //     padding: EdgeInsets.only(top: 10.0),
  //     height: 200,
  //     width: 180,
  //     // color: Colors.pink,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       // boxShadow: [
  //       //   BoxShadow(
  //       //     color: Colors.grey.withOpacity(0.5),
  //       //     spreadRadius: 5,
  //       //     blurRadius: 7,
  //       //     offset: Offset(0, 3),
  //       //   ),
  //       // ],
  //       color: Colors.white,
  //     ),
  //     child: GestureDetector(
  //       onTap: () {
  //         Navigator.push(
  //           context,
  //           PageRouteBuilder(
  //             transitionDuration: Duration(milliseconds: 500),
  //             pageBuilder: (context, animation, secondaryAnimation) => router,
  //             transitionsBuilder:
  //                 (context, animation, secondaryAnimation, child) {
  //               return ScaleTransition(
  //                 scale: Tween<double>(begin: 0.0, end: 1.0).animate(
  //                   CurvedAnimation(
  //                     parent: animation,
  //                     curve: Curves.fastOutSlowIn,
  //                   ),
  //                 ),
  //                 child: child,
  //               );
  //             },
  //           ),
  //         );
  //       },
  //       child: Column(
  //         children: [
  //           Container(
  //             height: 130,
  //             width: 160,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(10),
  //               image: DecorationImage(
  //                 image: AssetImage(img),
  //                 fit: BoxFit.cover,
  //               ),
  //             ),
  //           ),
  //           Expanded(
  //             child: Center(
  //               child: Text(
  //                 name,
  //                 style: const TextStyle(
  //                   fontSize: 15.0,
  //                   fontWeight: FontWeight.w600,
  //                   // color: Color(0xffd27405),
  //                   color: Colors.black,
  //                   fontFamily: 'Poppins',
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // !! bottom app bar
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        backgroundColor: Color(0xffd27405),
        onPressed: () {
          //code to execute on button press
          Navigator.pushNamed(context, route.homePage);
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Navigator.pushNamed(context, route.currency);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.info,
                color: Color(0xffd27405),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.user,
                color: Color(0xffd27405),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      // !! bottom app bar
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        toolbarHeight: 250,
        title: Container(
          width: 300,
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/places/aa.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff444444),
        child: Container(
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/hm.jpg'),
              //   fit: BoxFit.cover,
              // ),
              // color: Colors.white
              ),
          child: ListView(
            shrinkWrap: true,
            // padding: EdgeInsets.all(2.0),
            children: <Widget>[
              // const SizedBox(
              //   height: 25.0,
              // ),
              Container(
                // color: Color(0xff444444),
                color: Colors.grey.shade200,
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/bg.png'),
                //     fit: BoxFit.cover,
                //   ),
                //   color: Colors.white,
                // ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Addis Ababa, the capital city of Ethiopia, is a vibrant and bustling metropolis located in the eastern part of Africa. Known as the diplomatic and economic hub of the country, it is situated at an elevation of around 2,400 meters (7,874 feet) in the highlands.',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 17.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ElevatedButton(
                        // onPressed: () => Navigator.pushNamed(context, route.quiz),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(
                            Colors.black,
                            // foregroundColor: MaterialStateProperty.all(
                            //   Color(0xffd27405),
                          ),
                        ),
                        child: Container(
                          // color: Colors.white,
                          child: GestureDetector(
                            // onTap: () async {
                            //   const url =
                            //       'https://goo.gl/maps/hsNT2uYRnREsdYHg9';
                            //   if (await launch(url)) {
                            //     await launch(url);
                            //   } else {
                            //     throw 'Could not launch $url';
                            //   }
                            // },
                            // TODO chage map
                            onTap: (() => MapSample()),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.map),
                                Text(
                                  'show on map',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(2.0),
                      children: <Widget>[
                        SizedBox(
                          height: 25.0,
                        ),
                      ],
                    ),
                    // list view
                    Container(
                      // color: Color(0xff1c1c1c),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Public Parks',
                        style: TextStyle(
                          // color: Colors.black,
                          color: Color(0xffd27405),
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      // color: Colors.white,
                      height: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/sheger.jpg', 'Sheger Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/unity.jpg', 'Unity Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                    // row scroll done!

                    // churchs and mosques
                    Container(
                      // color: Color(0xff1c1c1c),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Historic Churchs and Mosques',
                        style: TextStyle(
                          // color: Colors.white,
                          // color: Colors.black,

                          color: Color(0xffd27405),
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(5.0),
                      // color: Colors.white,
                      height: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),

                    // churchs and mosques
                    Container(
                      // color: Color(0xff1c1c1c),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'Museums',
                        style: TextStyle(
                          // color: Colors.white,
                          // color: Colors.black,

                          color: Color(0xffd27405),
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(5.0),
                      height: 250,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Park()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                            widgetPlaceBox().placeBox(
                                'assets/places/parks/entoto.jpg', 'Entoto Park',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Addis()),
                              );
                            }),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                    // list view
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
