// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:travelapp/constant.dart';
import 'package:travelapp/screens/detail_travel.dart';

import '../widgets/image_box.dart';

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
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 70,
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
                        'Northern',
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
                        'Central',
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
                        'Southern',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  child: Column(children: [
                    ImageBox(
                      priceText: '82',
                      paddingIcon: 18,
                      sizeIcon: 50,
                      colorText: primaryColor,
                      urlImg:
                          'https://www.vietnambooking.com/wp-content/uploads/2022/05/kinh-nghiem-du-lich-phu-quoc-cho-gia-dinh-1.jpg',
                      heightImg: 200,
                      marginImg: EdgeInsets.symmetric(vertical: 10),
                      titleText: 'Phu Quoc',
                      subtitleText: 'Kiên Giang, Việt Nam',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailTravelScreen(titleText: 'Phú Quốc')),
                        );
                      },
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: ImageBox(
                              priceText: '82',
                              paddingIcon: 12,
                              sizeIcon: 38,
                              colorText: primaryColor,
                              urlImg:
                                  'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                              heightImg: 180,
                              marginImg: EdgeInsets.only(right: 5),
                              titleText: 'Co Loa',
                              subtitleText: 'Ha Noi',
                            ),
                          ),
                          Expanded(
                            child: ImageBox(
                              priceText: '82',
                              paddingIcon: 12,
                              sizeIcon: 38,
                              colorText: primaryColor,
                              urlImg:
                                  'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                              heightImg: 180,
                              marginImg: EdgeInsets.only(left: 5),
                              titleText: 'Co Loa',
                              subtitleText: 'Ha Noi',
                            ),
                          ),
                        ],
                      ),
                    ),
                    ImageBox(
                      priceText: '82',
                      paddingIcon: 18,
                      sizeIcon: 50,
                      colorText: primaryColor,
                      urlImg:
                          'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                      heightImg: 200,
                      marginImg: EdgeInsets.symmetric(vertical: 10),
                      titleText: 'Co Loa',
                      subtitleText: 'Ha Noi',
                    ),
                    ImageBox(
                      priceText: '82',
                      paddingIcon: 18,
                      sizeIcon: 50,
                      colorText: primaryColor,
                      urlImg:
                          'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675',
                      heightImg: 200,
                      marginImg: EdgeInsets.symmetric(vertical: 10),
                      titleText: 'Co Loa',
                      subtitleText: 'Ha Noi',
                    ),
                  ]),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
