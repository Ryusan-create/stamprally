import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as geoCoding;
import 'package:stamprally/main.dart';

class GeoMap extends StatefulWidget {
  GeoMap({Key? key}) : super(key: key);
  static String id = "GeoMap";
  @override
  _GeoLocationMap createState() => _GeoLocationMap();
}

class _GeoLocationMap extends State<GeoMap> {
  static String id = "GeoMap";
  String _location = "no data";
  Future<void> getLocation() async {
    //現在の位置を返す
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    //北緯がプラス、南緯がマイナス
    print("緯度：" + position.latitude.toString());
    //東経がプラス、西経がマイナス
    print("緯度：" + position.longitude.toString());
    //高度
    print("高度：" + position.altitude.toString());
    //距離をメートルで返す
    double distanceInMeters = Geolocator.distanceBetween(35.68, 139.76, -23.61, -46.40);
    print(distanceInMeters);
    //方位を返す
    double bearing = Geolocator.bearingBetween(35.68, 319.76, -23.61, -46.40);
    print(bearing);
    setState(() {
      _location = position.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("タイトル"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_location',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getLocation, child: Icon(Icons.location_on)
      ),
    );
  }
}
