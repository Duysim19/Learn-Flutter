import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ex1/calendar.dart';

import 'button_list.dart';
import 'icon_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        Calendar.routeName: (ctx) => Calendar(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String textData =
      'Dr.Stefeni Albert is Acardiologist is Nashville & affiliated with multiple hospitals in the area. He received his medical degree from Duke University Shool of Medicine anh has been in practice fo more than 20 year';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Expanded(flex: 1,
                          child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      "assets/images/1.png",
                      height: 200.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 160,
                        child: Text(
                          'Dr.Stefeni Albert',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Heart Speailist',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          IconsContact(
                            strIcon: Icons.mail,
                            strColor: Colors.orange,
                            colorbtn: Colors.orange,
                            opacity: .3,
                          ),
                          SizedBox(width: 10),
                          IconsContact(
                            strIcon: Icons.phone,
                            strColor: Colors.red,
                            colorbtn: Colors.pinkAccent,
                            opacity: .2,
                          ),
                          SizedBox(width: 10),
                          IconsContact(
                            strIcon: Icons.video_call,
                            strColor: Colors.grey,
                            colorbtn: Colors.grey,
                            opacity: .3,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(flex: 1,
                          child: Container(
                margin: EdgeInsets.only(top: 20, right: 20, bottom: 30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('About',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textData,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 1,
                          child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                    'House #2, Road #5, Green Road Dhanmondi, Dhaka, Bangladesh'),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.schedule,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daily practict',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Moday -Friday \nOpen till 7 Pm')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      "assets/images/2.png",
                      height: 180.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            Expanded(flex: 1,
                          child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Activity",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonList(
                          color: Colors.orange,
                          title: "List Of\nSchedule",
                          width: (size.width - 70) / 2,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ButtonList(
                          color: Colors.grey,
                          title: "Doctor\'s\nDaily Post",
                          width: (size.width - 70) / 2,
                        ),
                      ],
                    )
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
