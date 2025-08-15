import 'package:flashquiz_app/core/models/location_model.dart';
import 'package:flashquiz_app/core/ui/colors/app_colors.dart';
import 'package:flashquiz_app/core/widgets/marker_and_polygon_function.dart';
import 'package:flashquiz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMapPage extends StatefulWidget {
  final LatLng? pickupLocation;
  final LatLng? dropLocation;
  final bool? isPolyLineNeeded;
  const HomeMapPage({
    super.key,
    this.pickupLocation,
    this.dropLocation,
    this.isPolyLineNeeded,
  });

  @override
  State<HomeMapPage> createState() => _HomeMapPageState();
}

class _HomeMapPageState extends State<HomeMapPage> {
  LatLng? currentLocation;
  Set<Marker> markers = {};
  Set<Polyline> polyLines = {};
  GoogleMapController? googleMapController;
  @override
  void initState() {
    if (widget.dropLocation != null && widget.pickupLocation != null) {
      addMarkersAndPolylines(widget.isPolyLineNeeded);
    }
    super.initState();
  }

  void getLocation() async {
    Position position = await determinePosition();
    BitmapDescriptor myLocationMarker =
        await createCustomCircleMarker(Colors.blue, 20);
    if (!mounted) return;

    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
      markers.add(
        Marker(
            infoWindow: InfoWindow(
              title: "Your Location",
              onTap: () {},
            ),
            icon: myLocationMarker,
            markerId: MarkerId(UniqueKey().toString()),
            position: LatLng(position.latitude, position.longitude)),
      );
    });
    setState(() {});
  }

  void addMarkersAndPolylines(bool? isPolyLineNeeded) async {
    // Create custom markers
    // getLocation();

    BitmapDescriptor pickupMarker =
        await createCustomCircleMarker(AppColors.primary, 20);
    BitmapDescriptor destinationMarker =
        await createAssetMarker(Assets.images.destinationPerson.path);

    markers = {
      Marker(
        markerId: MarkerId('pickup'),
        position: LatLng(
          widget.pickupLocation!.latitude,
          widget.pickupLocation!.longitude,
        ),
        icon: pickupMarker,
        infoWindow: InfoWindow(title: "Pickup Location"),
      ),
      Marker(
        markerId: MarkerId('destination'),
        position: LatLng(
          widget.dropLocation!.latitude,
          widget.dropLocation!.longitude,
        ),
        icon: destinationMarker,
        infoWindow: InfoWindow(title: "Destination"),
      ),
    };
    setState(() {});
    if (isPolyLineNeeded == true) {
      // Add polylines as before
      polyLines = await drawRoute(
        source: LocationModel(
          latitude: widget.pickupLocation?.latitude,
          longitude: widget.pickupLocation?.longitude,
        ),
        destination: LocationModel(
          latitude: widget.dropLocation?.latitude,
          longitude: widget.dropLocation?.longitude,
        ),
      );
      setState(() {});
    }
  }

  @override
  void dispose() {
    googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: GoogleMap(
        key: const ValueKey('homeMap'),
        mapType: MapType.normal,
        mapToolbarEnabled: false,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          // c.googleMapController = controller;
          print("Map created successfully");

          googleMapController = controller;
          // selectedLocation = LatLng(
          //     mapController.currentPosition!.latitude,
          //     mapController.currentPosition!.longitude);
        },
        markers: markers,
        polylines: polyLines,
        initialCameraPosition: CameraPosition(
          target: widget.pickupLocation ??
              LatLng(currentLocation?.latitude ?? 27.7033,
                  currentLocation?.longitude ?? 85.3066),
          zoom: 14,
        ),
        buildingsEnabled: true,
        onCameraMove: (CameraPosition position) {
          print("Camera moved: ${position.target}");

          currentLocation = position.target;
        },
      ),
    );
  }
}
