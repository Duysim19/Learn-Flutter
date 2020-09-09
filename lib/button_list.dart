import 'package:flutter/material.dart';
import 'package:ui_ex1/calendar.dart';

class ButtonList extends StatelessWidget {
  final Color color;
  final String title;
  final double width;
  const ButtonList({
    this.color,
    this.title, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
          onPressed: () {
            Navigator.of(context).pushNamed(Calendar.routeName);
          },
          color: color,
          child: Row(
            children: [Icon(Icons.list), SizedBox(width: 10), Text(title)],
          ),
        ),
      ),
    );
  }
}
