import 'dart:ffi';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/src/config/app_route.dart';
import 'package:miniproject/src/config/app_setting.dart';
import 'package:miniproject/src/services/networt.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  var _usernameController = TextEditingController();

  var _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController?.dispose();
    _passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(100, 149, 237, 1.0),
          Color.fromRGBO(194, 220, 243, 1.0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        // backgroundColor: Color(0xFFFF5F5DC),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: topPadding),
                SizedBox(height: 40),
                Image.asset('assets/images/logo.png'),
                // Container(
                //   child: Center(
                //     child: Text(
                //       'Login',
                //       style: TextStyle(
                //           color: Colors.white54,
                //           fontSize: 50,
                //           fontFamily: 'Pacifico'),
                //     ),
                //   ),
                // ),
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
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.redAccent,
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
                          controller: _passwordController,
                          obscureText: isHidden,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.redAccent,
                              ),
                              suffixIcon: IconButton(
                                  icon: isHidden
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onPressed: togglePasswordVisibility),
                              border: InputBorder.none,
                              hintText: "\tpassword",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        ),
                      ),
                      //SizedBox(height: 5,),
                    ],
                  ),
                ),
                SizedBox(height: 1),
                ElevatedButton(
                  onPressed: () async {
                    final username = _usernameController.text;
                    final password = _passwordController.text;
                    final message = await NetworkService()
                        .validateUserLoginDio(username, password);
                    print(message);
                    if (message != 'failed') {
                      print('login success');
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setString(AppSetting.userNameSetting, username);
                      prefs.setString(AppSetting.passwordSetting, password);

                      Navigator.pushNamed(context, AppRoute.HomeRoute);
                    } else {
                      print('login failed');
                      Flushbar(
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                        ),
                        backgroundColor: Colors.blueGrey,
                        title: "Failed",
                        message: "Login failed, try again!!",
                        duration: Duration(seconds: 5),
                      )..show(context);
                    }
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF5252),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 105),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(height: 2),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.RegisterRoute);

                  },
                  child: Text(
                    'Sing Up',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),

                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shadowColor: Colors.black26,
                    primary: Color(0xFFFF5252),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
