// import 'package:flutter/material.dart';

// class widgetCatagoryBox {
//   Widget placeBox(String img, String name, Widget router) {
//     return Container(
//       padding: const EdgeInsets.only(top: 10.0),
//       height: 200,
//       width: 180,
//       // color: Colors.pink,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: const Offset(0, 3),
//           ),
//         ],
//         color: Colors.white,
//       ),
//       child: GestureDetector(
//         // onTap: () {
//         //   Navigator.push(
//         //     context,
//         //     PageRouteBuilder(
//         //       transitionDuration: Duration(milliseconds: 500),
//         //       pageBuilder: (context, animation, secondaryAnimation) => router,
//         //       transitionsBuilder:
//         //           (context, animation, secondaryAnimation, child) {
//         //         return ScaleTransition(
//         //           scale: Tween<double>(begin: 0.0, end: 1.0).animate(
//         //             CurvedAnimation(
//         //               parent: animation,
//         //               curve: Curves.fastOutSlowIn,
//         //             ),
//         //           ),
//         //           child: child,
//         //         );
//         //       },
//         //     ),
//         //   );
//         // },
//         onTap: () {
//           router;
//         },
//         child: Column(
//           children: [
//             Container(
//               height: 120,
//               width: 160,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: AssetImage(img),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Center(
//                 child: Text(
//                   name,
//                   style: const TextStyle(
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xffd27405),
//                     fontFamily: 'Poppins',
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class WidgetCategoryBox {
  Widget placeBox(String img, String name, void Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // padding: const EdgeInsets.only(top: 5.0),
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),

        // height: 250,
        // ! width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 0),

                height: 140,
                //! width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffd27405),
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
