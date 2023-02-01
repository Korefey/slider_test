import '../../data/api/api_util.dart';
import '../../data/api/service/slider_test_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    _apiUtil ??= ApiUtil(SliderTestService());
    return _apiUtil!;
  }
}
