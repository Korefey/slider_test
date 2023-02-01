import 'package:slider_test/domain/model/story.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class StoryRepository {
  Future<AsyncValue<Story>> getStory();
}
