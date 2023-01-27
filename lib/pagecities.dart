import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';


int index = 0;
double lon = 0;

double lat = 0;

double tilt = 0;

class VRGlasses extends StatefulWidget {
  VRGlasses({required this.image});
  String image;
  @override
  _VRGlassesState createState() => _VRGlassesState();
}

class _VRGlassesState extends State<VRGlasses> {

  @override
  Widget build(BuildContext context) {
    String image1=widget.image;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(15),
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity, // it will take half screen
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6)
                    ],
                  ),
                  child: Hero(
                    // Hero is used for shared animation transaction
                    tag: 'images/$image1', // tag should be same as parent
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: Panorama(onViewChanged: onViewChanged,
                          sensorControl: SensorControl.Orientation,
                          longitude: 0,
                          latitude: 0,
                          animSpeed: 0.00001,
                          hotspots: [
                            Hotspot(
                              //orgin: const Offset(0.6, 0.5),
                              latitude: -30.0,
                              longitude: 0.0,
                              width: 500,
                              height: 400,
                              widget: Image(
                                image: AssetImage('images/dpurple.png'),
                                height: 1500,
                              ),
                            )
                          ],

                          onTap: (longitude, latitude, tilt) =>
                              print('onTap: $longitude, $latitude, $tilt'),
                          onLongPressStart: (longitude, latitude, tilt) =>
                              print('onLongPressStart: $longitude, $latitude, $tilt'),
                          onLongPressMoveUpdate: (longitude, latitude, tilt) =>
                              print('onLongPressMoveUpdate: $longitude, $latitude, $tilt'),
                          onLongPressEnd: (longitude, latitude, tilt) =>
                              print('onLongPressEnd: $longitude, $latitude, $tilt'),
                          child: Image.asset(
                            'images/$image1',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity, // it will take half screen
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6)
                    ],
                  ),
                  child: Hero(
                    // Hero is used for shared animation transaction
                    tag: 'images/$image1', // tag should be same as parent
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: Panorama(
                          onViewChanged: onViewChanged,
                          sensorControl: SensorControl.Orientation,
                          animSpeed: 0.00001,
                          hotspots: [
                            Hotspot(
                              //orgin: const Offset(0.6, 0.5),
                              latitude: -30.0,
                              longitude: 0.0,
                              width: 500,
                              height: 400,
                              widget: Image(
                                image: AssetImage('images/dpurple.png'),
                                height: 1500,
                              ),
                            )
                          ],

                          onTap: (longitude, latitude, tilt) =>
                              print('onTap: $longitude, $latitude, $tilt'),
                          onLongPressStart: (longitude, latitude, tilt) =>
                              print('onLongPressStart: $longitude, $latitude, $tilt'),
                          onLongPressMoveUpdate: (longitude, latitude, tilt) =>
                              print('onLongPressMoveUpdate: $longitude, $latitude, $tilt'),
                          onLongPressEnd: (longitude, latitude, tilt) =>
                              print('onLongPressEnd: $longitude, $latitude, $tilt'),
                          child: Image.asset(
                            'images/$image1',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
