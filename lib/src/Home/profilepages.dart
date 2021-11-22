import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   // colors: [
                //   //   Color(0xfffFBD786),
                //   //   Color(0xffff7797d),
                //   //
                //   // ],
                //
                // ),
                ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/sumet.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sumet Chantae',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'STUDENT',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.redAccent,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                width: 200,
                height: 15,
                child: Divider(
                  color: Colors.redAccent,
                  thickness: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Text('Student ID : 624235023')
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text('Student ID : 624235023 ')
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text('Email : 624235023@parichat.skru.ac.th')
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
