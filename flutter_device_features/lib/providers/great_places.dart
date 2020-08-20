import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_device_features/helper/db_helper.dart';
import 'package:flutter_device_features/models/place.dart';
import 'package:flutter_device_features/screens/places_list_screen.dart';

class GreatPlace with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get places {
    return [..._items];
  }

  void addPlace(String pickedTittle, File pickedImage) {
    var newPlace = Place(
        id: DateTime.now().toString(),
        image: pickedImage,
        location: null,
        title: pickedTittle);
    _items.add(newPlace);

    DBHelper.insert('places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path
    });
    notifyListeners();
  }
}
