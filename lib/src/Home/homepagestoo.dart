import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/src/config/app_route.dart';
import 'package:miniproject/src/config/app_setting.dart';
import 'package:miniproject/src/widgets/menu_modeltoo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePagesToo extends StatefulWidget {


  @override
  _HomePagesTooState createState() => _HomePagesTooState();
}

class _HomePagesTooState extends State<HomePagesToo> {
  final List<String> images = [
    'https://s3.ap-southeast-1.amazonaws.com/o77site/webproject-source/condominium/dcondo-panaa/img/gallery/dcondo-panaa-condo-gallery-01.webp',
    'https://s3.ap-southeast-1.amazonaws.com/o77site/webproject-source/condominium/the-muve-bangna/img/gallery/the-muve-bangna-condo-gallery-02.webp',
    'https://s3.ap-southeast-1.amazonaws.com/o77site/webproject-source/condominium/the-muve-bangna/img/gallery/the-muve-bangna-condo-gallery-08.webp',
    'https://s3.ap-southeast-1.amazonaws.com/o77site/webproject-source/condominium/the-muve-bangna/img/gallery/the-muve-bangna-condo-gallery-10.webp',
  ];
  List<Map<String, String>> imgArray = [
    {
      "img":
      "https://www.prachachat.net/wp-content/uploads/2021/08/01-sansiri-condo-the-muve-kaset-gallery-section-facade-728x485.jpg",
      "title": "Painting Studio",
      "description":
      "You need a creative space ready for your art? We got that covered.",
      "price": "\$125",
      "page": "info"
    },
    {
      "img":
      "https://img.iproperty.com.my/thinkofliving/1620x1080-fit,format=webp/wp-content/uploads/1/2021/01/22131257/welcome.jpg",
      "title": "Art Gallery",
      "description":
      "Don't forget to visit one of the coolest art galleries in town.",
      "price": "\$200",
      "page": "login"
    },
    {
      "img":
      "https://photosrp.dotproperty.co.th/1.0-TH-542528-PJ-13018-3846647045a7165a26b083-1-525-325/%E0%B8%AD%E0%B8%B4%E0%B8%99%E0%B8%9F%E0%B8%B4%E0%B8%99%E0%B8%B4%E0%B8%95%E0%B8%B4-%E0%B8%84%E0%B8%AD%E0%B8%99%E0%B9%82%E0%B8%94.jpg",
      "title": "Video Services",
      "description":
      "Some of the best music video services someone could have for the lowest prices.",
      "price": "\$300",
      "page": "upcoming"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(


              accountName:  Text(
                'Menu',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),

              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            ...MenuViewModelToo()
                .items
                .map((e) => ListTile(
              leading: Icon(
                e.icon,
                color: e.iconColor,
              ),
              title:Text(e.title),
              onTap: () {
                e.onTap(context);
              },
            ))

          ],
        ),
      ),
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    CarouselSlider.builder(
                      itemCount: imgArray.length,
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder: (context, index, realIdx) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            child: Center(
                                child: Image.network(images[index],
                                    fit: BoxFit.cover, width: 1000)),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Recommend",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    CarouselSlider(
                      items: imgArray
                          .map((item) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, item["page"]);
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.4),
                                        blurRadius: 8,
                                        spreadRadius: 0.3,
                                        offset: Offset(0, 3))
                                  ]),
                                  child: AspectRatio(
                                    aspectRatio: 2 / 2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.network(
                                        item["img"],
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  children: [
                                    Text(item["title"],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey)),
                                    // Text(item["title"],
                                    //     style: TextStyle(
                                    //         fontSize: 32, color: Colors.black)),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       left: 16.0, right: 16.0, top: 8),
                                    //   child: Text(
                                    //     item["description"],
                                    //     style: TextStyle(
                                    //         fontSize: 16, color: Colors.grey),
                                    //     textAlign: TextAlign.center,
                                    //   ),
                                    // )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                          .toList(),
                      options: CarouselOptions(
                          height: 530,
                          autoPlay: false,
                          enlargeCenterPage: true,
                          aspectRatio: 4 / 4,
                          enableInfiniteScroll: false,
                          initialPage: 0,
                          // viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                            });
                          }),
                    ),
                    // Container(
                    //   child: Column(
                    //
                    //   ),
                    // )

                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
