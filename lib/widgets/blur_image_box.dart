import 'dart:ui';

import 'package:flutter/material.dart';

class BlurImageBox extends StatelessWidget {
  double heightImg;
  // double marginImg;
  String urlImg;
  EdgeInsets marginImg;
  String
      text; // New text variable to hold the text to be displayed on the image
  Color colorText;
  BlurImageBox({
    Key? key,
    required this.heightImg,
    required this.urlImg,
    required this.marginImg,
    required this.text,
    required this.colorText,
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
                  color: colorText,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    //
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
