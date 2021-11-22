import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/src/config/app_route.dart';

class RegisterPages extends StatefulWidget {
  @override
  _RegisterPagesState createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      // backgroundColor: Color(0xFFFF5F5DC),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 50,
                        fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color(0xFFFF5252),
                            ),
                            border: InputBorder.none,
                            hintText: "\tUser",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xFFFF5252),
                            ),
                            border: InputBorder.none,
                            hintText: "\tPassword",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15.0,
                                offset: Offset(0, 10))
                          ]),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xFFFF5252),
                            ),
                            border: InputBorder.none,
                            hintText: "\tPassword",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),

                    //SizedBox(height: 5,),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                  child: Text('Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF5252),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.LoginRoute);
                  }),
              ElevatedButton(
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF5252),
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 130),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.LoginRoute);
                  }),
              ElevatedButton(
                  child: Text('cancel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF5252),
                      padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 125),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.LoginRoute);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
