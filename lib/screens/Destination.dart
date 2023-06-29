import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Destination extends StatefulWidget {
  const Destination({super.key});

  @override
  State<Destination> createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            // width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/places/south.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1.5, color: Colors.amber.shade900),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello World!',
                        style: TextStyle(
                          // color: Color(0xffd27405),
                          color: Colors.amber.shade900,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(
                    'lorem ipsum dse seyfe isfd hwoeo dfeh oh sfe sdfei helo sfeo kildfe if kilsl llo hadf',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                    ),
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
