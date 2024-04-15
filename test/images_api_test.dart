import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for ImagesApi
void main() {
  final instance = DartDioSdk().getImagesApi();

  group(ImagesApi, () {
    // Get image by public id
    //
    //Future<ImageUploadedResponseDTO> imagesControllerGetImageByPublicId(String publicId) async
    test('test imagesControllerGetImageByPublicId', () async {
      // TODO
    });

    // Upload multiple image
    //
    //Future<BuiltList<ImageUploadedResponseDTO>> imagesControllerUploadArrayImages({ BuiltList<MultipartFile> images }) async
    test('test imagesControllerUploadArrayImages', () async {
      // TODO
    });

  });
}
