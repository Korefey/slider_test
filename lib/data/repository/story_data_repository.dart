import 'package:slider_test/data/api/api_util.dart';
import 'package:slider_test/domain/model/story.dart';
import 'package:slider_test/domain/repository/story_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class StoryDataRepository extends StoryRepository {
  final ApiUtil _apiUtil;

  StoryDataRepository(this._apiUtil);

  @override
  Future<AsyncValue<Story>> getStory() {
    return _apiUtil.getStory();
  }
}
