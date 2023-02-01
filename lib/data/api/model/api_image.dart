class ApiImage {
  final String title;
  final int id;
  final String fileName;

  ApiImage.fromApi(Map<String, dynamic> map)
      : title = map['title'],
        id = map['id'],
        fileName = map['filename'];
}
