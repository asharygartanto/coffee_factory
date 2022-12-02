import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/**
 * ashary.gartanto@gmail.com
 * to pretend show the cup factory, that will be called in navbar menu
 */
class CupFactoryMap extends StatefulWidget {
  const CupFactoryMap({super.key});

  @override
  State<CupFactoryMap> createState() => _CupFactoryMapState();
}

class _CupFactoryMapState extends State<CupFactoryMap> {
  Completer<GoogleMapController> _controller = Completer();

  // ignore: prefer_const_constructors
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: const LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  // ignore: prefer_const_constructors
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: const LatLng(-6.923269972185304, 107.59059790296368),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the factory!'),
        icon: const Icon(Icons.directions_car),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
