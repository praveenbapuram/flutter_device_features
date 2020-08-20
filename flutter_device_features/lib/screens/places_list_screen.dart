import 'package:flutter/material.dart';
import 'package:flutter_device_features/providers/great_places.dart';
import 'package:flutter_device_features/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatPlace>(
        child: Center(
          child: Text('Got no places yet start adding some..!'),
        ),
        builder: (ctx, greatePlace, ch) => greatePlace.places.length <= 0
            ? ch
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          FileImage(greatePlace.places[index].image),
                    ),
                    title: Text(greatePlace.places[index].title),
                    onTap: () {
                      // Go to detail page.
                    },
                  );
                },
                itemCount: greatePlace.places.length,
              ),
      ),
    );
  }
}
