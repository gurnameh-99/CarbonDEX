import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String Lat = "";
  String Lon = "";
  GoogleMapController myController;

  void getData() async{
    var apikey = 'AIzaSyBYNZwo32dr3Tfusmh3rsKvUbyUKFbFz30';
    Response response = await get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=Boston,MA|Charlestown,MA&destinations=Lexington,MA|Concord,MA&departure_time=now&key='+apikey);
    Map data = jsonDecode(response.body);
    print(data);

  }

  void getCurrentLocation() async{
    Position current = await _determinePosition();
    setState(() {
      Lat = '${current.latitude}';
      Lon = '${current.longitude}';
    });
    print(current);
    print(Lat);
    print(Lon);
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 500.0,
            width: double.infinity,
            child: GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(double.parse(Lat), double.parse(Lon)),
                zoom: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onMapCreated(controller) {
    setState(() {
      myController = controller;
    });
  }
}
