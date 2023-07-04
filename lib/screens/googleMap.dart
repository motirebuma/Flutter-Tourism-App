import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(9.005401, 38.763611),
    zoom: 14.4746,
  );
  MapType _selectedMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1c1c),
        foregroundColor: Color(0xffd17504),
        centerTitle: true,
        title: Text('location'),
        actions: [
          PopupMenuButton<MapType>(
            icon: const Icon(
              Icons.layers,
              color: Color(0xffd17504),
            ),
            color: Color(0xffd17504),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MapType>>[
              const PopupMenuItem<MapType>(
                value: MapType.normal,
                child: Text('Normal'),
              ),
              const PopupMenuItem<MapType>(
                value: MapType.satellite,
                child: Text('Satellite'),
              ),
              const PopupMenuItem<MapType>(
                value: MapType.hybrid,
                child: Text('Hybrid'),
              ),
              const PopupMenuItem<MapType>(
                value: MapType.terrain,
                child: Text('Terrain'),
              ),
            ],
            onSelected: (MapType value) {
              setState(() {
                _selectedMapType = value;
              });
            },
          )
        ],
      ),
      body: GoogleMap(
        mapType: _selectedMapType,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
