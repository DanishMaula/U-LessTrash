import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/preloved/add_details.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/process/set_address.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/cart/checkout_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/filter/filter_page.dart';
import 'package:u_less_trash/utils/text_style.dart';

class MapSample extends StatefulWidget {
  final String text;
  const MapSample({super.key, required this.text});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  String locationClicked =
      'Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel';
  String locationUnClicked = 'Set Location';

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.173110, 106.829361),
    zoom: 14.4746,
  );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(-6.178763, 107.065758),
  //     tilt: 59.440717697143555,
  //     zoom: 25.151926040649414);jj

  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(-6.173110, 106.829361), zoom: 14.4746);

  @override
  Widget build(BuildContext context) {
    getDataFromDifScreen() {
      if (widget.text == 'checkout') {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CheckoutPage(
            text: 'checkout',
          );
        }));
      } else if (widget.text == 'setAddress') {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SetAddress(text: 'setAddress');
        }));
      } else if (widget.text == 'addDetails') {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AddDetails(
            text: 'addDetails',
          );
        }));
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const FilterPage(text: 'miqdad');
        }));
      }
    }

    // send data to filter page
    // void sendData(context) {
    //   String textToSend = 'miqdad';

    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => FilterPage(
    //               text: textToSend,
    //             )),
    //   );
    // }

    return SafeArea(
      child: Scaffold(
        // Bottom Navigation Bar
        bottomNavigationBar: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 15, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/line.png',
                        width: 40,
                        height: 5,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      // 'Select a Pick Up Adress',
                      'Select a Pick Up Address',
                      style: selectAdd,
                    ),

                    const SizedBox(height: 5),
                    // make text with different colour
                    Text.rich(
                      TextSpan(
                        text:
                            'ReWaste\'s current operational locations are available in the regions:',
                        style: textSpan1,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                              text:
                                  ' Tangerang City, Tangerang Regency, South Tangerang City, Bekasi, Bekasi City, South Jakarta, Central Jakarta, North Jakarta, East Jakarta, West Jakarta, Depok',
                              style: textSpan2),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffE5E5E5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/ic_location.png',
                                width: 16,
                                height: 20,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                locationUnClicked,
                                style: locationUnClicked == 'Set Location'
                                    ? hintStyle
                                    : currentLocationClicked,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // set location button
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minWidth: MediaQuery.of(context).size.width,
                      height: 40,
                      color: const Color(0xff2D8D7B),
                      onPressed: () {
                        if (locationUnClicked == 'Set Location') {
                          print('set location first');
                        } else {
                          getDataFromDifScreen();
                        }
                      },
                      child: Text(
                        'Set Location',
                        style: setLocation,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            GoogleMap(
              // myLocationEnabled: true,
              zoomControlsEnabled: false,
              mapType: MapType.terrain,
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
                  Position position = await _determinePosition();

                  setState(() {
                    locationUnClicked = locationClicked;
                  });

                  GoogleMapController controller = await _controller.future;
                  controller.animateCamera(CameraUpdate.newCameraPosition(
                      CameraPosition(
                          target: LatLng(position.latitude, position.longitude),
                          zoom: 25.4746)));
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
      ),
    );
  }

  // get current location
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled == false) {
      return Future.error('Location services are disabled.');
    } else {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      return await Geolocator.getCurrentPosition();
    }
  }
}
