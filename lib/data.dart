class Student {
  String id;
  String name;
  String phone;
  double point;
  Student({
    this.id,
    this.name,
    this.phone,
    this.point,
  });
}

class Students {
  static List<Student> students =[
    Student(id: '01', name: 'Nguyen Van A', phone: '1A', point: 1.0),
    Student(id: '02', name: 'Nguyen Van B', phone: '1A', point: 1.1),
    
  ];
}
