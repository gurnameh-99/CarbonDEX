import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:collection';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_place/search_map_place.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String Lat = "";
  String Lon = "";
  GoogleMapController myController;
  var destination;
  int _markerIdCounter = 1;
  Set<Marker> _markers = HashSet<Marker>();

  void _setMarkers(LatLng point) {
    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
      print(
          'Marker | Latitude: ${point.latitude}  Longitude: ${point.longitude}');
      _markers.add(
        Marker(
          markerId: MarkerId(markerIdVal),
          position: point,
        ),
      );
    });
  }

  void getData() async{
    var latD = destination.latitude.toString();
    var lonD = destination.longitude.toString();
    var apikey = 'AIzaSyBYNZwo32dr3Tfusmh3rsKvUbyUKFbFz30';
    Response response = await get('https://maps.googleapis.com/maps/api/distancematrix/json?origins='+Lat+','+Lon+'&destinations='+latD+','+lonD +'&departure_time=now&key='+apikey);
    print(response.body);
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
            margin: EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
            child: SearchMapPlaceWidget(
              hasClearButton: true,
              placeType: PlaceType.address,
              placeholder: 'Enter your destination',
              apiKey: 'AIzaSyBYNZwo32dr3Tfusmh3rsKvUbyUKFbFz30',
              onSelected: (Place place) async{
                Geolocation geolocation = await place.geolocation;
                setState(() {
                  destination = geolocation.coordinates;
                });
                print(destination.latitude);
                myController.animateCamera(
                    CameraUpdate.newLatLng(geolocation.coordinates)
                );
                myController.animateCamera(
                    CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
                setState(() {
                  _markers.add(
                    Marker(
                      markerId: MarkerId('0'),
                      position: destination,
                      infoWindow:
                      InfoWindow(title: 'Destination', snippet: 'Your destination!'),
                      //icon: _markerIcon,
                    ),
                  );
                });
                _setMarkers(destination);
                getData();
              },
            ),
          ),
          Container(
            height: 500.0,
            width: double.infinity,
            child: GoogleMap(
              onMapCreated: onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(28.7041,77.1025),
                zoom: 10.0,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/resultMap');
        },
        icon: Icon(Icons.edit),
        label: Text('Map'),
      ),
    );
  }

  void onMapCreated(controller) {
    setState(() {
      myController = controller;
    });
  }
}
