import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:latlong2/latlong.dart' as latLng;


class Carte extends StatefulWidget {
  const Carte({Key key}) : super(key: key);

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  LatLng point = LatLng(7.539989, -5.547080);
  var location = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "Cartographie",
        // searchBar: true,
        // transparent: true,
        // categoryOne: "Beauty",
        // categoryTwo: "Fashion",
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      // key: _scaffoldKey,
      drawer: ArgonDrawer(currentPage: "Carte"),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(7.539989, -5.547080),
          zoom: 6.5,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://api.mapbox.com/styles/v1/parheto10/cl0i276dm002b15p156bfgitw/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicGFyaGV0bzEwIiwiYSI6ImNrazVjbGs2ZzBwMm0yd3FuN2J0Z3F6emsifQ.vJY5MZ83bP4spWhv9gDUsw",
            additionalOptions: {
              'accessToken': 'pk.eyJ1IjoicGFyaGV0bzEwIiwiYSI6ImNrazVjbGs2ZzBwMm0yd3FuN2J0Z3F6emsifQ.vJY5MZ83bP4spWhv9gDUsw',
              'id': 'mapbox.mapbox-streets-v8',
            },
            subdomains: ['a', 'b', 'c'],
            // attributionBuilder: (_) {
            //   return Text("© OpenStreetMap contributors");
            // },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(7.539989, -5.547080),
                builder: (ctx) =>
                    Container(
                      child: Icon(
                        Icons.place_sharp,
                        size: 50,
                        color: Colors.blueAccent,
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
