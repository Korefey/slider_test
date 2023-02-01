import 'package:flutter/material.dart';
import 'package:slider_test/domain/state/home_provider.dart';
import 'package:slider_test/presentation/widgets/carousel/carousel_slider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Carousel extends ConsumerWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final story = ref.watch(storyProvider);
    return story.when(
      data: (data) {
        return CarouselWithIndicator(imgData: data.content);
      },
      error: (_, __) {
        return const Center(child: Text('Error'));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
