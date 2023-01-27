import 'dart:io';

import 'package:ar_hackthon/pagecities.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:panorama/panorama.dart';

int index = 0;
double lon = 0;

double lat = 0;

double tilt = 0;

class MenuCities extends StatefulWidget {
  MenuCities({required this.image});
  String image;
  @override
  _MenuCitiesState createState() => _MenuCitiesState();
}

class _MenuCitiesState extends State<MenuCities> {
  SensorControl seensor = SensorControl.None;
  Color color = Colors.grey;
  @override
  void dispose() {
    // TODO: implement dispose

  }
  void initState() {
    // TODO: implement initState

  }
  @override
  Widget build(BuildContext context) {
    String image1=widget.image;
    return  Container(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Panorama(
              latitude: 0,
              longitude: 0,
              animSpeed: 0.00001,
              sensorControl: seensor,
              onViewChanged: onViewChanged,
              onTap: (longitude, latitude, tilt) =>
                  print('onTap: $longitude, $latitude, $tilt'),
              onLongPressStart: (longitude, latitude, tilt) =>
                  print('onLongPressStart: $longitude, $latitude, $tilt'),
              onLongPressMoveUpdate: (longitude, latitude, tilt) =>
                  print('onLongPressMoveUpdate: $longitude, $latitude, $tilt'),
              onLongPressEnd: (longitude, latitude, tilt) =>
                  print('onLongPressEnd: $longitude, $latitude, $tilt'),
              child: Image.asset('images/$image1'),
              //quds4 1
              hotspots: [
                Hotspot(
                  //orgin: const Offset(0.6, 0.5),
                  latitude: -20.0,
                  longitude: 0.0,
                  width: 700,
                  height: 500,
                  widget: Image(
                    image: AssetImage('images/dpurple.png'),
                  ),
                )
              ]),
          Padding(
            padding: const EdgeInsets.only(top: 50,right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                child: Icon(LineIcons.cardboardVr),
                backgroundColor: Colors.grey,
                mini: true,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VRGlasses(image: image1,);
                  }));
                  // setState(() {
                  //   if (seensor == SensorControl.None) {
                  //     seensor = SensorControl.Orientation;
                  //     color = Color(0xFF103755);
                  //   } else {
                  //     seensor = SensorControl.None;
                  //     color = Colors.grey;
                  //   }
                  // });
                },
              ),
              //child: Text('${lon.toStringAsFixed(3)}, ${lat.toStringAsFixed(3)} '),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                child: Text('VR'),
                backgroundColor: color,
                mini: true,
                onPressed: () {
                  setState(() {
                    if (seensor == SensorControl.None) {
                      seensor = SensorControl.Orientation;
                      color = Color(0xFF103755);
                    } else {
                      seensor = SensorControl.None;
                      color = Colors.grey;
                    }
                  });
                },
              ),
            ),
          )
        ]),
    );
  }

  Widget hotspotButton({text, icon, onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Center(child: Text(text)),
              )
            : Container(),
      ],
    );
  }

  void onViewChanged(longitude, latitude, tilt) {
    setState(() {
      lon = longitude;
      lat = latitude;
      tilt = tilt;
    });
  }
}
