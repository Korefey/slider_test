import 'package:slider_test/data/api/model/api_image.dart';
import 'package:slider_test/domain/model/image_data.dart';

class ImageDataMapper {
  static ImageData fromApi(ApiImage image) {
    return ImageData(
      title: image.title,
      id: image.id,
      fileName: image.fileName,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageDataMapper && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}
