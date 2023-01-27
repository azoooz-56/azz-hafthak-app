import 'package:ar_hackthon/menuCities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:panorama/panorama.dart';

class image1 extends StatelessWidget {
  const image1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('الاماكن المقدسة'),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity, // it will take half screen
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6)
                      ],
                    ),
                    child: Hero(
                      // Hero is used for shared animation transaction
                      tag: 'images/aalmadina3 1.jpg',
                      // tag should be same as parent
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Panorama(
                            longitude: 0,
                            latitude: 0,
                            child: Image.asset(
                          'images/aalmadina3 1.jpg',
                          fit: BoxFit.fill,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[]),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MenuCities(image: 'aalmadina3 1.jpg',);
                        }));
                      },
                      child: Icon(
                        FontAwesomeIcons.expand,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    right: 20,
                    bottom: 20,
                  )
                ],
              ),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            )),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity, // it will take half screen
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6)
                      ],
                    ),
                    child: Hero(
                      // Hero is used for shared animation transaction
                      tag: 'images/quds4 1.jpg',
                      // tag should be same as parent
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Panorama(
                            longitude: 0,
                            latitude: 0,
                            child: Image.asset(
                          'images/quds4 1.jpg',
                          fit: BoxFit.fill,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[]),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MenuCities(image: 'quds4 1.jpg',);
                        }));
                      },
                      child: Icon(
                        FontAwesomeIcons.expand,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    right: 20,
                    bottom: 20,
                  )
                ],
              ),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
