import 'package:slider_test/domain/model/image_data.dart';

class Story {
  final String name;
  final int id;
  final List<ImageData> content;

  Story({required this.name, required this.id, required this.content});
}
