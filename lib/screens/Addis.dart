import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/widgets/WidgetPlaceBox.dart';
import 'package:flutter/material.dart';
// import 'package:alobawa/screens/mapTest.dart';
import 'package:alobawa/screens/park/park.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../routes/route.dart' as route;
import 'googleMap.dart';
import 'package:easy_localization/easy_localization.dart';
import '../lang/localization_checker.dart';

class Addis extends StatefulWidget {
  const Addis({super.key});

  @override
  State<Addis> createState() => _AddisState();
}

class _AddisState extends State<Addis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
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
        color: const Color(0xff1c1c1c),
        // color: Color(0xff444444),

        child: ListView(
          shrinkWrap: true,
          // padding: EdgeInsets.all(2.0),
          children: <Widget>[
            // const SizedBox(
            //   height: 25.0,
            // ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'dis_addis'.tr(),
                    style: TextStyle(
                      color: Color(0xffd27504),
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
                          // MaterialStateProperty.all(Colors.white),
                          MaterialStateProperty.all(
                        const Color(0xffd27504),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.black,
                        // foregroundColor: MaterialStateProperty.all(
                        //   Color(0xffd27405),
                      ),
                    ),
                    child: Container(
                      // color: Colors.white,
                      child: GestureDetector(
                        onTap: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapScreen()),
                            )),
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
                  padding: const EdgeInsets.all(2.0),
                  children: const <Widget>[
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
                    'park'.tr(),
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
                  padding: const EdgeInsets.all(5.0),
                  // color: Colors.white,
                  height: 250,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/entoto.jpg', 'entoto '.tr(),
                            () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const Park()),
                          // );
                          null;
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/sheger.jpg',
                            'sheger_park '.tr(), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Addis()),
                          );
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/unity.jpg', 'unity '.tr(), () {
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
                    'church_mosque'.tr(),
                    style: TextStyle(
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
                            'assets/places/parks/entoto.jpg',
                            'mikael_church'.tr(), () {
                          null;
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/entoto.jpg', 'anwar'.tr(), () {
                          null;
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/entoto.jpg',
                            'maryam_church '.tr(), () {
                          null;
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
                    'museum'.tr(),
                    style: TextStyle(
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
                            'assets/places/parks/entoto.jpg',
                            'addis_ab_museum'.tr(), () {
                          null;
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/entoto.jpg',
                            'science_mesuem '.tr(), () {
                          null;
                        }),
                        const SizedBox(width: 15),
                        widgetPlaceBox().placeBox(
                            'assets/places/parks/entoto.jpg',
                            'national_museum '.tr(), () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const Addis()),
                          // );
                          null;
                        }),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
                // list view
              ],
            ),
          ],
        ),
      ),
    );
  }
}
