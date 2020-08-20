import 'package:flutter/material.dart';
import 'package:flutter_device_features/providers/great_places.dart';
import 'package:flutter_device_features/screens/add_place_screen.dart';
import 'package:flutter_device_features/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlace(),
      child: MaterialApp(
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: PlacesList(),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          }),
    );
  }
}
