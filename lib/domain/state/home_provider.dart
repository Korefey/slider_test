import 'package:flutter/foundation.dart';
import 'package:slider_test/domain/model/story.dart';
import 'package:slider_test/internal/dependencies/repository_module.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final storyProvider =
    StateNotifierProvider<StoryNotifier, AsyncValue<Story>>((ref) {
  return StoryNotifier(const AsyncLoading());
});

class StoryNotifier extends StateNotifier<AsyncValue<Story>> {
  StoryNotifier(super.state);

  Future<void> fetchStory() async {
    try {
      state = const AsyncLoading();
      var repositoryModule = RepositoryModule.storyRepository();
      state = await repositoryModule.getStory();
    } catch (e) {
      if (kDebugMode) {
        print('ERROR in fetching movie ');
      }
    }
  }
}