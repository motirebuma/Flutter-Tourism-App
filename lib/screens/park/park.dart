// import 'package:alobawa/widgets/WidgetDiscription.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../../routes/route.dart' as route;

// class Park extends StatefulWidget {
//   const Park({super.key});

//   @override
//   State<Park> createState() => _ParkState();
// }

// class _ParkState extends State<Park> {
//   Widget ParkBody(String? img, String? name, double lat, double log, String? discription,
//       String phone) {
//     return Scaffold(
//       body: PlaceDiscription().Discription(img, name, discription, lat, log)
//       // Container(
//       //   // color: Colors.grey.shade300,
//       //   color: Color(0xff1c1c1c),
//       //   child: Column(
//       //     children: [
//       //       Padding(
//       //         padding: const EdgeInsets.all(15.0),
//       //         child: Container(
//       //           height: 320,
//       //           decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(15),
//       //             image: DecorationImage(
//       //               image: AssetImage(img),
//       //               fit: BoxFit.cover,
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //       Text(
//       //         title,
//       //         style: const TextStyle(
//       //           fontSize: 25.0,
//       //           fontWeight: FontWeight.w600,
//       //           color: Color(0xffd27405),
//       //           fontFamily: 'Poppins',
//       //         ),
//       //         textAlign: TextAlign.left,
//       //       ),
//       //       Row(
//       //         mainAxisAlignment: MainAxisAlignment.center,
//       //         children: [
//       //           FaIcon(
//       //             FontAwesomeIcons.locationDot,
//       //             size: 12.0,
//       //           ),
//       //           SizedBox(
//       //             width: 5.0,
//       //           ),
//       //           Text(
//       //             location,
//       //             style: TextStyle(
//       //               fontSize: 13.0,
//       //               // fontWeight: FontWeight.w600,
//       //               color: Color(0xffd27405),
//       //               fontFamily: 'Poppins',
//       //             ),
//       //             textAlign: TextAlign.left,
//       //           ),
//       //         ],
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.all(15.0),
//       //         child: Text(
//       //           description,
//       //           style: TextStyle(
//       //             fontSize: 15.0,
//       //             // color: Colors.black,
//       //             color: Color(0xffd27405),
//       //             fontFamily: 'Poppins',
//       //           ),
//       //           textAlign: TextAlign.justify,
//       //         ),
//       //       ),
//       //       const SizedBox(
//       //         height: 20,
//       //       ),
//       //       Container(
//       //         height: 60,
//       //         width: 300,
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.circular(20),
//       //           color: Colors.grey.shade300,
//       //           boxShadow: [
//       //             BoxShadow(
//       //               color: Colors.grey.withOpacity(0.5),
//       //               spreadRadius: 5,
//       //               blurRadius: 7,
//       //               offset: const Offset(0, 3),
//       //             ),
//       //           ],
//       //         ),
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: [
//       //             const Text(
//       //               '18°c',
//       //               style: TextStyle(
//       //                 fontFamily: 'Poppins',
//       //                 fontSize: 35.0,
//       //                 fontWeight: FontWeight.w500,
//       //               ),
//       //             ),
//       //             Column(
//       //               mainAxisAlignment: MainAxisAlignment.center,
//       //               children: [
//       //                 Row(
//       //                   mainAxisAlignment: MainAxisAlignment.center,
//       //                   children: [
//       //                     Text(
//       //                       rating.toString(),
//       //                       style: TextStyle(
//       //                         fontFamily: 'Poppins',
//       //                         fontSize: 16,
//       //                         fontWeight: FontWeight.w600,
//       //                       ),
//       //                     ),
//       //                     const SizedBox(
//       //                       width: 4,
//       //                     ),
//       //                     Rating(rating),
//       //                   ],
//       //                 ),
//       //                 Text(
//       //                   '$numberOfReview Customers reviwes',
//       //                   style: TextStyle(
//       //                     fontFamily: 'Poppins',
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       const SizedBox(
//       //         height: 100,
//       //       ),
//       //       Container(
//       //         height: 50,
//       //         width: 340,
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.circular(20),
//       //           color: Colors.black,
//       //           // boxShadow: [
//       //           //   BoxShadow(
//       //           //     color: Colors.grey.withOpacity(0.5),
//       //           //     spreadRadius: 5,
//       //           //     blurRadius: 7,
//       //           //     offset: Offset(0, 3),
//       //           //   ),
//       //           // ],
//       //         ),
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: [
//       //             const IconButton(
//       //               // onPressed: () async {
//       //               //   var url = mapLink;
//       //               //   if (await launch(url)) {
//       //               //     await launch(url);
//       //               //   } else {
//       //               //     throw 'Could not launch $url';
//       //               //   }
//       //               // },
//       //               // TODO IMPLEMENT MAP
//       //               onPressed: null,
//       //               icon: FaIcon(
//       //                 FontAwesomeIcons.map,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () {
//       //                 // replace from db
//       //                 _launchPhoneDialer(phone);
//       //               },
//       //               icon: const FaIcon(
//       //                 FontAwesomeIcons.phone,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () =>
//       //                   Navigator.pushNamed(context, route.gallery),
//       //               icon: FaIcon(
//       //                 FontAwesomeIcons.photoFilm,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: (() =>
//       //                   Navigator.pushNamed(context, route.comment)),
//       //               icon: const FaIcon(
//       //                 FontAwesomeIcons.comment,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       )
//           // ],
//         // ),
      
//     );
//   }

//   // Rating(rate) {
//   //   if (rate == 1) {
//   //     return Row(
//   //       children: const [
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //         ),
//   //       ],
//   //     );
//   //   }
//   //   if (rate == 2) {
//   //     return Row(
//   //       children: const [
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //         ),
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //         ),
//   //       ],
//   //     );
//   //   }
//   //   if (rate == 3) {
//   //     return Row(
//   //       children: const [
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //           color: Color(0xffd27405),
//   //         ),
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //           color: Color(0xffd27405),
//   //         ),
//   //         FaIcon(
//   //           FontAwesomeIcons.solidStar,
//   //           size: 14,
//   //           color: Color(0xffd27405),
//   //         ),
//   //         FaIcon(
//   //           FontAwesomeIcons.star,
//   //           size: 14,
//   //           color: Color(0xffd27405),
//   //         ),
//   //         FaIcon(
//   //           FontAwesomeIcons.star,
//   //           size: 14,
//   //           color: Color(0xffd27405),
//   //         ),
//   //       ],
//   //     );
//   //   }
//   // }

//   // void _launchPhoneDialer(String phoneNumber) async {
//   //   final String phoneUrl = 'tel:$phoneNumber';
//   //   if (await canLaunch(phoneUrl)) {
//   //     await launch(phoneUrl);
//   //   } else {
//   //     throw 'Could not launch $phoneUrl';
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PlaceDiscription().Discription(img, name, discription, lat, log)
//       // Container(
//       //   // color: Colors.grey.shade300,
//       //   color: Color(0xff1c1c1c),
//       //   child: Column(
//       //     children: [
//       //       Padding(
//       //         padding: const EdgeInsets.all(15.0),
//       //         child: Container(
//       //           height: 320,
//       //           decoration: BoxDecoration(
//       //             borderRadius: BorderRadius.circular(15),
//       //             image: DecorationImage(
//       //               image: AssetImage(img),
//       //               fit: BoxFit.cover,
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //       Text(
//       //         title,
//       //         style: const TextStyle(
//       //           fontSize: 25.0,
//       //           fontWeight: FontWeight.w600,
//       //           color: Color(0xffd27405),
//       //           fontFamily: 'Poppins',
//       //         ),
//       //         textAlign: TextAlign.left,
//       //       ),
//       //       Row(
//       //         mainAxisAlignment: MainAxisAlignment.center,
//       //         children: [
//       //           FaIcon(
//       //             FontAwesomeIcons.locationDot,
//       //             size: 12.0,
//       //           ),
//       //           SizedBox(
//       //             width: 5.0,
//       //           ),
//       //           Text(
//       //             location,
//       //             style: TextStyle(
//       //               fontSize: 13.0,
//       //               // fontWeight: FontWeight.w600,
//       //               color: Color(0xffd27405),
//       //               fontFamily: 'Poppins',
//       //             ),
//       //             textAlign: TextAlign.left,
//       //           ),
//       //         ],
//       //       ),
//       //       Padding(
//       //         padding: const EdgeInsets.all(15.0),
//       //         child: Text(
//       //           description,
//       //           style: TextStyle(
//       //             fontSize: 15.0,
//       //             // color: Colors.black,
//       //             color: Color(0xffd27405),
//       //             fontFamily: 'Poppins',
//       //           ),
//       //           textAlign: TextAlign.justify,
//       //         ),
//       //       ),
//       //       const SizedBox(
//       //         height: 20,
//       //       ),
//       //       Container(
//       //         height: 60,
//       //         width: 300,
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.circular(20),
//       //           color: Colors.grey.shade300,
//       //           boxShadow: [
//       //             BoxShadow(
//       //               color: Colors.grey.withOpacity(0.5),
//       //               spreadRadius: 5,
//       //               blurRadius: 7,
//       //               offset: const Offset(0, 3),
//       //             ),
//       //           ],
//       //         ),
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: [
//       //             const Text(
//       //               '18°c',
//       //               style: TextStyle(
//       //                 fontFamily: 'Poppins',
//       //                 fontSize: 35.0,
//       //                 fontWeight: FontWeight.w500,
//       //               ),
//       //             ),
//       //             Column(
//       //               mainAxisAlignment: MainAxisAlignment.center,
//       //               children: [
//       //                 Row(
//       //                   mainAxisAlignment: MainAxisAlignment.center,
//       //                   children: [
//       //                     Text(
//       //                       rating.toString(),
//       //                       style: TextStyle(
//       //                         fontFamily: 'Poppins',
//       //                         fontSize: 16,
//       //                         fontWeight: FontWeight.w600,
//       //                       ),
//       //                     ),
//       //                     const SizedBox(
//       //                       width: 4,
//       //                     ),
//       //                     Rating(rating),
//       //                   ],
//       //                 ),
//       //                 Text(
//       //                   '$numberOfReview Customers reviwes',
//       //                   style: TextStyle(
//       //                     fontFamily: 'Poppins',
//       //                   ),
//       //                 ),
//       //               ],
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //       const SizedBox(
//       //         height: 100,
//       //       ),
//       //       Container(
//       //         height: 50,
//       //         width: 340,
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.circular(20),
//       //           color: Colors.black,
//       //           // boxShadow: [
//       //           //   BoxShadow(
//       //           //     color: Colors.grey.withOpacity(0.5),
//       //           //     spreadRadius: 5,
//       //           //     blurRadius: 7,
//       //           //     offset: Offset(0, 3),
//       //           //   ),
//       //           // ],
//       //         ),
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: [
//       //             const IconButton(
//       //               // onPressed: () async {
//       //               //   var url = mapLink;
//       //               //   if (await launch(url)) {
//       //               //     await launch(url);
//       //               //   } else {
//       //               //     throw 'Could not launch $url';
//       //               //   }
//       //               // },
//       //               // TODO IMPLEMENT MAP
//       //               onPressed: null,
//       //               icon: FaIcon(
//       //                 FontAwesomeIcons.map,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () {
//       //                 // replace from db
//       //                 _launchPhoneDialer(phone);
//       //               },
//       //               icon: const FaIcon(
//       //                 FontAwesomeIcons.phone,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: () =>
//       //                   Navigator.pushNamed(context, route.gallery),
//       //               icon: FaIcon(
//       //                 FontAwesomeIcons.photoFilm,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //             IconButton(
//       //               onPressed: (() =>
//       //                   Navigator.pushNamed(context, route.comment)),
//       //               icon: const FaIcon(
//       //                 FontAwesomeIcons.comment,
//       //                 color: Color(0xffd27405),
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       )
//           // ],
//         // ),
      
//     );
//   }
// }
