import 'package:flutter/material.dart';
import 'package:miniproject/src/config/app_route.dart';

class AppRoomPage extends StatefulWidget {
  @override
  _AppRoomPageState createState() => _AppRoomPageState();
}

class _AppRoomPageState extends State<AppRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App room'),
      ),
    body: Padding(
        padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
    child: Column(
      children: [
        Image.asset('assets/images/logo.png',height: 170,width: 170,),
        SizedBox(height: 10,),
        TextFormField(
          validator: (String value){
            if(value.length < 3)
              return "Enter at least 3 char";
            else
              return null;
          },
          decoration: InputDecoration(
              hintText: "Room",
              labelText: "Room",
              border: OutlineInputBorder()),
          obscureText: true,
        ),
        SizedBox(height: 16,),
        TextFormField(
          validator: (String value){
            if(value.length < 3)
              return "Enter at least 3 char";
            else
              return null;
          },
          decoration: InputDecoration(
              hintText: "Price",
              labelText: "Price",

              border: OutlineInputBorder()),
          obscureText: true,
        ),
        SizedBox(height: 16,),
        TextFormField(
          validator: (String value){
            if(value.length < 3)
              return "Enter at least 3 char";
            else
              return null;
          },
          decoration: InputDecoration(
              hintText: "Type",
              labelText: "Type",
              border: OutlineInputBorder()),
          obscureText: true,
        ),
        SizedBox(height: 16,),
        TextFormField(
          validator: (String value){
            if(value.length < 3)
              return "Enter at least 3 char";
            else
              return null;
          },
          decoration: InputDecoration(
              hintText: "Phone",
              labelText: "Phone",
              border: OutlineInputBorder()),
          obscureText: true,
        ),
        SizedBox(height: 16,),
        TextFormField(
          validator: (String value){
            if(value.length < 3)
              return "Enter at least 3 char";
            else
              return null;
          },
          decoration: InputDecoration(
              hintText: "Address",
              labelText: "Address",
              border: OutlineInputBorder()),
          obscureText: true,
        ),
        SizedBox(height: 16,),
        ElevatedButton(
            child: Text('submit',
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
              Navigator.pushNamed(context, AppRoute.TypepagesRoute);
            }),
      ],
    )
      )
    )


    );
  }
}
