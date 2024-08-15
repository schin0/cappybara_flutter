import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/city_model.dart';

class MapScreen extends StatefulWidget {
  final City cidade;

  MapScreen(this.cidade);

  @override
  MapState createState() => MapState();
}

class MapState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition fiapPosition = CameraPosition(
    target: LatLng(-23.595157, -46.687052),
    zoom: 14.4746,
  );

  Set<Marker> citiesMarkers = {};

  @override
  void initState() {
    citiesMarkers.add(Marker(
      markerId: MarkerId(widget.cidade.name),
      position: LatLng(
        widget.cidade.latitude,
        widget.cidade.longitude,
      ),
      infoWindow:
          InfoWindow(title: widget.cidade.name, snippet: widget.cidade.state),
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: fiapPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: citiesMarkers,
            ),
          ),
        ],
      ),
    );
  }
}
