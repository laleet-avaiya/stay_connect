// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_app/latlong.dart';
import 'dart:async';
import 'package:location/location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:convert' show json;
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:timeago/timeago.dart';
// Maps class

class Maps extends StatefulWidget {
  _mapState createState() => _mapState();
}

class _mapState extends State<Maps> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    // usernameset.sendPost();
    return new Center(
      child: FutureBuilder<List<Longlat>>(
        future: fetchPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Longlat> latlong = snapshot.data;

            return GoogleMap(
              onMapCreated: (controller) {
                mapController = controller;

                for (int i = 0; i < latlong.length; i++) {
                  Longlat temp = latlong[i];
                  // if (temp.id.toString() == '8')
                  // continue;
    
                  mapController.addMarker(
                    MarkerOptions(
                     

                      position: LatLng(
                          double.parse(temp.latitude), double.parse(temp.longitude)),
                      infoWindowText:
                          InfoWindowText(temp.name, temp.time, temp.about),
                      icon:
                          BitmapDescriptor.fromAsset('graphics/' + temp.avtar),
                    ),
                  );
                }
              },
              options: GoogleMapOptions(
                mapType: MapType.normal,
                trackCameraPosition: true,
                rotateGesturesEnabled: true,
                scrollGesturesEnabled: true,
                tiltGesturesEnabled: true,
                myLocationEnabled: true,
                cameraPosition: CameraPosition(
                  // target: LatLng(_currentLocation["latitude"],
                  //     _currentLocation["longitude"]),
                  target: LatLng(23.1882771, 72.6279127),
                  zoom: 15.0,
                ),
              ),
            );
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
