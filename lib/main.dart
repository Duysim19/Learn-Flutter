import 'package:flutter/material.dart';
import 'package:listview_navigation/cart_student.dart';
import 'package:listview_navigation/data.dart';
import 'package:listview_navigation/form_student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Students.students.length,
          itemBuilder: (context, index) => CartStudent(
            id: Students.students[index].id,
            name: Students.students[index].name,
            phone: Students.students[index].phone,
            point: Students.students[index].point,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
            context: context, builder: (ctx) => FormStudent(isEdit: false)),
        child: Icon(Icons.add),
      ),
    );
  }
}
