// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBoxNoText extends StatelessWidget {
  double heightImg;
  EdgeInsets marginImg;
  String urlImg;

  ImageBoxNoText({
    Key? key,
    required this.heightImg,
    required this.marginImg,
    required this.urlImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginImg,
      height: heightImg,
      child: Stack(
        // Use Stack widget to position text on top of the image
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox.fromSize(
              size: Size.fromRadius(200),
              child: Opacity(
                opacity: 0.9,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(urlImg, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
          ),
          // Center the text in the Stack
        ],
      ),
    );
  }
}
