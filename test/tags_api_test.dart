import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for TagsApi
void main() {
  final instance = DartDioSdk().getTagsApi();

  group(TagsApi, () {
    //Future tagsControllerCreateTag(CreateTagDto createTagDto) async
    test('test tagsControllerCreateTag', () async {
      // TODO
    });

    //Future<Tag> tagsControllerGetTag(String id) async
    test('test tagsControllerGetTag', () async {
      // TODO
    });

    //Future<TagInfinityPaginationResult> tagsControllerGetTags({ num page, num limit, String filters, String sort }) async
    test('test tagsControllerGetTags', () async {
      // TODO
    });

    //Future tagsControllerUpdateTag(String id, UpdateTagDto updateTagDto) async
    test('test tagsControllerUpdateTag', () async {
      // TODO
    });

  });
}
