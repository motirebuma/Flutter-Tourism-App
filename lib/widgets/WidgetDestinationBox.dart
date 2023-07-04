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
              width: 1,
              color: Color(0xffd27405),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(113, 28, 28, 28),
                  Color(0xff1c1c1c),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
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
                      color: Color(0xffAA957C),
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
      ),
    );
  }
}
