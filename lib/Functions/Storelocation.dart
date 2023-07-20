import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:location/location.dart';



 late bool _serviceEnabled;
 late PermissionStatus _permissionGranted;
 late LocationData _locationData;

Location location = Location();

Future<void> _getLocation() async {
  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

  _locationData = await location.getLocation();
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<void> _saveLocationToFirestore() async {
  await _getLocation(); // Get the location data

  try {
    await firestore.collection('EmployeeData').add({
      'latitude': _locationData.latitude,
      'longitude': _locationData.longitude,
    });
    print('Location saved to Firestore');
  } catch (e) {
    print('Error saving location: $e');
  }
}

class Storelocation extends StatefulWidget {
  const Storelocation({Key? key}) : super(key: key);

  @override
  State<Storelocation> createState() => _StorelocationState();
}

class _StorelocationState extends State<Storelocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _saveLocationToFirestore();
          },
          child: Text('Save Location'),
        ),

      ),
    );
  }
}
