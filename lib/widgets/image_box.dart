// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:travelapp/constant.dart';
import 'package:travelapp/screens/detail_travel.dart';

class ImageBox extends StatelessWidget {
  double heightImg;
  String urlImg;
  EdgeInsets marginImg;
  String titleText;
  String subtitleText;
  Color colorText;
  double sizeIcon;
  double paddingIcon;
  String priceText;
  VoidCallback? onTap;

  ImageBox({
    Key? key,
    required this.heightImg,
    required this.urlImg,
    required this.marginImg,
    required this.titleText,
    required this.subtitleText,
    required this.colorText,
    required this.sizeIcon,
    required this.paddingIcon,
    required this.priceText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightImg,
      margin: marginImg,
      child: Stack(
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
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft, // Align the text to the bottom left
            child: Container(
              margin: EdgeInsets.all(5),
              // width: 80,
              height: sizeIcon,
              padding: EdgeInsets.all(paddingIcon),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromARGB(194, 255, 255, 255),
              ),
              child: RichText(
                text: TextSpan(
                  text: '\$$priceText',
                  style: TextStyle(
                    color: Colors.black, // Set the color of the text here
                    fontWeight: FontWeight.bold,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '/Person',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment:
                Alignment.bottomLeft, // Align the text to the bottom left
            child: Container(
              // margin: EdgeInsets.all(),
              child: ListTile(
                  title: Text(
                    titleText,
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
                      ],
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        'assets/icons/location.png',
                        width: 20,
                        color: primaryColor,
                      ),
                      Text(subtitleText,
                          style: TextStyle(
                            color: colorText,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  trailing: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: sizeIcon,
                      height: sizeIcon,
                      padding: EdgeInsets.all(paddingIcon),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      child: Image.asset(
                        'assets/icons/arrow.png',
                        width: 20,
                        color: canvasColor,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
