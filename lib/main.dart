
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/man.jpg'),
          ),
          Text(
            'Angela Yu',
            style: TextStyle(
                fontSize: 40,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.5),
          ),
          SizedBox(
            width: 200,
            height: 20,
            child: Divider(
              thickness: 1,
              color: Colors.teal.shade100,
            ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          //   padding: EdgeInsets.only(left: 20),
          //   height: 50,
          //   decoration: BoxDecoration(color: Colors.white),
          //   child: Row(children: <Widget>[
          //     Icon(Icons.phone, size: 20, color: Colors.teal),
          //     SizedBox(width: 30),
          //     Text(
          //       '+2347038709484',
          //       style: TextStyle(
          //           color: Colors.teal,
          //           fontSize: 20,
          //           fontFamily: 'Source Sans Pro'),
          //     )
          //   ]),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.phone, size: 20, color: Colors.teal),
                title: Text(
                  '+2347038709484',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.email, size: 20, color: Colors.teal),
                title: Text(
                  'bolaji.adeladan@gmail.com',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
          ),

          //   Container(
          //     margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          //     padding: EdgeInsets.only(left: 20),
          //     height: 50,
          //     decoration: BoxDecoration(color: Colors.white),
          //     child: Row(children: <Widget>[
          //       Icon(Icons.email, size: 20, color: Colors.teal),
          //       SizedBox(width: 30),
          //       Text(
          //         'bolaji.adeladan@gmail.com',
          //         style: TextStyle(
          //             color: Colors.teal,
          //             fontSize: 20,
          //             fontFamily: 'Source Sans Pro'),
          //       )
          //     ]),
          //   ),
        ],
      )),
    );
  }
}
