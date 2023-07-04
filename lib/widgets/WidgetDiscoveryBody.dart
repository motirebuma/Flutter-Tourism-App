import 'package:alobawa/screens/park/comment.dart';
import 'package:alobawa/widgets/WidgetDiscription.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../routes/route.dart' as route;
import '../screens/googleMap.dart';
import 'WidgetMap.dart';

Widget ParkBody(context, img, String? name, double lat, double log,
    String? discription, String phone) {
  return Scaffold(
    body: Container(
      // color: Colors.grey.shade300,
      color: const Color(0xff1c1c1c),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(img!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            name!,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              color: Color(0xffd27405),
              fontFamily: 'Poppins',
            ),
            textAlign: TextAlign.left,
          ),
          //
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              discription!,
              style: const TextStyle(
                fontSize: 15.0,
                // color: Colors.black,
                color: Color(0xffd27405),
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          getLocation(context, 12.0309, 39.0476),
                    ),
                  );
                },
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.location,
                      color: const Color(0xffd27405),
                      size: 45,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Map',
                      style: TextStyle(
                        color: Color(0xffd27405),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('hello2');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.phone,
                      color: const Color(0xffd27405),
                      size: 45,
                    ),
                    const Text(
                      'phone',
                      style: TextStyle(
                        color: Color(0xffd27405),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                },
                child: Column(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.photoFilm,
                      color: Color(0xffd27405),
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Gallery',
                      style: TextStyle(
                        color: Color(0xffd27405),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Comment()),
                  );
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.message,
                      color: const Color(0xffd27405),
                      size: 45,
                    ),
                    const Text(
                      'Review',
                      style: TextStyle(
                        color: Color(0xffd27405),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // getLocation(context, 9.005401, 38.763611),
        ],
      ),
    ),
  );
}
