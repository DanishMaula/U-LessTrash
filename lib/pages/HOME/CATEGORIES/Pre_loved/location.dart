import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.173110, 106.829361),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-6.173110, 106.829361),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Container(height: MediaQuery.of(context).size.height / 2.5),
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled:  true,
            zoomControlsEnabled: false, 
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            top: 50,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/ic_back.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: InkWell(
              onTap: () async {
                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newLatLng(
                    const LatLng(-6.241586, 106.992416)));
              },
              child: Image.asset(
                'assets/images/current_location.png',
                width: 60,
                height: 50,
              ),
            ),
          ),
          // make to middle of the map
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: MediaQuery.of(context).size.width / 2.5,

            child: Image.asset(
              'assets/images/ic_pin.png',
              width: 60,
              height: 60,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
