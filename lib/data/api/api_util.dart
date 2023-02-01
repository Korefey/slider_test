import 'package:slider_test/data/api/service/slider_test_service.dart';
import 'package:slider_test/data/mapper/story_mapper.dart';
import 'package:slider_test/domain/model/story.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApiUtil {
  final SliderTestService _crewService;

  ApiUtil(this._crewService);

  Future<AsyncValue<Story>> getStory() async {
    final result = await _crewService.getStory();
    return StoryMapper.fromApi(result);
  }
}
