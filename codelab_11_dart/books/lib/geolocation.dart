import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getPosition().then((Position myPos) {
      setState(() {
        myPosition =
            'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Irsyad Dimas - Current Location')),
      body: Center(
        child: isLoading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Getting your location...'),
                ],
              )
            : Text(
                myPosition,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
      ),
    );
  }

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position position = await Geolocator.getCurrentPosition();

    // Delay di akhir agar loading pasti terlihat minimal 3 detik
    await Future.delayed(const Duration(seconds: 3));

    return position;
  }
}
