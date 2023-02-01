import 'package:dio/dio.dart';
import 'package:slider_test/data/api/model/api_story.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SliderTestService {
  static const String _baseUrl =
      'https://api.storyblok.com/v2/cdn/stories/marketfood?version=draft&token=YX1dC80Z9U5IupBCCIbiRgtt&cv=1664543171';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _baseUrl),
  );

  Future<AsyncValue<ApiStory>> getStory() async {
    try {
      final response = await _dio.get('/json');
      if (response.statusCode == 200) {
        return AsyncValue.data(ApiStory.fromApi(response.data));
      } else {
        return AsyncError(response.data, StackTrace.current);
      }
    } catch (e, stackTrace) {
      return AsyncError(e, stackTrace);
    }
  }
}
