// Enhanced LocationModel with better structure
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationModel {
  final double? latitude;
  final double? longitude;
  final String? title;

  const LocationModel({
    this.latitude,
    this.longitude,
    this.title,
  });

  bool get isValid => latitude != null && longitude != null;

  LatLng? get latLng => isValid ? LatLng(latitude!, longitude!) : null;

  LocationModel copyWith({
    double? latitude,
    double? longitude,
    String? title,
  }) {
    return LocationModel(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
    };
  }

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      title: json['title'],
    );
  }

  @override
  String toString() {
    return 'LocationModel(lat: $latitude, lng: $longitude, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LocationModel &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.title == title;
  }

  @override
  int get hashCode => Object.hash(latitude, longitude, title);
}
