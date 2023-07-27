// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/blur_image_box.dart';
import '../widgets/image_box.dart';
import 'detail_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text(
          'Explore',
          style: TextStyle(
              color: canvasColor, fontSize: 35, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlayAnimationDuration: Duration(seconds: 2),
                viewportFraction: 1,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(images[index],
                          fit: BoxFit.cover, width: double.infinity)),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(children: [
                  BlurImageBox(
                    colorText: primaryColor,
                    urlImg:
                        'https://scontent.xx.fbcdn.net/v/t1.15752-9/363336104_1510445699494412_4997105854046924545_n.png?_nc_cat=103&ccb=1-7&_nc_sid=aee45a&_nc_ohc=yoth39pSl6EAX88H4R5&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdSKYfEDG9aNdUruGEDTndedp1PeN8uJ8yzH_6ePiySgCQ&oe=64E96825',
                    heightImg: 100,
                    marginImg: EdgeInsets.symmetric(vertical: 10),
                    text: 'Northern',
                  ),
                  BlurImageBox(
                    colorText: primaryColor,
                    urlImg:
                        'https://scontent.xx.fbcdn.net/v/t1.15752-9/363363671_1469351170489271_3877605168225930530_n.png?_nc_cat=103&ccb=1-7&_nc_sid=aee45a&_nc_ohc=m95S9k12QCsAX8QgoYy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTi5sqhXa002hgpD4sMw4M3Z296Sr6P9Z42MkU2PeNU-w&oe=64E96184',
                    heightImg: 100,
                    marginImg: EdgeInsets.symmetric(vertical: 10),
                    text: 'Central',
                  ),
                  BlurImageBox(
                    colorText: primaryColor,
                    urlImg:
                        'https://scontent.xx.fbcdn.net/v/t1.15752-9/363413573_1341232080161859_5357853719975157195_n.png?_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=O-_OUjwT3YAAX83skxB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRWUf7gOLfP9QB3iBj8gjCjtRW-GSbKTh0K5RFR_YbCfw&oe=64E94A22',
                    heightImg: 100,
                    marginImg: EdgeInsets.symmetric(vertical: 10),
                    text: 'Southern',
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TipBox(
                            imageTip: Image.asset(
                              'assets/icons/money.png',
                              width: 50,
                            ),
                            textTip: 'Currency Exchange',
                          ),
                        ),
                        Expanded(
                          child: TipBox(
                            imageTip: Image.asset(
                              'assets/icons/transportation.png',
                              width: 50,
                            ),
                            textTip: 'Transport',
                          ),
                        ),
                        Expanded(
                          child: TipBox(
                            imageTip: Image.asset(
                              'assets/icons/sim.png',
                              width: 50,
                            ),
                            textTip: 'Helpful Number',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TipBox(
                          imageTip: Image.asset(
                            'assets/icons/holiday.png',
                            width: 50,
                          ),
                          textTip: 'Festivals',
                        ),
                      ),
                      Expanded(
                        child: TipBox(
                          imageTip: Image.asset(
                            'assets/icons/plug.png',
                            width: 50,
                          ),
                          textTip: 'Power Plugs',
                        ),
                      ),
                      Expanded(
                        child: TipBox(
                          imageTip: Image.asset(
                            'assets/icons/embassy.png',
                            width: 50,
                          ),
                          textTip: 'Embassies',
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class TipBox extends StatelessWidget {
  Image imageTip;
  String textTip;
  TipBox({
    Key? key,
    required this.imageTip,
    required this.textTip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Card(
          elevation: 2,
          child: Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: imageTip),
        ),
        Container(
          child: Text(
            textTip,
            style: TextStyle(fontSize: 12),
          ),
        )
      ]),
    );
  }
}
