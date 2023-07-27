// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapp/constant.dart';
import 'package:travelapp/screens/navigate.dart';
import 'package:travelapp/widgets/image_box.dart';
import 'package:travelapp/widgets/image_box_no_text.dart';

import '../widgets/blur_image_box.dart';

class DetailTravelScreen extends StatefulWidget {
  String titleText;
  DetailTravelScreen({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  _DetailTravelScreenState createState() => _DetailTravelScreenState();
}

class _DetailTravelScreenState extends State<DetailTravelScreen> {
  String _selectedDay = 'Day 1'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: canvasColor,
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.all(16),
              margin: EdgeInsets.only(left: 16, bottom: 8, right: 16, top: 10),
              child: Text(
                'Exploring Phu Quoc Island: A Day of Tropical Adventures and Stunning Landscapes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, bottom: 8, right: 16, top: 0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/icons/calendar.png',
                      width: 30,
                    ),
                  ),
                  Container(
                    child: Text('4 days 3 nights'),
                    margin: EdgeInsets.only(right: 5),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    child: Text('|'),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(16),
                  //   child: Image.asset(
                  //     'assets/icons/place.png',
                  //     width: 30,
                  //   ),
                  // ),
                  // Container(
                  //   child: Text('Kien Giang'),
                  //   margin: EdgeInsets.only(right: 5),
                  // ),
                  Row(
                    children: [
                      PopupMenuButton<String>(
                        icon: Icon(Icons.filter_list_sharp),
                        initialValue: _selectedDay,
                        onSelected: (String day) {
                          setState(() {
                            _selectedDay = day;
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: 'Day 1',
                            child: Text('Day 1'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Day 2',
                            child: Text('Day 2'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Day 3',
                            child: Text('Day 3'),
                          ),
                        ],
                      ),
                      Text('$_selectedDay'), // Display the selected value
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 200, // Set the desired height for the image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/phuquoc.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 16),
                child: Text(
                  'This is your day:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            Offset(0, 3), // Changes the position of the shadow
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(
                      '1',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  'Crossing VinWonder',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            ImageBoxNoText(
              marginImg: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              heightImg: 150,
              urlImg: 'assets/img/vinwonder.jpeg',
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // Your navigation logic here
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text('Navigate'),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            Offset(0, 3), // Changes the position of the shadow
                      ),
                    ],
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(
                      '1',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  'Crossing VinWonder',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            ImageBoxNoText(
              marginImg: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              heightImg: 150,
              urlImg: 'assets/img/vinwonder.jpeg',
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapScreen()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text('Navigate'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
