import 'package:flutter/material.dart';

class widgetPlaceBox {
  Widget placeBox(String img, String name, void Function() onTap) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      height: 200,
      width: 180,
      // color: Colors.pink,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: Offset(0, 3),
        //   ),
        // ],
        color: Colors.white,
      ),
      child: GestureDetector(
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     PageRouteBuilder(
        //       transitionDuration: Duration(milliseconds: 500),
        //       pageBuilder: (context, animation, secondaryAnimation) => router,
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         return ScaleTransition(
        //           scale: Tween<double>(begin: 0.0, end: 1.0).animate(
        //             CurvedAnimation(
        //               parent: animation,
        //               curve: Curves.fastOutSlowIn,
        //             ),
        //           ),
        //           child: child,
        //         );
        //       },
        //     ),
        //   );
        // },
        // Todo implement ontap...
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 130,
              width: 160,
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
                    // color: Color(0xffd27405),
                    color: Colors.black,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
