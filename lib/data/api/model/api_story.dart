import 'package:slider_test/data/api/model/api_image.dart';

class ApiStory {
  final String name;
  final int id;
  final List<ApiImage> content;

  ApiStory.fromApi(Map<String, dynamic> map)
      : name = map['story']['name'],
        id = map['story']['id'],
        content = map['story']['content']['img']
            .map<ApiImage>((f) => ApiImage.fromApi(f))
            .toList();
}
