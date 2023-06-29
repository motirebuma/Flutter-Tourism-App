import 'package:flutter/material.dart';

class WidgetDestinationBox {
  Widget DestinationBox(
      String name, String img, String description, void Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1.5,
              color: Color(0xffd27405),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xffd27405),
                        // color: Colors.amber.shade900,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.justify,
                      // textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Text(
                  description,
                  style: const TextStyle(
                    // color: Color(0xffAA957C),
                    color: Colors.white70,
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
