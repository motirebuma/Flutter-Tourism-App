import 'package:alobawa/screens/Addis.dart';
import 'package:alobawa/screens/Home.dart';
import 'package:alobawa/screens/homeScreen.dart';
import 'package:alobawa/screens/homeScreenOld.dart';
import 'package:alobawa/screens/mapShow.dart';
import 'package:alobawa/screens/menu/calendar.dart';
import 'package:alobawa/screens/menu/currencyConverter.dart';
// import 'package:alobawa/screens/menu/currencyScreen.dart';
import 'package:flutter/material.dart';
// import 'package:trusim_app/pages/Addis.dart';
// import 'package:trusim_app/pages/mapTest.dart';
// import 'package:trusim_app/pages/menu/about.dart';
// import 'package:trusim_app/pages/park/GalleryScreen.dart';
// import 'package:trusim_app/pages/park/comment.dart';
// import 'package:trusim_app/pages/park/park.dart';
// import 'package:trusim_app/pages/park/write_review.dart';

// import '../pages/welcome.dart';

// import '../pages/home_page.dart';

// menu options

// import '../pages/menu/calendar.dart';
// import '../pages/menu/calender_converter.dart';

// Route Names
const String welcome = "welcome";
const String home_page = "home_page";
const String homePage = "homePage";
const String addis = "addis";

// menu options
const String calendar = "calendar";
const String calenderConverter = "calenderConverter";
const String currency = "currency";
const String about = "about";

// park
const String park = "park";
const String comment = "comment";
const String writeReview = "writeReview";
const String gallery = "gallery";

// google map
const String googleMap = "googleMap";
const String home = "home";

// const String calender = "calender";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    // ! Home
    case home:
      return MaterialPageRoute(builder: (context) => Home());

    // case welcome:
    //   return MaterialPageRoute(builder: (context) => Welcome());
    // case home_page:
    //   return MaterialPageRoute(builder: (context) => HomePage());
    case homePage:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case addis:
      return MaterialPageRoute(builder: (context) => Addis());

    // // menu options
    case calendar:
      return MaterialPageRoute(builder: (context) => CalendarPage());
    // case calenderConverter:
    //   return MaterialPageRoute(builder: (context) => CalendarConverter());
    case currency:
      return MaterialPageRoute(builder: (context) => Currency());
    // case about:
    //   return MaterialPageRoute(builder: (context) => About());

    // case example:
    //   return MaterialPageRoute(builder: (context) => ExampleWidget());

    // // park
    // case park:
    //   return MaterialPageRoute(builder: (context) => Park());
    // case comment:
    //   return MaterialPageRoute(builder: (context) => Comment());
    // case writeReview:
    //   return MaterialPageRoute(builder: (context) => WriteReviews());
    // case gallery:
    //   return MaterialPageRoute(builder: (context) => GalleryScreen());

    // googleMap
    case googleMap:
      return MaterialPageRoute(builder: (context) => const MapSample());

    default:
      throw ('Page not found!');
  }
}
