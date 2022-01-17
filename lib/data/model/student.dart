class Student {
  final int id;
  final String firstName;
  final String lastName;
  final String course;
  final int score;
  final String createdAt;
  final String updatedAt;

  Student(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.course,
      required this.score,
      required this.createdAt,
      required this.updatedAt});
}
