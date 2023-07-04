import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Widget getLocation(context, double lat, double log) {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(lat, log),
    zoom: 14.4746,
  );
  MapType _selectedMapType = MapType.normal;
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xff1c1c1c),
      foregroundColor: Color(0xffd17504),
      centerTitle: true,
      title: Text('Map'),
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
            // setState(() {
            //   _selectedMapType = value;
            // });
            _selectedMapType = value;
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
