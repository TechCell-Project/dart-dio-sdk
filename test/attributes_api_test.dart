import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for AttributesApi
void main() {
  final instance = DartDioSdk().getAttributesApi();

  group(AttributesApi, () {
    //Future attributesControllerCreateAttribute(CreateAttributeDto createAttributeDto) async
    test('test attributesControllerCreateAttribute', () async {
      // TODO
    });

    //Future attributesControllerDeleteAttribute(String id) async
    test('test attributesControllerDeleteAttribute', () async {
      // TODO
    });

    //Future<Attribute> attributesControllerGetAttribute(String id) async
    test('test attributesControllerGetAttribute', () async {
      // TODO
    });

    //Future<AttributeInfinityPaginationResult> attributesControllerGetAttributes({ num page, num limit, String filters, String sort }) async
    test('test attributesControllerGetAttributes', () async {
      // TODO
    });

    //Future attributesControllerUpdateAttribute(String id, UpdateAttributeDto updateAttributeDto) async
    test('test attributesControllerUpdateAttribute', () async {
      // TODO
    });

  });
}
