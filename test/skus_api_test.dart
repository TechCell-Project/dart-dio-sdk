import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for SkusApi
void main() {
  final instance = DartDioSdk().getSkusApi();

  group(SkusApi, () {
    //Future<AddSerialNumberResponseDto> skusControllerAddSerialNumbers(String id, AddSerialNumberDto addSerialNumberDto) async
    test('test skusControllerAddSerialNumbers', () async {
      // TODO
    });

    //Future skusControllerCreateSku(CreateSkuDto createSkuDto) async
    test('test skusControllerCreateSku', () async {
      // TODO
    });

    //Future<SKU> skusControllerGetSkuById(String id) async
    test('test skusControllerGetSkuById', () async {
      // TODO
    });

    //Future<SkuInfinityPaginationResult> skusControllerGetSkus() async
    test('test skusControllerGetSkus', () async {
      // TODO
    });

    //Future skusControllerUpdateSkuById(String id, CreateSkuDto createSkuDto) async
    test('test skusControllerUpdateSkuById', () async {
      // TODO
    });

  });
}
