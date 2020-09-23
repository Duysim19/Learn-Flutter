import 'package:flutter/material.dart';
import 'package:listview_navigation/data.dart';

class CartStudent extends StatelessWidget {
  String id;
  String name;
  String phone;
  double point;
  CartStudent({
    Key key,
    this.id,
    this.name,
    this.phone,
    this.point,
  });

  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      direction: DismissDirection.endToStart, // tu phai qua trai
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('Are you sure tou want delete this?'),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop(false);
                },
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop(true);
                },
                child: Text('Yes'),
              ),
            ],
          ),
        );
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              width: 50,
              height: 50,
              child: Text(
                name[0].toUpperCase(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    phone ?? "",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                point.toString(),
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
