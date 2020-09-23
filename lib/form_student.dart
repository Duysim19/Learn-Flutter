import 'package:flutter/material.dart';
import 'data.dart';

class FormStudent extends StatefulWidget {
  bool isEdit;
  FormStudent({this.isEdit});

  @override
  _FormStudentState createState() => _FormStudentState();
}

class _FormStudentState extends State<FormStudent> {
  final String titleEditForm = 'Sửa Sinh Viên';

  final String titleAddForm = 'Thêm Sinh Viên';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String name, phone;
    double point;
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      content: Container(
        padding: EdgeInsets.all(10),
        width: 300,
        height: 400,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 3)),
        child: Form(
          child: ListView(
            children: [
              Center(
                child: Text(
                  widget.isEdit ? titleEditForm : titleAddForm,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  name = value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Phone',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  phone = value;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Point',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  point = double.parse(value);
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      )
                    ]),
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      onPressed: () {
                        if (!widget.isEdit) {
                          Student student = new Student(
                              id: '', name: name, phone: phone, point: point);
                          Students.students.add(student);
                          Navigator.of(context).pop(student);
                          print(student);
                          setState(() {});
                        }
                      },
                      child: Text(widget.isEdit ? 'Update' : 'Add'),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                      )
                    ]),
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
