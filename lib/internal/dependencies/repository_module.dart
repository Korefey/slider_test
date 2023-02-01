import 'package:slider_test/data/repository/story_data_repository.dart';
import 'package:slider_test/domain/repository/story_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static StoryRepository? _storyRepository;

  static StoryRepository storyRepository() {
    _storyRepository ??= StoryDataRepository(
        ApiModule.apiUtil(),
      );
    return _storyRepository!;
  }
}
