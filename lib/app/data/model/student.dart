class Student {
  final int id;
  final String firstName;
  final String lastName;
  final String course;
  final int score;
  final String createdAt;
  final String updatedAt;

  Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.course,
    required this.score,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      course: json['course'],
      score: json['score'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']);

  static List<Student> listFromJson(list) =>
      List<Student>.from(list.map((x) => Student.fromJson(x)));
}
