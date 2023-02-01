import 'package:slider_test/data/api/model/api_story.dart';
import 'package:slider_test/domain/model/image_data.dart';
import 'package:slider_test/domain/model/story.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class StoryMapper {
  static AsyncValue<Story> fromApi(AsyncValue<ApiStory> images) {
    List<ImageData> imageDataList = [];
    for (var tempData in images.value!.content) {
      var imageData =
          ImageData.empty(tempData.id, tempData.title, tempData.fileName);
      imageDataList.add(imageData);
    }
    return AsyncValue<Story>.data(
      Story(
        name: images.value!.name,
        id: images.value!.id,
        content: imageDataList,
      ),
    );
  }
}
