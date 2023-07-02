import 'package:flutter/material.dart';

class WidgetCategoryBox {
  Widget placeBox(String img, String name, void Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              // padding: const EdgeInsets.only(
              //     top: 10, left: 10, right: 10, bottom: 0),

              height: 140,
              //! width: 160,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //       color: Color(0xffd27405),
                //       offset: Offset(0, 2),
                //       blurRadius: 3)
                // ],
                border: Border.all(
                  width: 1,
                  color: const Color(0xffd27405),
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(55, 12, 12, 12),
                      Color.fromARGB(164, 28, 28, 28),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
