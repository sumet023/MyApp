import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:miniproject/src/config/app_route.dart';
import 'package:miniproject/src/configs/api.dart';
import 'package:miniproject/src/model/dormitory_model.dart';
import 'package:share/share.dart';

class DormitoryDetallpages extends StatefulWidget {
  @override
  _DormitoryDetallpagesState createState() => _DormitoryDetallpagesState();
}

class _DormitoryDetallpagesState extends State<DormitoryDetallpages> {
  Dormitory _dormitory;

  @override
  void initState() {
    _dormitory = new Dormitory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object arguments = ModalRoute.of(context).settings.arguments;
    if (arguments is Dormitory) {
      _dormitory = arguments;
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(_dormitory.dmName),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 500,
              child: ClipRRect(
                child: Image.network(
                  API.DORMITORY_IMAGE + _dormitory.dmImage,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Text('Poplarity' + _movieModel.popularity.toString()),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Container(
              child: Card(
                color: Colors.grey.shade300,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                ),
                elevation: 5,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      _dormitory.dmName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 200,
                      child: Divider(
                        color: Colors.black12,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      'Location : ' + _dormitory.dmLocation,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Detall : ' + _dormitory.dmDetail,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Phone : ' + _dormitory.dmPhone,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                  ],
                ),
              ),

              // ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text('Share',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFF5252),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      Share.share(_dormitory.dmName);
                    }),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    child: Text('Map',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFF5252),
                        padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoute.MapDoyPageRoute);
                    }),

              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.redAccent,
      //   child: Text('VDO'),
      //   onPressed: () {
      //     Navigator.pushNamed(context, AppRoute.videoRoute,
      //         arguments: _movieModel.id);
      //   },
      // ),
    );
  }
}
