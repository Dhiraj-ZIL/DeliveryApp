import 'package:flashquiz_app/core/models/location_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

Future<Set<Polyline>> drawRoute(
    {required LocationModel? source, LocationModel? destination}) async {
  Set<Polyline> polyLines = {};

  PolylinePoints polylinePoints =
      PolylinePoints(apiKey: "AIzaSyDk-CKiHwkY16LOeEZpfEc5Fv-Htwj2_Vs");
  List<LatLng> polylineCoordinates = [];
  PolylineRequest request = PolylineRequest(
    mode: TravelMode.driving,
    origin: PointLatLng(source?.latitude ?? 0.00, source?.longitude ?? 0.00),
    destination: PointLatLng(
        destination?.latitude! ?? 0.00, destination?.longitude! ?? 0.00),
  );
  PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    request: request,
  );
  if (result.points.isNotEmpty) {
    for (var point in result.points) {
      polylineCoordinates.add(LatLng(point.latitude, point.longitude));
    }
  }

  polyLines.add(
    Polyline(
      polylineId: const PolylineId('route'),
      visible: true,
      points: polylineCoordinates,
      color: Colors.blue,
      width: 4,
    ),
  );
  return polyLines;
}

Future<Set<Marker>> addMarkers(
  BitmapDescriptor? sourceIcon,
  BitmapDescriptor? destinationIcon, {
  required LocationModel? source,
  LocationModel? destination,
}) async {
  Set<Marker> markers = {};

  markers.add(
    Marker(
        infoWindow: InfoWindow(
          title: source?.title ?? "Your Location",
          onTap: () {},
        ),
        icon: sourceIcon ?? BitmapDescriptor.defaultMarker,
        markerId: MarkerId(UniqueKey().toString()),
        position: LatLng(source!.latitude!, source.longitude!)),
  );
  markers.add(
    Marker(
        infoWindow: InfoWindow(
          title: destination?.title ?? "Destination Location",
          onTap: () {},
        ),
        icon: destinationIcon ?? BitmapDescriptor.defaultMarker,
        markerId: MarkerId(UniqueKey().toString()),
        position: LatLng(destination!.latitude!, destination.longitude!)),
  );
  return markers;
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

Future<BitmapDescriptor> createCustomCircleMarker(
    Color fillColor, double radius) async {
  final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(pictureRecorder);
  final Paint paint = Paint()..color = fillColor;
  final Paint borderPaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

  // Draw circle
  canvas.drawCircle(Offset(radius, radius), radius, paint);
  canvas.drawCircle(Offset(radius, radius), radius, borderPaint);

  final ui.Image image = await pictureRecorder
      .endRecording()
      .toImage((radius * 2).toInt(), (radius * 2).toInt());
  final ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
  final Uint8List bytes = byteData!.buffer.asUint8List();
  return BitmapDescriptor.fromBytes(bytes);
}

Future<BitmapDescriptor> createAssetMarker(String assetPath) async {
  final ByteData data = await rootBundle.load(assetPath);
  return BitmapDescriptor.fromBytes(
    data.buffer.asUint8List(),
  );
}
