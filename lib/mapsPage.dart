import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geo_firestore/geo_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:niitgeofence/place1.dart';
import 'package:niitgeofence/place2.dart';
import 'package:niitgeofence/place3.dart';
import 'package:niitgeofence/place4.dart';
import 'package:niitgeofence/qutab.dart';

class MapsPage extends StatefulWidget {
  MapsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  List<Marker> allMarkers = [];
  LocationAccuracy _geofenceChecker;
//  Set<Circle> allCircles = {};
  StreamSubscription _locationSubscription;
  Location _locationTracker = Location();
  Marker marker;
  Circle circle;
//  Marker marker1;
  Circle circle1;
  GoogleMapController _controller;
  var qutubLocation;
  GeoPoint currentLocation;

  List<GeoPoint> geoPoints = [
    GeoPoint(28.524427, 77.185523),
    GeoPoint(28.525171, 77.184585),
    GeoPoint(28.523919, 77.184622),
    GeoPoint(28.524783, 77.185147),
    GeoPoint(28.525743, 77.185361)
  ];

  Firestore firestore;
  GeoFirestore geoFirestore;

  static final CameraPosition initialLocation = CameraPosition(
    target: LatLng(28.524471, 77.185525),
    zoom: 14.4746,
  );

  Future<Uint8List> getMarker() async {
    ByteData byteData =
        await DefaultAssetBundle.of(context).load("assets/car_icon.png");
    return byteData.buffer.asUint8List();
  }

  void updateMarkerAndCircle(LocationData newLocalData, Uint8List imageData) {
    LatLng latlng = LatLng(newLocalData.latitude, newLocalData.longitude);
    currentLocation = GeoPoint(newLocalData.latitude, newLocalData.longitude);

    this.setState(() {
      marker = Marker(
          markerId: MarkerId("home"),
          position: latlng,
          rotation: newLocalData.heading,
          draggable: false,
          zIndex: 2,
          flat: true,
          anchor: Offset(0.5, 0.5),
          icon: BitmapDescriptor.fromBytes(imageData));
      circle = Circle(
          circleId: CircleId("car"),
          radius: newLocalData.accuracy,
          zIndex: 1,
          strokeColor: Colors.blue,
          center: latlng,
          fillColor: Colors.blue.withAlpha(70));
    });
  }

  void getCurrentLocation() async {
    try {
      Uint8List imageData = await getMarker();
      var location = await _locationTracker.getLocation();

      updateMarkerAndCircle(location, imageData);
      retrievingLocation();
      nearByLocation();

      if (_locationSubscription != null) {
        _locationSubscription.cancel();
      }

      _locationSubscription =
          _locationTracker.onLocationChanged.listen((newLocalData) {
        if (_controller != null) {
          _controller.animateCamera(CameraUpdate.newCameraPosition(
              new CameraPosition(
                  bearing: 192.8334901395799,
                  target: LatLng(newLocalData.latitude, newLocalData.longitude),
                  tilt: 0,
                  zoom: 18.00)));
          updateMarkerAndCircle(newLocalData, imageData);
        }
      });
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        debugPrint("Permission Denied");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    firestore = Firestore.instance;
    geoFirestore = GeoFirestore(firestore.collection('places'));

    allMarkers.add(Marker(
      markerId: MarkerId("myMarker"),
      draggable: false,
      onTap: () {},
    )
//          position: LatLng(28.6305, 77.2773)),
        );
  }

  void addLocation() async {
    for (int i = 0; i < geoPoints.length; i++) {
      await geoFirestore.setLocation('q$i', geoPoints[i]);
    }
  }

  void retrievingLocation() async {
    final location = await geoFirestore.getLocation('q${0}');
    qutubLocation = location;
    print(
        'Location for this document is ${location.latitude}, ${location.longitude}');
  }

  void nearByLocation() async {
    final queryLocation =
        GeoPoint(currentLocation.latitude, currentLocation.longitude);

// creates a new query around [37.7832, -122.4056] with a radius of 0.6 kilometers
    final List<DocumentSnapshot> documents =
        await geoFirestore.getAtLocation(queryLocation, 0.02);
    documents.forEach((document) {
      print(document.data);
      if (document.documentID == "q0") {
//        Navigator.push(context, MaterialPageRoute(builder: (context) {
//          return QutabMinarPage();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return QutabMinarPage();
        }));
      } else if (document.documentID == "q1") {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iltumbish();
        }));
      } else if (document.documentID == "q2") {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Alauddinkhiljitomb();
        }));
      } else if (document.documentID == "q3") {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Quwwatulislammasjid();
        }));
      } else if (document.documentID == "q4") {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AlaiMinar();
        }));
      }
    });
  }

  @override
  void dispose() {
    if (_locationSubscription != null) {
      _locationSubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/Safar.png'),
        ),
        title: Text("SAFAR"),
        centerTitle: true,
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: initialLocation,
        markers: Set.from(allMarkers),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
        myLocationEnabled: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.location_searching),
          onPressed: () {
            getCurrentLocation();
            addLocation();
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
