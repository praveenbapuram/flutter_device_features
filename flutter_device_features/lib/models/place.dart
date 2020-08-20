import 'dart:io';

import 'package:flutter/cupertino.dart';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String address;

  PlaceLocation(
      {@required this.latitude, @required this.longitude, this.address});
}

class Place {
  @required
  final String id;
  @required
  final String title;
  @required
  final PlaceLocation location;
  @required
  final File image;

  Place({this.id, this.title, this.location, this.image});
}
