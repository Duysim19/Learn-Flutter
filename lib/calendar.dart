import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  static const routeName = 'calendar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capture'),
      ),
      body: Card(
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.deepPurple.withOpacity(.2)),
                child: RaisedButton(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mar',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text('24',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  onPressed: () {
                    // SfCalendar(
                    //   view: CalendarView.month,
                    // );
                  },
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tuesday',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '10:00 - 12:00 PM',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.purple.withOpacity(.2),
                ),
                child: Row(
                  children: [
                    Text('Add To Calendar',
                        style: TextStyle(color: Colors.purple)),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.purple,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
