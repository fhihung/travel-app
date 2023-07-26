// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travelapp/constant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: primaryColor,
        actions: [
          Expanded(
            flex: 4,
            child: Container(
                margin: EdgeInsets.all(10),
                // width: 100,
                child: Text(
                  'Find your favorite place',
                  style: TextStyle(
                      color: canvasColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.notifications_active,
                  color: canvasColor,
                )),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: canvasColor,
                          ),
                        ),
                        child: Text(
                          'Miền Bắc',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: canvasColor,
                          ),
                        ),
                        child: Text(
                          'Miền Trung',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: canvasColor,
                          ),
                        ),
                        child: Text(
                          'Miền Nam',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                ImageBox(
                  urlImg:
                      'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                  heightImg: 200,
                  marginImg: EdgeInsets.symmetric(vertical: 10),
                  text: 'Co Loa',
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: ImageBox(
                          urlImg:
                              'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                          heightImg: 180,
                          marginImg: EdgeInsets.only(right: 5),
                          text: 'Co Loa',
                        ),
                      ),
                      Expanded(
                        child: ImageBox(
                          urlImg:
                              'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                          heightImg: 180,
                          marginImg: EdgeInsets.only(left: 5),
                          text: 'Co Loa',
                        ),
                      ),
                    ],
                  ),
                ),
                ImageBox(
                  urlImg:
                      'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                  heightImg: 200,
                  marginImg: EdgeInsets.symmetric(vertical: 10),
                  text: 'Co Loa',
                ),
                ImageBox(
                  urlImg:
                      'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                  heightImg: 200,
                  marginImg: EdgeInsets.symmetric(vertical: 10),
                  text: 'Co Loa',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  double heightImg;
  // double marginImg;
  String urlImg;
  EdgeInsets marginImg;
  String
      text; // New text variable to hold the text to be displayed on the image

  ImageBox({
    Key? key,
    required this.heightImg,
    required this.marginImg,
    required this.urlImg,
    required this.text, // Initialize the text variable in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightImg,
      margin: marginImg,
      child: Stack(
        // Use Stack widget to position text on top of the image
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              size: Size.fromRadius(200),
              child: Opacity(
                opacity: 0.9,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(urlImg, fit: BoxFit.cover),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 1.5,
                          sigmaY: 1.5), // Adjust the blur intensity as needed
                      child: Container(color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Center the text in the Stack
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
