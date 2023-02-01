class ImageData {
  final String title;
  final int id;
  final String fileName;

  ImageData({required this.title, required this.id, required this.fileName});

  ImageData.empty(this.id, this.title, this.fileName);
}
